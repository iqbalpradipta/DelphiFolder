object frmCreatePurchaseOrder: TfrmCreatePurchaseOrder
  Left = 0
  Top = 0
  Caption = 'Create Purchase Order'
  ClientHeight = 180
  ClientWidth = 427
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 427
    Height = 180
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object RzLabel1: TRzLabel
      Left = 48
      Top = 11
      Width = 64
      Height = 13
      Caption = 'Vendor Name'
    end
    object RzLabel2: TRzLabel
      Left = 42
      Top = 38
      Width = 70
      Height = 13
      Caption = 'Purchase Date'
    end
    object RzDBLookupComboBox1: TRzDBLookupComboBox
      Left = 121
      Top = 8
      Width = 249
      Height = 21
      DataField = 'VENDACCOUNT'
      DataSource = frmPembelian.DsHeader
      KeyField = 'VENDACCOUNT'
      ListField = 'VENDORNAME'
      ListSource = frmPembelian.DataSourceVendor
      TabOrder = 0
    end
    object RzDBDateTimeEdit1: TRzDBDateTimeEdit
      Left = 121
      Top = 35
      Width = 121
      Height = 21
      DataSource = frmPembelian.DsHeader
      DataField = 'PURCHASEDATE'
      TabOrder = 1
      EditType = etDate
    end
    object RzDBCheckBox1: TRzDBCheckBox
      Left = 121
      Top = 62
      Width = 58
      Height = 15
      DataField = 'ISPPN'
      DataSource = frmPembelian.DsHeader
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      Caption = 'Is PPN ?'
      TabOrder = 2
    end
    object RzPanel1: TRzPanel
      Left = 2
      Top = 141
      Width = 423
      Height = 37
      Align = alBottom
      BorderOuter = fsBump
      TabOrder = 3
      object btnCancel: TRzBitBtn
        Left = 232
        Top = 8
        TabOrder = 0
        OnClick = btnCancelClick
        Kind = bkCancel
      end
      object btnOK: TRzBitBtn
        Left = 336
        Top = 8
        TabOrder = 1
        OnClick = btnOKClick
        Kind = bkOK
      end
    end
  end
end
