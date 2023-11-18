program StudiKasusPercabangan;

uses
  Vcl.Forms,
  UStudiKasusPercabangan in 'UStudiKasusPercabangan.pas' {FrmStudiKasusPercabangan};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmStudiKasusPercabangan, FrmStudiKasusPercabangan);
  Application.Run;
end.
