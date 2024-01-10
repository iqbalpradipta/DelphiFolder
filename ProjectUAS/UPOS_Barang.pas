unit UPOS_Barang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPOS_MasterData, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, SMDBGrid, RzPanel, RzDBNav, Vcl.StdCtrls, RzLabel,
  RzDBCmbo, RzButton, RzRadChk, RzDBChk, RzDBEdit, Vcl.Mask, RzEdit;

type
  TfrmBarang = class(TfrmMasterData)
    FDQuery1ITEMID: TWideStringField;
    FDQuery1ITEMNAME: TWideStringField;
    FDQuery1MINSTOCK: TFMTBCDField;
    FDQuery1MAXSTOCK: TFMTBCDField;
    FDQuery1HARGABELI: TFMTBCDField;
    FDQuery1HARGAJUAL: TFMTBCDField;
    FDQuery1ISACTIVE: TBooleanField;
    FDQuery1UNIT: TWideStringField;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBNumericEdit1: TRzDBNumericEdit;
    RzDBNumericEdit2: TRzDBNumericEdit;
    RzDBNumericEdit3: TRzDBNumericEdit;
    RzDBNumericEdit4: TRzDBNumericEdit;
    RzDBCheckBox1: TRzDBCheckBox;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    FDQuUnit: TFDQuery;
    DsUnit: TDataSource;
    FDQuUnitUNIT: TWideStringField;
    FDQuUnitUNITNAME: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBarang: TfrmBarang;

implementation
Uses UPOS_DM;

{$R *.dfm}

procedure TfrmBarang.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  WindowState := wsMinimized;
  frmBarang := Nil;
  Action := caFree;
end;

procedure TfrmBarang.FormCreate(Sender: TObject);
begin
  inherited;

  with FDQuery1 do
    begin
      sql.Clear;
      sql.Add('SELECT * FROM INVENTTABLE');
      Active := True;
    end;

    with FDQuUnit do
    begin
      sql.Clear;
      sql.Add('SELECT * FROM UNITS');
      Active := True;
    end;

end;

end.
