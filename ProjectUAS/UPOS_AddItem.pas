unit UPOS_AddItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, SMDBGrid, RzButton;

type
  TfrmAddItem = class(TForm)
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    SMDBGrid1: TSMDBGrid;
    FDQueryItem: TFDQuery;
    DsItem: TDataSource;
    RzPanel4: TRzPanel;
    SMDBGrid2: TSMDBGrid;
    FDQueryAddItem: TFDQuery;
    DsAddItem: TDataSource;
    RzBtnOK: TRzBitBtn;
    FDStoredAddItem: TFDStoredProc;
    FDStoredAddPurchase: TFDStoredProc;
    FDQueryAddItemITEMID: TWideStringField;
    FDQueryAddItemITEMNAME: TWideStringField;
    FDQueryAddItemHARGABELI: TFMTBCDField;
    FDQueryAddItemHARGAJUAL: TFMTBCDField;
    FDQueryAddItemUNIT: TWideStringField;
    FDQueryAddItemMARK: TBooleanField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormClick(Sender: TObject);
    procedure RzBtnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vType, vPurchaseId : String;
  end;

var
  frmAddItem: TfrmAddItem;

implementation
Uses UPOS_DM, UPOS_Pembelian;

{$R *.dfm}

procedure TfrmAddItem.FormClick(Sender: TObject);
begin
  //Ambil data procedure dari server
  FDStoredAddItem.Close;
  FDStoredAddItem.Prepare;
  FDStoredAddItem.StoredProcName := 'POS.dbo.InsertSelectItem';
  FDStoredAddItem.ExecProc;

  with FDQueryItem do
    begin
      sql.Clear;
      sql.Add('SELECT * FROM SELECTITEM');
      Active := True;
    end;
end;

procedure TfrmAddItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  WindowState := wsMinimized;
  frmAddItem := Nil;
  Action := caFree;
end;

procedure TfrmAddItem.RzBtnOKClick(Sender: TObject);
begin
  With FDQueryAddItem do
    begin
      sql.Clear;
      sql.Add('SELECT * FROM SELECTITEM WHERE MARK  =:MARK');
      Params[0].AsBoolean := True;
      open;
    end;

    if FDQueryAddItem.RecordCount > 0 then
      begin
        FDQueryAddItem.First;
        while NOT FDQueryAddItem.Eof do
          BEGIN
            //Insert ke table Purchase detail
            with FDStoredAddPurchase do
            BEGIN
              Close;
              Prepare;
              StoredProcName := 'POS.dbo.InsertPurchaseDetail';
              ParamByName('@Userid').AsString := 'iqbal';
              ParamByName('@PurchaseId').AsString := vPurchaseId;
              ParamByName('@ItemId').AsString := FDQueryAddItem.FieldByName('ITEMID').AsString;
              ParamByName('@Qty').Value := 1.0;
              ParamByName('@Unit').AsString := FDQueryAddItem.FieldByName('UNIT').AsString;
              ParamByName('@Price').Value := FDQueryAddItem.FieldByName('HARGABELI').AsFloat;
              ParamByName('@LineAmount').Value := 1.0 * FDQueryAddItem.FieldByName('HARGABELI').AsFloat;;
              ExecProc;
              Sleep(20);
            END;
            FDQueryAddItem.Next;
          END;

        frmPembelian.FDQueryDetail.Refresh;
      end;

      Close;

end;

end.
