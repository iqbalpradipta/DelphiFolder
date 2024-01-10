unit UPOS_MasterData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, SMDBGrid, RzPanel, RzDBNav;

type
  TfrmMasterData = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    RzDBNavigator1: TRzDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMasterData: TfrmMasterData;

implementation
Uses UPOS_DM;

{$R *.dfm}

end.
