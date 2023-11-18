program SoalNomor1;

uses
  Vcl.Forms,
  USoalNomor1 in 'USoalNomor1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
