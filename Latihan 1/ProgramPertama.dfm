object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Form2'
  ClientHeight = 440
  ClientWidth = 719
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object gantiJud: TLabel
    Left = 88
    Top = 64
    Width = 52
    Height = 13
    Caption = 'Judul Form'
  end
  object LabelTolong: TLabel
    Left = 136
    Top = 191
    Width = 153
    Height = 18
    Caption = 'Tolong jangan tekan tombol itu'
  end
  object EdJudulForm: TEdit
    Left = 152
    Top = 61
    Width = 297
    Height = 21
    HelpType = htKeyword
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
  end
  object GantiJudul: TButton
    Left = 152
    Top = 96
    Width = 75
    Height = 25
    Caption = '&Ganti Judul'
    TabOrder = 1
    OnClick = GantiJudulClick
  end
  object BtnMerah: TButton
    Left = 480
    Top = 60
    Width = 81
    Height = 23
    Caption = 'Merah'
    TabOrder = 2
    OnClick = BtnMerahClick
  end
  object BtnKuning: TButton
    Left = 480
    Top = 96
    Width = 81
    Height = 25
    Caption = 'Kuning'
    TabOrder = 3
    OnClick = BtnKuningClick
  end
  object BtnSelesai: TButton
    Left = 528
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Selesai'
    TabOrder = 4
    OnClick = BtnSelesaiClick
  end
  object BtnBiru: TButton
    Left = 584
    Top = 60
    Width = 81
    Height = 23
    Caption = 'Biru'
    TabOrder = 5
    OnClick = BtnBiruClick
  end
  object BtnHijau: TButton
    Left = 584
    Top = 96
    Width = 81
    Height = 25
    Caption = 'Hijau'
    TabOrder = 6
    OnClick = BtnHijauClick
  end
  object BtnVisible: TButton
    Left = 152
    Top = 160
    Width = 116
    Height = 25
    Caption = 'Tekan Aku'
    TabOrder = 7
    OnClick = BtnVisibleClick
  end
  object GroupDataDiri: TGroupBox
    Left = 152
    Top = 232
    Width = 297
    Height = 137
    Caption = '&Data Diri'
    TabOrder = 8
    object Label1: TLabel
      Left = 32
      Top = 32
      Width = 26
      Height = 13
      Caption = 'NIM :'
    end
    object Label2: TLabel
      Left = 32
      Top = 64
      Width = 34
      Height = 13
      Caption = 'Nama :'
    end
    object Label3: TLabel
      Left = 32
      Top = 96
      Width = 32
      Height = 13
      Caption = 'Kelas :'
    end
    object EdNim: TEdit
      Left = 80
      Top = 32
      Width = 121
      Height = 17
      TabOrder = 0
    end
    object EdNama: TEdit
      Left = 80
      Top = 65
      Width = 121
      Height = 17
      TabOrder = 1
    end
    object EdKelas: TEdit
      Left = 80
      Top = 96
      Width = 121
      Height = 17
      TabOrder = 2
    end
  end
end
