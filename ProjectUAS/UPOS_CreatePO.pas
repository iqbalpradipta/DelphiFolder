unit UPOS_CreatePO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzButton, RzPanel,
  Vcl.StdCtrls, RzLabel, RzRadChk, RzDBChk, Vcl.Mask, RzEdit, RzDBEdit,
  Vcl.DBCtrls, RzDBCmbo;

type
  TfrmCreatePurchaseOrder = class(TForm)
    Panel1: TPanel;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    RzDBCheckBox1: TRzDBCheckBox;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzPanel1: TRzPanel;
    btnCancel: TRzBitBtn;
    btnOK: TRzBitBtn;
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCreatePurchaseOrder: TfrmCreatePurchaseOrder;

implementation

{$R *.dfm}
Uses UPOS_Pembelian, UPOS_DM, UPOS_IqbalPradipta;

procedure TfrmCreatePurchaseOrder.btnCancelClick(Sender: TObject);
begin
    frmPembelian.FDQueryHeader.Cancel;
end;

procedure TfrmCreatePurchaseOrder.btnOKClick(Sender: TObject);
begin
    //

    if frmPembelian.FDQueryHeaderVENDACCOUNT.AsString = '' then
      begin
        ShowMessage('Vendor Name Tidak boleh kosong..!');
        Abort;
      end;

      //Request number PO dari Server
      frmPembelian.FDQueryHeaderPURCHASEID.AsString := frmMain.GetNumberSequencePO('PURCHASE');

      frmPembelian.FDQueryHeader.Post;

      Close;

end;

procedure TfrmCreatePurchaseOrder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  WindowState := wsMinimized;
  frmCreatePurchaseOrder := Nil;
  Action := caFree;
end;

end.
