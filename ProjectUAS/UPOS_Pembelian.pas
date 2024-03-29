unit UPOS_Pembelian;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPOS_TransaksiData, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, SMDBGrid, RzTabs, RzPanel, RzDBNav, Vcl.ExtCtrls,
  RzButton, Vcl.StdCtrls, Vcl.Buttons, frxClass, frxDBSet;

type
  TfrmPembelian = class(TfrmTransaksiData)
    FDQueryHeaderPURCHASEID: TWideStringField;
    FDQueryHeaderVENDACCOUNT: TWideStringField;
    FDQueryHeaderPURCHASEDATE: TDateField;
    FDQueryHeaderISPPN: TBooleanField;
    FDQueryHeaderTOTALAMOUNT: TFMTBCDField;
    FDQueryHeaderGRANDTOTAL: TFMTBCDField;
    FDQueryHeaderUSERID: TWideStringField;
    FDQueryHeaderTRANSDATE: TSQLTimeStampField;
    FDQueryDetailPURCHASEID: TWideStringField;
    FDQueryDetailITEMID: TWideStringField;
    FDQueryDetailQTY: TFMTBCDField;
    FDQueryDetailUNIT: TWideStringField;
    FDQueryDetailPRICE: TFMTBCDField;
    FDQueryDetailLINEAMOUNT: TFMTBCDField;
    FDQueryDetailRECORDID: TLargeintField;
    FDQueryDetailTRANSDATE: TSQLTimeStampField;
    FDQueryDetailUSERID: TWideStringField;
    FDQueryVendor: TFDQuery;
    DataSourceVendor: TDataSource;
    RzPanel3: TRzPanel;
    RzBtnAddItem: TRzBitBtn;
    FDQuItem: TFDQuery;
    DsItem: TDataSource;
    FDQueryDetaillkItemName: TStringField;
    FDQueryHeaderlkVendorName: TStringField;
    frxReport1: TfrxReport;
    FDQuReport: TFDQuery;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    frxDBDataset1: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FDQueryHeaderAfterInsert(DataSet: TDataSet);
    procedure FDQueryHeaderNewRecord(DataSet: TDataSet);
    procedure RzBtnAddItemClick(Sender: TObject);
    procedure FDQueryHeaderAfterScroll(DataSet: TDataSet);
    procedure FDQueryDetailQTYChange(Sender: TField);
    procedure FDQueryDetailPRICEChange(Sender: TField);
    procedure FDQueryDetailAfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPembelian: TfrmPembelian;

implementation
 Uses UPOS_DM, UPOS_CreatePO, UPOS_AddItem, UPOS_IqbalPradipta;
{$R *.dfm}

procedure TfrmPembelian.BitBtn1Click(Sender: TObject);
var
wPath : string;
begin
  inherited;

  wPath := ExtractFilePath(Application.ExeName);

  with FDQuReport do
    begin
      sql.Clear();
      sql.Add('SELECT * FROM vPurchase WHERE PURCHASEID =:A');
      Params[0].AsString := FDQueryHeaderPURCHASEID.AsString;
      open;
    end;

  with frxReport1 do
    begin
      LoadFromFile(wPath + 'rptPurchaseOrder.fr3');
      TfrxMemoView(frxReport1.FindComponent('MemoPrepareBy')).Text := frmMain.vUsersName;
      ShowReport();
    end;

end;

