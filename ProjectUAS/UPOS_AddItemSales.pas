unit UPOS_AddItemSales;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.Grids, Vcl.DBGrids, SMDBGrid,
  RzButton, Vcl.ExtCtrls, RzPanel;

type
  TfrmAddItemSales = class(TForm)
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    RzBtnOK: TRzBitBtn;
    SMDBGrid2: TSMDBGrid;
    FDQueryItem: TFDQuery;
    DsItem: TDataSource;
    FDQueryAddItem: TFDQuery;
    FDQueryAddItemITEMID: TWideStringField;
    FDQueryAddItemITEMNAME: TWideStringField;
    FDQueryAddItemHARGABELI: TFMTBCDField;
    FDQueryAddItemHARGAJUAL: TFMTBCDField;
    FDQueryAddItemUNIT: TWideStringField;
    FDQueryAddItemMARK: TBooleanField;
    DsAddItem: TDataSource;
    FDStoredAddItem: TFDStoredProc;
    FDStoredAddSales: TFDStoredProc;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RzBtnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vType, vPurchaseId : String;
  end;

var
  frmAddItemSales: TfrmAddItemSales;

implementation
Uses UPOS_DM, UPOS_Penjualan, UPOS_IqbalPradipta;
{$R *.dfm}

procedure TfrmAddItemSales.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  WindowState := wsMinimized;
  frmAddItemSales := Nil;
  Action := caFree;
end;

procedure TfrmAddItemSales.FormCreate(Sender: TObject);
begin
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

procedure TfrmAddItemSales.RzBtnOKClick(Sender: TObject);
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
            //Insert ke table Sales detail
            with FDStoredAddSales do
            BEGIN
              Close;
              Prepare;
              StoredProcName := 'POS.dbo.InsertSalesDetail';
              ParamByName('@Userid').AsString := frmMain.vUsers;
              ParamByName('@SalesId').AsString := vPurchaseId;
              ParamByName('@ItemId').AsString := FDQueryAddItem.FieldByName('ITEMID').AsString;
              ParamByName('@Qty').Value := 1.0;
              ParamByName('@Unit').AsString := FDQueryAddItem.FieldByName('UNIT').AsString;
              ParamByName('@Price').Value := FDQueryAddItem.FieldByName('HARGAJUAL').AsFloat;
              ParamByName('@LineAmount').Value := 1.0 * FDQueryAddItem.FieldByName('HARGAJUAL').AsFloat;;
              ExecProc;
              Sleep(20);
            END;

            FDQueryAddItem.Next;
          END;

        frmPenjualan.FDQueryDetail.Refresh;

      end;
      Close;

end;

end.
