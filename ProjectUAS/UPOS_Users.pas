unit UPOS_Users;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPOS_MasterData, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  RzDBNav, Vcl.Grids, Vcl.DBGrids, SMDBGrid, RzPanel, Vcl.ExtCtrls, RzButton;

type
  TfrmUsers = class(TfrmMasterData)
    SMDBGridHeader: TSMDBGrid;
    DsDetail: TDataSource;
    FDQueryDetail: TFDQuery;
    FDQuery1IDUSER: TWideStringField;
    FDQuery1USERNAME: TWideStringField;
    FDQuery1PASSWORD: TWideStringField;
    RzBtnAccess: TRzBitBtn;
    FDStoredProc1: TFDStoredProc;
    procedure RzBtnAccessClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FDQuery1AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsers: TfrmUsers;

implementation
Uses UPOS_DM;
{$R *.dfm}

procedure TfrmUsers.FDQuery1AfterScroll(DataSet: TDataSet);
begin
  inherited;
  with FDQueryDetail do
    begin
      sql.Clear;
      sql.Add('SELECT * FROM USERSFORM WHERE IDUSER =:USERID');
      Params[0].AsString := FDQuery1IDUSER.AsString;
      Active := True;
    end;
end;

procedure TfrmUsers.FormCreate(Sender: TObject);
begin
  inherited;
   with FDQuery1 do
    begin
      sql.Clear;
      sql.Add('SELECT * FROM USERS');
      Active := True;
    end;

    with FDQueryDetail do
    begin
      sql.Clear;
      sql.Add('SELECT * FROM USERSFORM');
      Active := True;
    end;
end;

procedure TfrmUsers.RzBtnAccessClick(Sender: TObject);
begin
  inherited;
  with FDStoredProc1 do
    BEGIN
      Close;
      Prepare;
      StoredProcName := 'POS.dbo.InsertFormToUsers';
      ParamByName('@Userid').AsString := FDQuery1IDUSER.AsString;
      ExecProc;
//      Sleep(20);
    END;
    FDQueryDetail.Refresh;

end;

end.
