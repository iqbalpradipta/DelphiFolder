program Gaji;

uses
  Vcl.Forms,
  UGaji in 'UGaji.pas' {frmGaji};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmGaji, frmGaji);
  Application.Run;
end.
