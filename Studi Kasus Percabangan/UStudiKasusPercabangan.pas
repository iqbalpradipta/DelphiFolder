unit UStudiKasusPercabangan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Tabs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Buttons;

type
  TFrmStudiKasusPercabangan = class(TForm)
    PageControlStudiKasus1: TPageControl;
    TabSheetStudiKasus1: TTabSheet;
    TabSheetStudiKasus2: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    RadioKelas: TRadioGroup;
    RadioButtonJakarta: TRadioButton;
    RadioButtonSolo: TRadioButton;
    RadioButtonSurabaya: TRadioButton;
    EditTiket: TEdit;
    EditTotal: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BtnHitung: TButton;
    BtnReset: TButton;
    BtnKeluar: TButton;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ComboBoxKode: TComboBox;
    EditQty: TEdit;
    EditNamaBarang: TEdit;
    EditSatuan: TEdit;
    EditSubTotal: TEdit;
    EditDiscount: TEdit;
    EditTotalBayar: TEdit;
    BtnHitungPenjualan: TBitBtn;
    BtnUlang: TBitBtn;
    BtnClose: TBitBtn;
    Label10: TLabel;
    Edit1: TEdit;
    Label11: TLabel;
    Edit2: TEdit;
    Label13: TLabel;
    pta: TLabel;
    Label12: TLabel;
    procedure BtnHitungClick(Sender: TObject);
    procedure BtnKeluarClick(Sender: TObject);
    procedure BtnResetClick(Sender: TObject);
    procedure BtnHitungPenjualanClick(Sender: TObject);
    procedure BtnUlangClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmStudiKasusPercabangan: TFrmStudiKasusPercabangan;

implementation

{$R *.dfm}

procedure TFrmStudiKasusPercabangan.BtnCloseClick(Sender: TObject);
begin
 close;
end;

procedure TFrmStudiKasusPercabangan.BtnHitungClick(Sender: TObject);
var
  jumlahTiket : Integer;
  totalBayar, Harga : Real;
begin
  jumlahTiket := StrToInt(EditTiket.Text);
  if (RadioButtonJakarta.Checked = true) and (RadioKelas.ItemIndex = 0) then
    begin
      harga := 70000;
    end
  else if (RadioButtonJakarta.Checked = true) and (RadioKelas.ItemIndex = 1) then
    begin
      harga := 40000;
    end
  else if (RadioButtonJakarta.Checked = true) and (RadioKelas.ItemIndex = 2) then
    begin
      harga := 10000;
    end
  else if RadioButtonSolo.Checked = true then
    begin
       if RadioKelas.ItemIndex = 0 then
        begin
          harga := 80000;
        end
       else if RadioKelas.ItemIndex = 1 then
        begin
          harga := 50000;
        end
       else if RadioKelas.ItemIndex = 2 then
        begin
          harga := 20000;
        end
    end
  else if RadioButtonSurabaya.Checked = true then
    begin
      case RadioKelas.ItemIndex of
        0 : Harga := 90000;
        1 : Harga := 60000;
        2 : Harga := 30000;
      end;
    end;

  totalBayar := harga * jumlahTiket;

  if ((RadioButtonSurabaya.Checked = True) and (RadioKelas.ItemIndex = 2 ))
    or ((RadioButtonSolo.Checked = True) and (RadioKelas.ItemIndex = 0))

  then
    begin
      totalBayar := 0.9 * totalBayar;
    end;

    EditTotal.Text := CurrToStr(totalBayar);

end;

procedure TFrmStudiKasusPercabangan.BtnHitungPenjualanClick(Sender: TObject);
  var
  kode, Nama : String;
  harga, discount, subtotal, totalbayar : Real;
  qty : Integer;
begin
  kode := ComboBoxKode.Text;
  kode := Trim(kode);
  kode := UpperCase(kode);

  if length(kode) <> 3 then
    begin
      ShowMessage('Kode Harus 3 Karakter');
      ComboBoxKode.SetFocus;
      Exit;
    end;

  if Kode = 'A01' then
    begin
      Nama := 'Speaker';
      Harga := 5000;
    end
  else if kode = 'B02' then
    begin
      Nama := 'Mouse';
      Harga := 25000;
    end
  else if kode = 'C03' then
    begin
      Nama := 'Harddisk';
      Harga := 750000;
    end
  else if kode = 'D04' then
    begin
      Nama := 'Mousepad';
      Harga := 5000;
    end
  else
    begin
      ShowMessage('Kode Tidak Dikenal..!');
      Exit;
    end;

  if TryStrToInt(EditQty.Text, qty) = false then
    begin
      ShowMessage('Quantity harus angka..!');
      Exit;
    end;

  if (qty < 1)  or (qty > 10) then
    begin
      ShowMessage('Qty hanya boleh beli 1 s/d 10');
      Exit;
    end;

    EditNamaBarang.Text := Nama;
    EditSatuan.Text := CurrToStr(harga);


   subtotal := harga * qty;
   EditSubTotal.Text := CurrToStr(subtotal);

    if subtotal >= 100000 then
      discount := 0.15 * subtotal
    else if subtotal >= 50000 then
      discount := 0.1 * subtotal
    else if subtotal >= 25000 then
      discount := 0.05 * subtotal
    else discount := 0;

   EditDiscount.Text := CurrToStr(discount);

   subtotal := subtotal - discount;

   EditTotalBayar.Text := CurrToStr(subtotal);



end;

procedure TFrmStudiKasusPercabangan.BtnKeluarClick(Sender: TObject);
begin
  close;
end;

procedure TFrmStudiKasusPercabangan.BtnResetClick(Sender: TObject);
begin
 EditTiket.Text := ' ';
 EditTotal.Text := ' ';

 RadioKelas.ItemIndex := -1;
 RadioButtonJakarta.Checked := false;
 RadioButtonSolo.Checked := false;
 RadioButtonSurabaya.Checked := false;

end;

procedure TFrmStudiKasusPercabangan.BtnUlangClick(Sender: TObject);
begin
  ComboBoxKode.Text := ' ';
  EditQty.Text := ' ';
  EditNamaBarang.Text := ' ';
  EditSatuan.Text := ' ';
  EditSubTotal.Text := ' ';
  EditDiscount.Text := ' ';
  EditTotalBayar.Text := ' ';
end;

end.
