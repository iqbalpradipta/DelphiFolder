object frmGaji: TfrmGaji
  Left = 0
  Top = 0
  Caption = 'Gaji Karyawan'
  ClientHeight = 392
  ClientWidth = 750
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 750
    Height = 57
    Align = alTop
    Caption = 'Perhitungan Gaji Karyawan PT. ACCLK'
    Color = clDefault
    Font.Charset = ANSI_CHARSET
    Font.Color = clLime
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object panelgajibersih: TPanel
    Left = 0
    Top = 336
    Width = 750
    Height = 56
    Align = alBottom
    Caption = 'Gaji Bersih'
    Color = clBackground
    Font.Charset = ANSI_CHARSET
    Font.Color = clLime
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = [fsUnderline]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 57
    Width = 417
    Height = 279
    Align = alLeft
    TabOrder = 2
    ExplicitLeft = -6
    ExplicitTop = 63
    object Label1: TLabel
      Left = 27
      Top = 40
      Width = 75
      Height = 13
      Caption = 'NIK Karyawan :'
    end
    object Label2: TLabel
      Left = 27
      Top = 75
      Width = 85
      Height = 13
      Caption = 'Nama Karyawan :'
    end
    object Label3: TLabel
      Left = 27
      Top = 109
      Width = 69
      Height = 13
      Caption = 'Banyak Anak :'
    end
    object Label4: TLabel
      Left = 27
      Top = 141
      Width = 80
      Height = 13
      Caption = 'Gaji Pokok (Rp) :'
    end
    object EditNik: TEdit
      Left = 120
      Top = 37
      Width = 241
      Height = 16
      TabOrder = 0
      OnKeyPress = EditNikKeyPress
    end
    object EditNama: TEdit
      Left = 120
      Top = 72
      Width = 241
      Height = 16
      TabOrder = 1
      OnKeyPress = EditNamaKeyPress
    end
    object EditBanyakAnak: TEdit
      Left = 120
      Top = 106
      Width = 241
      Height = 16
      TabOrder = 2
      OnKeyPress = EditBanyakAnakKeyPress
    end
    object EditGaji: TEdit
      Left = 120
      Top = 138
      Width = 241
      Height = 16
      TabOrder = 3
      OnKeyPress = EditGajiKeyPress
    end
    object BtnHitungGaji: TButton
      Left = 27
      Top = 176
      Width = 118
      Height = 41
      Caption = 'Hitung Gaji'
      TabOrder = 4
      OnClick = BtnHitungGajiClick
    end
    object BtnInput: TButton
      Left = 240
      Top = 176
      Width = 121
      Height = 41
      Caption = '&Input'
      TabOrder = 5
      OnClick = BtnInputClick
    end
  end
  object Panel4: TPanel
    Left = 417
    Top = 57
    Width = 333
    Height = 279
    Align = alClient
    TabOrder = 3
    ExplicitLeft = 423
    ExplicitTop = 51
    object Label5: TLabel
      Left = 32
      Top = 40
      Width = 104
      Height = 13
      Caption = 'Tunjangan Istri (Rp) :'
    end
    object Label6: TLabel
      Left = 32
      Top = 109
      Width = 109
      Height = 13
      Caption = 'Total Tunjangan (Rp) :'
    end
    object Label7: TLabel
      Left = 32
      Top = 141
      Width = 78
      Height = 13
      Caption = 'Gaji Kotor (Rp) :'
    end
    object Label9: TLabel
      Left = 32
      Top = 176
      Width = 58
      Height = 13
      Caption = 'Zakat (Rp) :'
    end
    object Label8: TLabel
      Left = 32
      Top = 75
      Width = 109
      Height = 13
      Caption = 'Tunjangan Anak (Rp) :'
    end
    object EditTunjanganIstri: TEdit
      Left = 168
      Top = 37
      Width = 121
      Height = 21
      Color = clLime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EditTunjanganAnak: TEdit
      Left = 168
      Top = 72
      Width = 121
      Height = 21
      Color = clLime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object EditTotalTunjangan: TEdit
      Left = 168
      Top = 106
      Width = 121
      Height = 21
      Color = clLime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object EditGajiKotor: TEdit
      Left = 168
      Top = 138
      Width = 121
      Height = 21
      Color = clLime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object EditZakat: TEdit
      Left = 168
      Top = 173
      Width = 121
      Height = 21
      Color = clLime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
  end
end
