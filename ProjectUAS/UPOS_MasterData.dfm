object frmMasterData: TfrmMasterData
  Left = 0
  Top = 0
  Caption = 'frmMasterData'
  ClientHeight = 466
  ClientWidth = 772
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 664
    Top = 35
    Width = 108
    Height = 431
    Align = alRight
    BevelInner = bvLowered
    TabOrder = 0
  end
  object Panel3: TPanel
    Left = 0
    Top = 35
    Width = 664
    Height = 431
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object RzPanel1: TRzPanel
      Left = 2
      Top = 161
      Width = 660
      Height = 268
      Align = alClient
      BorderOuter = fsBump
      TabOrder = 0
      object SMDBGrid1: TSMDBGrid
        Left = 2
        Top = 2
        Width = 656
        Height = 264
        Align = alClient
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
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
        GridStyle.Style = gsCustom
        GridStyle.OddColor = 8251372
        GridStyle.EvenColor = clWindow
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar, eoFilterAutoApply]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
      end
    end
    object RzPanel2: TRzPanel
      Left = 2
      Top = 2
      Width = 660
      Height = 159
      Align = alTop
      BorderOuter = fsBump
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 772
    Height = 35
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 2
    object RzDBNavigator1: TRzDBNavigator
      Left = 2
      Top = 2
      Width = 290
      Height = 31
      DataSource = DataSource1
      Align = alLeft
      BorderOuter = fsNone
      TabOrder = 0
    end
  end
  object FDQuery1: TFDQuery
    Connection = DM.FDConnection1
    Left = 432
    Top = 67
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 494
    Top = 66
  end
end