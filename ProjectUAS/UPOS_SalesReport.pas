unit UPOS_SalesReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzButton, RzLabel, Vcl.ExtCtrls, RzPanel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet;

type
  TfrmReportSales = class(TForm)
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzPanel2: TRzPanel;
    RzBtnPrint: TRzBitBtn;
    RzBtnClose: TRzBitBtn;
    RzPanel3: TRzPanel;
    RzDateFrom: TRzDateTimeEdit;
    RzDateTo: TRzDateTimeEdit;
    FDQuReport: TFDQuery;
    DataSource1: TDataSource;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzBtnCloseClick(Sender: TObject);
    procedure RzBtnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportSales: TfrmReportSales;

implementation
USES UPOS_DM;
{$R *.dfm}

procedure TfrmReportSales.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  WindowState := wsMinimized;
  frmReportSales := Nil;
  Action := caFree;
end;

procedure TfrmReportSales.RzBtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmReportSales.RzBtnPrintClick(Sender: TObject);
var
wPath : string;
begin
  wPath := ExtractFilePath(Application.ExeName);

  with FDQuReport do
    begin
      sql.Clear;
      sql.Add('SELECT * FROM vSales WHERE SALESDATE BETWEEN :A AND :B');
      Params[0].AsDateTime := RzDateFrom.AsDateTime;
      Params[1].AsDateTime := RzDateTo.AsDateTime;
      open;
    end;

  with frxReport1 do
    begin
      LoadFromFile(wPath + 'rptSalesReport.fr3');
      TfrxMemoView(frxReport1.FindComponent('MemoPeriode')).Text := 'Periode : ' + FormatDateTime('dd/mm/yyyy',RzDateFrom.AsDateTime) + ' to '+ FormatDateTime('dd/mm/yyyy',RzDateTo.AsDateTime);
      ShowReport();
    end;
end;

end.
