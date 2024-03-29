object frmAddItemSales: TfrmAddItemSales
  Left = 0
  Top = 0
  Caption = 'Add Item Sales'
  ClientHeight = 416
  ClientWidth = 750
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 750
    Height = 33
    Align = alTop
    BorderOuter = fsBump
    TabOrder = 0
  end
  object RzPanel2: TRzPanel
    Left = 661
    Top = 33
    Width = 89
    Height = 383
    Align = alRight
    BorderOuter = fsBump
    TabOrder = 1
    object RzBtnOK: TRzBitBtn
      Left = 2
      Top = 2
      Width = 85
      Align = alTop
      Caption = '&OK'
      TabOrder = 0
      OnClick = RzBtnOKClick
    end
  end
  object SMDBGrid2: TSMDBGrid
    Left = 0
    Top = 33
    Width = 661
    Height = 383
    Align = alClient
    DataSource = DsItem
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'Tahoma'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsNormal
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    Columns = <
      item
        Expanded = False
        FieldName = 'MARK'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ITEMID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ITEMNAME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HARGABELI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HARGAJUAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIT'
        Visible = True
      end>
  end
  object FDQueryItem: TFDQuery
    Active = True
    Connection = DM.FDConnection1
    SQL.Strings = (
      'SELECT * FROM SELECTITEM')
    Left = 400
    Top = 137
  end
  object DsItem: TDataSource
    DataSet = FDQueryItem
    Left = 464
    Top = 136
  end
  object FDQueryAddItem: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'SELECT * FROM SELECTITEM')
    Left = 400
    Top = 201
    object FDQueryAddItemITEMID: TWideStringField
      FieldName = 'ITEMID'
      Origin = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryAddItemITEMNAME: TWideStringField
      FieldName = 'ITEMNAME'
      Origin = 'ITEMNAME'
      Size = 80
    end
    object FDQueryAddItemHARGABELI: TFMTBCDField
      FieldName = 'HARGABELI'
      Origin = 'HARGABELI'
      Precision = 18
      Size = 2
    end
    object FDQueryAddItemHARGAJUAL: TFMTBCDField
      FieldName = 'HARGAJUAL'
      Origin = 'HARGAJUAL'
      Precision = 18
      Size = 2
    end
    object FDQueryAddItemUNIT: TWideStringField
      FieldName = 'UNIT'
      Origin = 'UNIT'
      Size = 10
    end
    object FDQueryAddItemMARK: TBooleanField
      FieldName = 'MARK'
      Origin = 'MARK'
    end
  end
  object DsAddItem: TDataSource
    DataSet = FDQueryAddItem
    Left = 464
    Top = 200
  end
  object FDStoredAddItem: TFDStoredProc
    Connection = DM.FDConnection1
    StoredProcName = 'POS.dbo.InsertSelectItem'
    Left = 392
    Top = 272
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = '@UserId'
        DataType = ftWideString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 3
        Name = '@Transtype'
        DataType = ftWideString
        ParamType = ptInput
        Size = 10
      end>
  end
  object FDStoredAddSales: TFDStoredProc
    Connection = DM.FDConnection1
    StoredProcName = 'POS.dbo.InsertSalesDetail'
    Left = 480
    Top = 272
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@Userid'
        DataType = ftWideString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 3
        Name = '@SalesId'
        DataType = ftWideString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 4
        Name = '@ItemId'
        DataType = ftWideString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 5
        Name = '@Qty'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@Unit'
        DataType = ftWideString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 7
        Name = '@Price'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@LineAmount'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end>
  end
end