procedure TfrmPembelian.FDQueryDetailAfterPost(DataSet: TDataSet);
begin
  inherited;
   with DM.FDQuGlobal do
    begin
      sql.Clear;
      sql.Add('SELECT SUM(LINEAMOUNT) AS TOTAL FROM PURCHASEDETAIL WHERE PURCHASEID =:A');
      Params[0].AsString := FDQueryHeaderPURCHASEID.AsString;
      open;
    end;

    with DM.FDQuGlobal2 do
    begin
      sql.Clear;
      sql.Add('UPDATE PURCHASEHEADER SET TOTALAMOUNT =:A, GRANDTOTAL =:B WHERE PURCHASEID =:C');
      Params[0].AsFloat := DM.FDQuGlobal.FieldByName('TOTAL').AsFloat;
      if FDQueryHeaderISPPN.AsBoolean = True then
        Params[1].AsFloat := (DM.FDQuGlobal.FieldByName('TOTAL').AsFloat * 0.11) + DM.FDQuGlobal.FieldByName('TOTAL').AsFloat
      else Params[1].AsFloat := DM.FDQuGlobal.FieldByName('TOTAL').AsFloat;
      Params[2].AsString := FDQueryHeaderPURCHASEID.AsString;
      ExecSQL;
    end;

    FDQueryHeader.RefreshRecord();

end;

procedure TfrmPembelian.FDQueryDetailPRICEChange(Sender: TField);
begin
  inherited;
  FDQueryDetailLINEAMOUNT.AsFloat := FDQueryDetailQTY.AsFloat * FDQueryDetailPRICE.AsFloat;
end;

procedure TfrmPembelian.FDQueryDetailQTYChange(Sender: TField);
begin
  inherited;
  FDQueryDetailLINEAMOUNT.AsFloat := FDQueryDetailQTY.AsFloat * FDQueryDetailPRICE.AsFloat;
end;

procedure TfrmPembelian.FDQueryHeaderAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DM.FDQueryGetRecordId.Active := True;
  FDQueryHeaderPURCHASEDATE.AsDateTime := DM.FDQueryGetRecordId.FieldByName('TRANSDATE').AsDateTime;
  FDQueryHeaderTRANSDATE.AsDateTime := DM.FDQueryGetRecordId.FieldByName('TRANSDATE').AsDateTime;
  FDQueryHeaderTOTALAMOUNT.AsCurrency := 0;
  FDQueryHeaderGRANDTOTAL.AsCurrency := 0;
  FDQueryHeaderISPPN.AsBoolean := True;
  FDQueryHeaderUSERID.AsString := frmMain.vUsers;

end;

procedure TfrmPembelian.FDQueryHeaderAfterScroll(DataSet: TDataSet);
begin
  inherited;
   with FDQueryDetail do
    begin
      sql.Clear;
      sql.Add('SELECT * FROM PURCHASEDETAIL WHERE PURCHASEID =:PURCHASEID');
      Params[0].AsString := FDQueryHeaderPURCHASEID.AsString;
      Active := True;
    end;
end;

procedure TfrmPembelian.FDQueryHeaderNewRecord(DataSet: TDataSet);
begin
  inherited;
  if frmCreatePurchaseOrder = nil then
      begin
        Application.CreateForm(TfrmCreatePurchaseOrder, frmCreatePurchaseOrder);
        frmCreatePurchaseOrder.Show;
      end;
end;

procedure TfrmPembelian.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  WindowState := wsMinimized;
  frmPembelian := Nil;
  Action := caFree;
end;

procedure TfrmPembelian.FormCreate(Sender: TObject);
begin
  inherited;
  with FDQueryHeader do
    begin
      sql.Clear;
      sql.Add('SELECT * FROM PURCHASEHEADER');
      Active := True;
    end;

    with FDQueryDetail do
    begin
      sql.Clear;
      sql.Add('SELECT * FROM PURCHASEDETAIL');
      Active := True;
    end;

    with FDQueryVendor do
    begin
      sql.Clear;
      sql.Add('SELECT * FROM VENDOR');
      Active := True;
    end;
end;

procedure TfrmPembelian.RzBtnAddItemClick(Sender: TObject);
begin
  inherited;
  if frmAddItem = nil then
      begin
        Application.CreateForm(TfrmAddItem, frmAddItem);
        frmAddItem.vType := 'PO';
        frmAddItem.vPurchaseId := FDQueryHeaderPURCHASEID.AsString;
        frmAddItem.Show;
      end;
end;

end.
