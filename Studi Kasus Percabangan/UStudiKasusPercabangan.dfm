object FrmStudiKasusPercabangan: TFrmStudiKasusPercabangan
  Left = 0
  Top = 0
  Caption = 'Studi Kasus Percabangan'
  ClientHeight = 460
  ClientWidth = 759
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControlStudiKasus1: TPageControl
    Left = 8
    Top = 32
    Width = 737
    Height = 412
    ActivePage = TabSheetStudiKasus1
    TabOrder = 0
    object TabSheetStudiKasus1: TTabSheet
      Caption = 'Studi Kasus 1'
      object Label13: TLabel
        Left = 424
        Top = 24
        Width = 23
        Height = 13
        Caption = 'NIM:'
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 729
        Height = 384
        Align = alClient
        Color = 5297624
        ParentBackground = False
        TabOrder = 0
        object Label1: TLabel
          Left = 192
          Top = 240
          Width = 61
          Height = 13
          Caption = 'Banyak Tiket'
        end
        object Label2: TLabel
          Left = 376
          Top = 240
          Width = 55
          Height = 13
          Caption = 'Total Bayar'
        end
        object Label10: TLabel
          Left = 80
          Top = 16
          Width = 80
          Height = 13
          Caption = 'Nama Customer:'
        end
        object Label11: TLabel
          Left = 416
          Top = 16
          Width = 23
          Height = 13
          Caption = 'NIM:'
        end
        object GroupBox1: TGroupBox
          Left = 80
          Top = 56
          Width = 249
          Height = 153
          Caption = 'Jurusan'
          TabOrder = 0
          object RadioButtonJakarta: TRadioButton
            Left = 24
            Top = 32
            Width = 113
            Height = 17
            Caption = 'Jakarta'
            TabOrder = 0
          end
          object RadioButtonSolo: TRadioButton
            Left = 24
            Top = 63
            Width = 113
            Height = 17
            Caption = 'Solo'
            TabOrder = 1
          end
          object RadioButtonSurabaya: TRadioButton
            Left = 24
            Top = 95
            Width = 113
            Height = 17
            Caption = 'Surabaya'
            TabOrder = 2
          end
        end
        object RadioKelas: TRadioGroup
          Left = 392
          Top = 56
          Width = 241
          Height = 153
          Caption = 'Kelas'
          Items.Strings = (
            'Eksekutif'
            'Bisnis'
            'Ekonomi')
          TabOrder = 1
        end
        object EditTiket: TEdit
          Left = 192
          Top = 259
          Width = 121
          Height = 21
          TabOrder = 2
        end
        object EditTotal: TEdit
          Left = 376
          Top = 259
          Width = 121
          Height = 21
          TabOrder = 3
        end
        object BtnHitung: TButton
          Left = 178
          Top = 304
          Width = 75
          Height = 25
          Caption = 'Hitung'
          TabOrder = 4
          OnClick = BtnHitungClick
        end
        object BtnReset: TButton
          Left = 312
          Top = 304
          Width = 75
          Height = 25
          Caption = 'Reset'
          TabOrder = 5
          OnClick = BtnResetClick
        end
        object BtnKeluar: TButton
          Left = 448
          Top = 304
          Width = 75
          Height = 25
          Caption = 'Keluar'
          TabOrder = 6
          OnClick = BtnKeluarClick
        end
        object Edit1: TEdit
          Left = 178
          Top = 13
          Width = 121
          Height = 21
          TabOrder = 7
          Text = 'Iqbal Pradipta'
        end
        object Edit2: TEdit
          Left = 448
          Top = 13
          Width = 121
          Height = 21
          TabOrder = 8
          Text = '3112210511'
        end
      end
    end
    object TabSheetStudiKasus2: TTabSheet
      Caption = 'Studi Kasus 2'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 729
        Height = 384
        Align = alClient
        Color = 16228334
        ParentBackground = False
        TabOrder = 0
        object Label3: TLabel
          Left = 97
          Top = 67
          Width = 61
          Height = 13
          Caption = 'Kode Barang'
        end
        object Label4: TLabel
          Left = 116
          Top = 94
          Width = 42
          Height = 13
          Caption = 'Quantity'
        end
        object Label5: TLabel
          Left = 94
          Top = 121
          Width = 64
          Height = 13
          Caption = 'Nama Barang'
        end
        object Label6: TLabel
          Left = 92
          Top = 148
          Width = 66
          Height = 13
          Caption = 'Harga Satuan'
        end
        object Label7: TLabel
          Left = 113
          Top = 175
          Width = 45
          Height = 13
          Caption = 'Sub Total'
        end
        object Label8: TLabel
          Left = 244
          Top = 220
          Width = 41
          Height = 13
          Caption = 'Discount'
        end
        object Label9: TLabel
          Left = 230
          Top = 247
          Width = 55
          Height = 13
          Caption = 'Total Bayar'
        end
        object pta: TLabel
          Left = 568
          Top = 88
          Width = 67
          Height = 13
          Caption = 'Iqbal Pradipta'
        end
        object Label12: TLabel
          Left = 568
          Top = 107
          Width = 54
          Height = 13
          Caption = '312210511'
        end
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 727
          Height = 41
          Align = alTop
          Caption = 'Perhitungan Penjualan Barang'
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
        object ComboBoxKode: TComboBox
          Left = 164
          Top = 64
          Width = 145
          Height = 21
          TabOrder = 1
          Items.Strings = (
            'A01'
            'B02'
            'C03'
            'D04')
        end
        object EditQty: TEdit
          Left = 164
          Top = 91
          Width = 121
          Height = 21
          TabOrder = 2
        end
        object EditNamaBarang: TEdit
          Left = 164
          Top = 118
          Width = 121
          Height = 21
          TabOrder = 3
        end
        object EditSatuan: TEdit
          Left = 164
          Top = 145
          Width = 121
          Height = 21
          TabOrder = 4
        end
        object EditSubTotal: TEdit
          Left = 164
          Top = 172
          Width = 121
          Height = 21
          TabOrder = 5
        end
        object EditDiscount: TEdit
          Left = 291
          Top = 217
          Width = 121
          Height = 21
          TabOrder = 6
        end
        object EditTotalBayar: TEdit
          Left = 291
          Top = 244
          Width = 121
          Height = 21
          TabOrder = 7
        end
        object BtnHitungPenjualan: TBitBtn
          Left = 172
          Top = 296
          Width = 75
          Height = 25
          Caption = 'Hitung'
          TabOrder = 8
          OnClick = BtnHitungPenjualanClick
        end
        object BtnUlang: TBitBtn
          Left = 312
          Top = 296
          Width = 75
          Height = 25
          Caption = 'Ulang'
          TabOrder = 9
          OnClick = BtnUlangClick
        end
        object BtnClose: TBitBtn
          Left = 448
          Top = 296
          Width = 75
          Height = 25
          Caption = 'Close'
          TabOrder = 10
          OnClick = BtnCloseClick
        end
      end
    end
  end
end
