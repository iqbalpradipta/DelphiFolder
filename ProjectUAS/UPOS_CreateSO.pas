unit UPOS_CreateSO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, RzPanel, RzRadChk, RzDBChk,
  Vcl.StdCtrls, Vcl.Mask, RzEdit, RzDBEdit, Vcl.DBCtrls, RzDBCmbo, RzLabel,
  Vcl.ExtCtrls;

type
  TfrmCreateSalesOrder = class(TForm)
    Panel1: TPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    RzDBCheckBox1: TRzDBCheckBox;
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
  frmCreateSalesOrder: TfrmCreateSalesOrder;

implementation
Uses UPOS_Penjualan, UPOS_DM, UPOS_IqbalPradipta;
{$R *.dfm}

procedure TfrmCreateSalesOrder.btnCancelClick(Sender: TObject);
begin
  frmPenjualan.FDQueryHeader.Cancel;
end;

procedure TfrmCreateSalesOrder.btnOKClick(Sender: TObject);
begin
  if frmPenjualan.FDQueryHeaderCUSTACCOUNT.AsString = '' then
      begin
        ShowMessage('Customer Name Tidak boleh kosong..!');
        Abort;
      end;

      //Request number PO dari Server
      frmPenjualan.FDQueryHeaderSALESID.AsString := frmMain.GetNumberSequenceSO('SALES');

      frmPenjualan.FDQueryHeader.Post;

      Close;
end;

procedure TfrmCreateSalesOrder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  WindowState := wsMinimized;
  frmCreateSalesOrder := Nil;
  Action := caFree;
end;

end.
