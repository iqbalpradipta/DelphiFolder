unit UPerulangan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Memo1: TMemo;
    btnForToDo: TButton;
    btnRepeatUntil: TButton;
    btnLabel: TButton;
    btnPerulanganTersarang: TButton;
    btnBanyakKondisi: TButton;
    btnContinue: TButton;
    btnForDownToDo: TButton;
    btnWhileDo: TButton;
    btnBreak: TButton;
    procedure btnForToDoClick(Sender: TObject);
    procedure btnForDownToDoClick(Sender: TObject);
    procedure btnWhileDoClick(Sender: TObject);
    procedure btnBreakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnForDownToDoClick(Sender: TObject);
var
  i : integer;
  c : char;
begin
  Memo1.Clear;
  for i := 10 downto 1 do
    begin
      if i mod 2 = 0 then
       Memo1.Lines.Add('Perulangan ke-'+ IntToStr(i));
    end;

  Memo1.Lines.Add('====================================');

  for c := 'Z' downto 'A' do
    begin
      memo1.Lines.Add('Huruf '+ c);
    end;


end;

procedure TForm1.btnForToDoClick(Sender: TObject);
var
  i : integer;
  c : char;
begin
  Memo1.Clear;
  for i := 1 to 10 do
    begin
      if i mod 2 = 0 then
       Memo1.Lines.Add('Perulangan ke-'+ IntToStr(i));
    end;

  Memo1.Lines.Add('====================================');

  for c := 'A' to 'Z' do
    begin
      memo1.Lines.Add('Huruf '+ c);
    end;


end;

procedure TForm1.btnWhileDoClick(Sender: TObject);
var
  i : real;
begin
  memo1.Clear;
  i := 0;
  while i < 10 do
    begin
      i := i + 0.5;
      memo1.Lines.Add('Perulangan ke-' + CurrToStr(i));
    end;


end;

procedure TForm1.btnBreakClick(Sender: TObject);
var
  i : integer;
begin
  i := 0;
  memo1.Clear;
  for i := 1 to 100 do
    begin
      if i > 5 then
      break;
      memo1.Lines.Add('Perulangan ke-' + IntToStr(i));

    end;

end;

end.
