object frmTransaksiData: TfrmTransaksiData
  Left = 0
  Top = 0
  Caption = 'frmTransaksiData'
  ClientHeight = 431
  ClientWidth = 780
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 780
    Height = 35
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object RzDBNavigator1: TRzDBNavigator
      Left = 2
      Top = 2
      Width = 290
      Height = 31
      DataSource = DsHeader
      Align = alLeft
      BorderOuter = fsNone
      TabOrder = 0
    end
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 241
    Width = 780
    Height = 190
    Align = alClient
    BorderOuter = fsBump
    TabOrder = 1
    object RzPageControl2: TRzPageControl
      Left = 2
      Top = 2
      Width = 776
      Height = 186
      Hint = ''
      ActivePage = TabSheet2
      Align = alClient
      TabIndex = 0
      TabOrder = 0
      FixedDimension = 19
      object TabSheet2: TRzTabSheet
        Caption = 'Detail'
        object SMDBGridDetail: TSMDBGrid
          Left = 0
          Top = 0
          Width = 772
          Height = 163
          Align = alClient
          DataSource = DsDetail
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnEnter = SMDBGridDetailEnter
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
          ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
        end
      end
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 35
    Width = 780
    Height = 206
    Align = alTop
    BorderOuter = fsBump
    TabOrder = 2
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 776
      Height = 202
      Hint = ''
      ActivePage = TabSheet1
      Align = alClient
      TabIndex = 0
      TabOrder = 0
      FixedDimension = 19
      object TabSheet1: TRzTabSheet
        Caption = 'Header'
        object SMDBGridHeader: TSMDBGrid
          Left = 0
          Top = 0
          Width = 772
          Height = 179
          Align = alClient
          DataSource = DsHeader
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnEnter = SMDBGridHeaderEnter
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
          ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
        end
      end
    end
  end
  object FDQueryHeader: TFDQuery
    BeforeDelete = FDQueryHeaderBeforeDelete
    Connection = DM.FDConnection1
    Left = 387
    Top = 73
  end
  object FDQueryDetail: TFDQuery
    MasterSource = DsHeader
    Connection = DM.FDConnection1
    Left = 387
    Top = 145
  end
  object DsHeader: TDataSource
    DataSet = FDQueryHeader
    Left = 539
    Top = 89
  end
  object DsDetail: TDataSource
    DataSet = FDQueryDetail
    Left = 547
    Top = 161
  end
end
