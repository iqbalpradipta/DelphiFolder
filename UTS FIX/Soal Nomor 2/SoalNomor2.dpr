program SoalNomor2;

uses
  Vcl.Forms,
  USoalNomor2 in 'USoalNomor2.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
