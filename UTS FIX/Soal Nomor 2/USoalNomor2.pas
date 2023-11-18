unit USoalNomor2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    EditUang: TEdit;
    BtnPecahkan: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    EditSeratus: TEdit;
    EditGocap: TEdit;
    Edit20: TEdit;
    EditCeban: TEdit;
    EditGoceng: TEdit;
    Edit2ribu: TEdit;
    EditSeribu: TEdit;
    EditGopek: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    procedure BtnPecahkanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnPecahkanClick(Sender: TObject);
var
  masukkan,seratus_ribu,lima_puluh_ribu,sepuluh_puluh_ribu, duapuluh_ribu,
  lima_ribu,duaribu,seribu,lima_ratus,seratus,lima_puluh,sepuluh,satu:integer;

begin
  masukkan := StrToInt(EditUang.Text);


  seratus_ribu := masukkan div 100000;
  EditSeratus.Text := IntToStr(seratus_ribu);
  masukkan := masukkan - (seratus_ribu * 100000);

  lima_puluh_ribu := masukkan div 50000;
  EditGocap.Text := IntToStr(lima_puluh_ribu);
  masukkan := masukkan - (lima_puluh_ribu * 50000);

  duapuluh_ribu := masukkan div 20000;
  Edit20.Text := IntToStr(duapuluh_ribu);
  masukkan := masukkan - (duapuluh_ribu * 20000);

  sepuluh_puluh_ribu := masukkan div 10000;
  EditCeban.Text := IntToStr(sepuluh_puluh_ribu);
  masukkan := masukkan - (sepuluh_puluh_ribu * 10000);

  lima_ribu := masukkan div 5000;
  EditGoceng.Text := IntToStr(lima_ribu);
  masukkan := masukkan - (lima_ribu * 5000);

  duaribu := masukkan div 2000;
  Edit2ribu.text := IntToStr(duaribu);
  masukkan := masukkan - (duaribu * 2000);

  seribu := masukkan div 1000;
  EditSeribu.Text := IntToStr(seribu);
  masukkan := masukkan - (seribu * 1000);

  lima_ratus := masukkan div 500;
  EditGopek.Text := IntToStr(lima_ratus);
  masukkan := masukkan - (lima_ratus * 500);

end;

end.
