inherited frmPenjualan: TfrmPenjualan
  Caption = 'Transaksi Penjualan'
  ClientHeight = 463
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitHeight = 502
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited RzDBNavigator1: TRzDBNavigator
      Hints.Strings = ()
    end
    object BitBtn1: TBitBtn
      Left = 292
      Top = 2
      Width = 69
      Height = 31
      Align = alLeft
      Caption = '&Print'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  inherited RzPanel2: TRzPanel
    Height = 222
    ExplicitHeight = 222
    inherited RzPageControl2: TRzPageControl
      Height = 218
      ExplicitHeight = 218
      FixedDimension = 19
      inherited TabSheet2: TRzTabSheet
        ExplicitHeight = 195
        inherited SMDBGridDetail: TSMDBGrid
          Width = 674
          Height = 195
          Columns = <
            item
              Expanded = False
              FieldName = 'ITEMID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'lkItemName'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTY'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNIT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRICE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LINEAMOUNT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RECORDID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TRANSDATE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SALESID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USERID'
              Visible = True
            end>
        end
        object RzPanel3: TRzPanel
          Left = 674
          Top = 0
          Width = 98
          Height = 195
          Align = alRight
          BorderOuter = fsBump
          TabOrder = 1
          object RzBtnAddItem: TRzBitBtn
            Left = 2
            Top = 2
            Width = 94
            Align = alTop
            Caption = '& Add Item'
            TabOrder = 0
            OnClick = RzBtnAddItemClick
          end
        end
      end
    end
  end
  inherited RzPanel1: TRzPanel
    inherited RzPageControl1: TRzPageControl
      FixedDimension = 19
      inherited TabSheet1: TRzTabSheet
        inherited SMDBGridHeader: TSMDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'SALESID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TRANSDATE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CUSTACCOUNT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'lkCustomerName'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SALESDATE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ISPPN'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTALAMOUNT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GRANDTOTAL'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USERID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOPCODE'
              Visible = True
            end>
        end
      end
    end
  end
  inherited FDQueryHeader: TFDQuery
    AfterInsert = FDQueryHeaderAfterInsert
    AfterScroll = FDQueryHeaderAfterScroll
    OnNewRecord = FDQueryHeaderNewRecord
    SQL.Strings = (
      'SELECT * FROM SALESHEADER')
    Left = 427
    Top = 89
    object FDQueryHeaderSALESID: TWideStringField
      FieldName = 'SALESID'
      Origin = 'SALESID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object FDQueryHeaderCUSTACCOUNT: TWideStringField
      FieldName = 'CUSTACCOUNT'
      Origin = 'CUSTACCOUNT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object FDQueryHeaderSALESDATE: TDateField
      FieldName = 'SALESDATE'
      Origin = 'SALESDATE'
    end
    object FDQueryHeaderISPPN: TBooleanField
      FieldName = 'ISPPN'
      Origin = 'ISPPN'
    end
    object FDQueryHeaderTOTALAMOUNT: TFMTBCDField
      FieldName = 'TOTALAMOUNT'
      Origin = 'TOTALAMOUNT'
      Precision = 18
      Size = 2
    end
    object FDQueryHeaderGRANDTOTAL: TFMTBCDField
      FieldName = 'GRANDTOTAL'
      Origin = 'GRANDTOTAL'
      Precision = 18
      Size = 2
    end
    object FDQueryHeaderUSERID: TWideStringField
      FieldName = 'USERID'
      Origin = 'USERID'
      Size = 10
    end
    object FDQueryHeaderTRANSDATE: TSQLTimeStampField
      FieldName = 'TRANSDATE'
      Origin = 'TRANSDATE'
    end
    object FDQueryHeaderTOPCODE: TWideStringField
      FieldName = 'TOPCODE'
      Origin = 'TOPCODE'
    end
    object FDQueryHeaderlkCustomerName: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCustomerName'
      LookupDataSet = FDQueryCustomerName
      LookupKeyFields = 'CUSTACCOUNT'
      LookupResultField = 'CUSTOMERNAME'
      KeyFields = 'CUSTACCOUNT'
      Size = 90
      Lookup = True
    end
  end
  inherited FDQueryDetail: TFDQuery
    AfterPost = FDQueryDetailAfterPost
    MasterFields = 'SALESID'
    SQL.Strings = (
      'SELECT * FROM SALESDETAIL')
    Left = 419
    Top = 153
    object FDQueryDetailSALESID: TWideStringField
      FieldName = 'SALESID'
      Origin = 'SALESID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object FDQueryDetailITEMID: TWideStringField
      FieldName = 'ITEMID'
      Origin = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryDetailQTY: TFMTBCDField
      FieldName = 'QTY'
      Origin = 'QTY'
      OnChange = FDQueryDetailQTYChange
      Precision = 18
      Size = 2
    end
    object FDQueryDetailUNIT: TWideStringField
      FieldName = 'UNIT'
      Origin = 'UNIT'
      Size = 10
    end
    object FDQueryDetailPRICE: TFMTBCDField
      FieldName = 'PRICE'
      Origin = 'PRICE'
      OnChange = FDQueryDetailPRICEChange
      Precision = 18
      Size = 2
    end
    object FDQueryDetailLINEAMOUNT: TFMTBCDField
      FieldName = 'LINEAMOUNT'
      Origin = 'LINEAMOUNT'
      Precision = 18
      Size = 2
    end
    object FDQueryDetailRECORDID: TLargeintField
      FieldName = 'RECORDID'
      Origin = 'RECORDID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryDetailTRANSDATE: TSQLTimeStampField
      FieldName = 'TRANSDATE'
      Origin = 'TRANSDATE'
    end
    object FDQueryDetailUSERID: TWideStringField
      FieldName = 'USERID'
      Origin = 'USERID'
      Size = 10
    end
    object FDQueryDetaillkItemName: TStringField
      FieldKind = fkLookup
      FieldName = 'lkItemName'
      LookupDataSet = FDQuItem
      LookupKeyFields = 'ITEMID'
      LookupResultField = 'ITEMNAME'
      KeyFields = 'ITEMID'
      Size = 90
      Lookup = True
    end
  end
  object FDQueryCustomerName: TFDQuery
    Active = True
    Connection = DM.FDConnection1
    SQL.Strings = (
      'SELECT * FROM CUSTOMER')
    Left = 243
    Top = 105
  end
  object FDQuItem: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'SELECT * FROM INVENTTABLE')
    Left = 243
    Top = 169
  end
  object DataSourceCustomer: TDataSource
    DataSet = FDQueryCustomerName
    Left = 315
    Top = 121
  end
  object DsItem: TDataSource
    DataSet = FDQuItem
    Left = 312
    Top = 176
  end
  object frxReportSales: TfrxReport
    Version = '6.6.15'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45300.617506481500000000
    ReportOptions.LastChange = 45304.484569444440000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 307
    Top = 287
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 245.669332830000000000
        Top = 328.819110000000000000
        Width = 740.409927000000000000
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 87.590600000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Prepare By')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Top = 87.590600000000000000
          Width = 158.740260000000000000
          Height = 98.267780000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 87.590600000000000000
          Width = 170.078850000000000000
          Height = 98.267780000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Top = 87.590600000000000000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 87.590600000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Approve By')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 645.921677000000000000
          Top = 219.874150000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[PAGE#] of [TOTALPAGES#]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Top = 219.874150000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 219.874150000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 526.134200000000000000
          Top = 19.897650000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'PPN 11% :')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 526.354670000000000000
          Top = 41.574830000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 613.842920000000000000
          Width = 126.614173230000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."LINEAMOUNT">,MasterData1,2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 526.236550000000000000
          Top = 1.055040000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sub Total :')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 614.283860000000000000
          Top = 19.559060000000000000
          Width = 125.858267720000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[   (SUM(<frxDBDataset1."LINEAMOUNT">,MasterData1,2) * 0.11)  ]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 614.283860000000000000
          Top = 38.456710000000000000
          Width = 125.858267720000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[ ( (SUM(<frxDBDataset1."LINEAMOUNT">,MasterData1,2) * 0.11) + S' +
              'UM(<frxDBDataset1."LINEAMOUNT"> ) ) ]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoPrepareBy: TfrxMemoView
          AllowVectorExport = True
          Top = 166.960730000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Prepare By')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 167.299320000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '(.....................................)')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 287.244280000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[LINE#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456692910000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          DataField = 'ITEMID'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."ITEMID"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          DataField = 'ITEMNAME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."ITEMNAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'QTY'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."QTY"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 459.590551180000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'UNIT'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."UNIT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 520.062992130000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataField = 'PRICE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."PRICE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 615.062992130000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'LINEAMOUNT'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."LINEAMOUNT"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.236220472440900000
        Top = 196.535560000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 26.456710000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456692910000000000
          Width = 86.929190000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Item ID')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385826770000000000
          Width = 287.244280000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Item Name')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 400.629921260000000000
          Width = 60.472480000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Qty')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 459.700787400000000000
          Width = 60.472480000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Unit')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 520.173228350000000000
          Width = 94.488250000000000000
          Height = 30.236240000000000000
          DisplayFormat.FormatStr = '#,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Price')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 615.062972600000000000
          Width = 124.724490000000000000
          Height = 30.236240000000000000
          DisplayFormat.FormatStr = '#,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Line Amount')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 154.960629920000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 50.354360000000000000
          Top = -2.779530000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PT. Dealer Cahaya Harapan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 51.000000000000000000
          Top = 18.102350000000000000
          Width = 224.858380000000000000
          Height = 49.133858270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Kawasan KITIC Deltamas Block CC No.12'
            'Pasirranji, Cikarang Pusat, Kabupaten Bekasi'
            'Indonesia')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Top = 79.370130000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Kepada')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Top = 102.047310000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Alamat')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 79.370130000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 102.047310000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 102.047310000000000000
          Width = 260.787570000000000000
          Height = 49.133890000000000000
          DataSetName = 'frxDBDatasetSales'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 79.370130000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PO Number')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 102.047310000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PO Date')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 79.370130000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 102.047310000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 543.031850000000000000
          Top = 79.370130000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'SALESID'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."SALESID"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 543.031850000000000000
          Top = 102.047310000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'ITEMNAME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."ITEMNAME"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 49.133890000000000000
          Frame.Typ = []
          Picture.Data = {
            0A544A504547496D6167656AD10000FFD8FFE000104A46494600010101004800
            480000FFE100224578696600004D4D002A000000080001011200030000000100
            01000000000000FFE109BE687474703A2F2F6E732E61646F62652E636F6D2F78
            61702F312E302F003C3F787061636B657420626567696E3D22EFBBBF22206964
            3D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E0D0A3C
            783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D657461
            2F2220783A786D70746B3D22584D5020436F726520342E342E302D4578697632
            223E0D0A093C7264663A52444620786D6C6E733A7264663D22687474703A2F2F
            7777772E77332E6F72672F313939392F30322F32322D7264662D73796E746178
            2D6E7323223E0D0A09093C7264663A4465736372697074696F6E207264663A61
            626F75743D222220786D6C6E733A64633D22687474703A2F2F7075726C2E6F72
            672F64632F656C656D656E74732F312E312F223E0D0A0909093C64633A637265
            61746F723E0D0A090909093C7264663A5365713E0D0A09090909093C7264663A
            6C693E566563746F7253746F636B2E636F6D2F34333232353834333C2F726466
            3A6C693E0D0A090909093C2F7264663A5365713E0D0A0909093C2F64633A6372
            6561746F723E0D0A09093C2F7264663A4465736372697074696F6E3E0D0A093C
            2F7264663A5244463E0D0A3C2F783A786D706D6574613E0D0A20202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020202020202020200A2020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20200A2020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020200A202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020200A20202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020200A2020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020200A202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020200A20202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            0A20202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020200A2020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020200A202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020200A20202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020200A2020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020200A202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020200A20
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020200A20202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020200A2020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020200A202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020200A20202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020200A2020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020203C3F787061636B657420656E
            643D2777273F3EFFDB0043000201010201010202020202020202030503030303
            030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C
            0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C
            0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110802AA03E8030122000211
            01031101FFC4001F000001050101010101010000000000000000010203040506
            0708090A0BFFC400B5100002010303020403050504040000017D010203000411
            05122131410613516107227114328191A1082342B1C11552D1F0243362728209
            0A161718191A25262728292A3435363738393A434445464748494A5354555657
            58595A636465666768696A737475767778797A838485868788898A9293949596
            9798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2
            D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F
            0100030101010101010101010000000000000102030405060708090A0BFFC400
            B511000201020404030407050404000102770001020311040521310612415107
            61711322328108144291A1B1C109233352F0156272D10A162434E125F1171819
            1A262728292A35363738393A434445464748494A535455565758595A63646566
            6768696A737475767778797A82838485868788898A92939495969798999AA2A3
            A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8
            D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C0301000211031100
            3F00FCFBA28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2803
            E2A93E3178AD646FF8A935AEBFF3F8FF00E34DFF0085C3E2AFFA1935CFFC0C7F
            F1AE766FF58DF5A650074BFF000B87C55FF4326B9FF818FF00E347FC2E1F157F
            D0C9AE7FE063FF008D735450074BFF000B87C55FF4326B9FF818FF00E347FC2E
            1F157FD0C9AE7FE063FF008D735450074BFF000B87C55FF4326B9FF818FF00E3
            47FC2E1F157FD0C9AE7FE063FF008D735450074BFF000B87C55FF4326B9FF818
            FF00E347FC2E1F157FD0C9AE7FE063FF008D735450074BFF000B87C55FF4326B
            9FF818FF00E347FC2E1F157FD0C9AE7FE063FF008D735450074BFF000B87C55F
            F4326B9FF818FF00E347FC2E1F157FD0C9AE7FE063FF008D735450074BFF000B
            87C55FF4326B9FF818FF00E347FC2E1F157FD0C9AE7FE063FF008D735450074B
            FF000B87C55FF4326B9FF818FF00E347FC2E1F157FD0C9AE7FE063FF008D7354
            50074BFF000B87C55FF4326B9FF818FF00E347FC2E1F157FD0C9AE7FE063FF00
            8D735450074BFF000B87C55FF4326B9FF818FF00E347FC2E1F157FD0C9AE7FE0
            63FF008D735450074BFF000B87C55FF4326B9FF818FF00E347FC2E1F157FD0C9
            AE7FE063FF008D735450074BFF000B87C55FF4326B9FF818FF00E347FC2E1F15
            7FD0C9AE7FE063FF008D735450074BFF000B87C55FF4326B9FF818FF00E347FC
            2E1F157FD0C9AE7FE063FF008D735450074BFF000B87C55FF4326B9FF818FF00
            E347FC2E1F157FD0C9AE7FE063FF008D735450074BFF000B87C55FF4326B9FF8
            18FF00E347FC2E1F157FD0C9AE7FE063FF008D735450074BFF000B87C55FF432
            6B9FF818FF00E347FC2E1F157FD0C9AE7FE063FF008D735450074BFF000B87C5
            5FF4326B9FF818FF00E347FC2E1F157FD0C9AE7FE063FF008D735450074BFF00
            0B87C55FF4326B9FF818FF00E347FC2E1F157FD0C9AE7FE063FF008D73545007
            4BFF000B87C55FF4326B9FF818FF00E347FC2E1F157FD0C9AE7FE063FF008D73
            5450074BFF000B87C55FF4326B9FF818FF00E347FC2E1F157FD0C9AE7FE063FF
            008D735450074BFF000B87C55FF4326B9FF818FF00E347FC2E1F157FD0C9AE7F
            E063FF008D735450074BFF000B87C55FF4326B9FF818FF00E347FC2E1F157FD0
            C9AE7FE063FF008D735450074BFF000B87C55FF4326B9FF818FF00E347FC2E1F
            157FD0C9AE7FE063FF008D735450074BFF000B87C55FF4326B9FF818FF00E347
            FC2E1F157FD0C9AE7FE063FF008D735450074BFF000B87C55FF4326B9FF818FF
            00E347FC2E1F157FD0C9AE7FE063FF008D735450074BFF000B87C55FF4326B9F
            F818FF00E347FC2E1F157FD0C9AE7FE063FF008D735450074BFF000B87C55FF4
            326B9FF818FF00E347FC2E1F157FD0C9AE7FE063FF008D735450074BFF000B87
            C55FF4326B9FF818FF00E347FC2E1F157FD0C9AE7FE063FF008D735450074BFF
            000B87C55FF4326B9FF818FF00E347FC2E1F157FD0C9AE7FE063FF008D735450
            074BFF000B87C55FF4326B9FF818FF00E347FC2E1F157FD0C9AE7FE063FF008D
            735450074BFF000B87C55FF4326B9FF818FF00E347FC2E1F157FD0C9AE7FE063
            FF008D735450074BFF000B87C55FF4326B9FF818FF00E347FC2E1F157FD0C9AE
            7FE063FF008D735450074BFF000B87C55FF4326B9FF818FF00E347FC2E1F157F
            D0C9AE7FE063FF008D735450074BFF000B87C55FF4326B9FF818FF00E347FC2E
            1F157FD0C9AE7FE063FF008D735450074BFF000B87C55FF4326B9FF818FF00E3
            47FC2E1F157FD0C9AE7FE063FF008D735450074BFF000B87C55FF4326B9FF818
            FF00E347FC2E1F157FD0C9AE7FE063FF008D735450074BFF000B87C55FF4326B
            9FF818FF00E347FC2E1F157FD0C9AE7FE063FF008D735450074BFF000B87C55F
            F4326B9FF818FF00E347FC2E1F157FD0C9AE7FE063FF008D735450074BFF000B
            87C55FF4326B9FF818FF00E347FC2E1F157FD0C9AE7FE063FF008D735450074B
            FF000B87C55FF4326B9FF818FF00E347FC2E1F157FD0C9AE7FE063FF008D7354
            50074BFF000B87C55FF4326B9FF818FF00E347FC2E1F157FD0C9AE7FE063FF00
            8D735450074BFF000B87C55FF4326B9FF818FF00E347FC2E1F157FD0C9AE7FE0
            63FF008D735450074BFF000B87C55FF4326B9FF818FF00E347FC2E1F157FD0C9
            AE7FE063FF008D735450074BFF000B87C55FF4326B9FF818FF00E347FC2E1F15
            7FD0C9AE7FE063FF008D735450074BFF000B87C55FF4326B9FF818FF00E347FC
            2E1F157FD0C9AE7FE063FF008D735450074BFF000B87C55FF4326B9FF818FF00
            E347FC2E1F157FD0C9AE7FE063FF008D735450074BFF000B87C55FF4326B9FF8
            18FF00E347FC2E1F157FD0C9AE7FE063FF008D735450074BFF000B87C55FF432
            6B9FF818FF00E347FC2E1F157FD0C9AE7FE063FF008D735450074BFF000B87C5
            5FF4326B9FF818FF00E347FC2E1F157FD0C9AE7FE063FF008D735450074BFF00
            0B87C55FF4326B9FF818FF00E347FC2E1F157FD0C9AE7FE063FF008D73545007
            4BFF000B87C55FF4326B9FF818FF00E347FC2E1F157FD0C9AE7FE063FF008D73
            5450074BFF000B87C55FF4326B9FF818FF00E347FC2E1F157FD0C9AE7FE063FF
            008D735450074BFF000B87C55FF4326B9FF818FF00E347FC2E1F157FD0C9AE7F
            E063FF008D735450074BFF000B87C55FF4326B9FF818FF00E347FC2E1F157FD0
            C9AE7FE063FF008D735450074BFF000B87C55FF4326B9FF818FF00E347FC2E1F
            157FD0C9AE7FE063FF008D735450074BFF000B87C55FF4326B9FF818FF00E347
            FC2E1F157FD0C9AE7FE063FF008D735450074BFF000B87C55FF4326B9FF818FF
            00E347FC2E1F157FD0C9AE7FE063FF008D735450074BFF000B87C55FF4326B9F
            F818FF00E347FC2E1F157FD0C9AE7FE063FF008D735450074BFF000B87C55FF4
            326B9FF818FF00E347FC2E1F157FD0C9AE7FE063FF008D735450074BFF000B87
            C55FF4326B9FF818FF00E347FC2E1F157FD0C9AE7FE063FF008D735450074BFF
            000B87C55FF4326B9FF818FF00E347FC2E1F157FD0C9AE7FE063FF008D735450
            07536BF183C56D731A9F126B58675FF97C7FF1A2B9CB2FF8FC8BFDF5A2801937
            FAC6FAD329F37FAC6FAD32800A28A2800A28A2800A28A2800A28A2800A28A280
            0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
            0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
            0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
            0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
            0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
            0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
            0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
            26B2FF008FC8BFDF5A28B2FF008FC8BFDF5A2801937FAC6FAD329F37FAC6FAD3
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A28026B2FF8FC8BFDF5A28B2F
            F8FC8BFDF5A2801937FAC6FAD329F37FAC6FAD32800A28A2800A28A2800A28A2
            800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
            800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
            800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
            800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
            800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
            800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
            800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
            800A28A2800A28A28026B2FF008FC8BFDF5A28B2FF008FC8BFDF5A2801937FAC
            6FAD329F37FAC6FAD32800A28A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28026B
            2FF8FC8BFDF5A28B2FF8FC8BFDF5A2801937FAC6FAD329F37FAC6FAD32800A28
            A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
            A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
            A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A7797ECD
            400DA2A4F2FDA8F2FF00DDA008E8A9767FB4D4BE4FFB2D40116C34953F943FBB
            4795FEE50043B7DC52558F2FFDDA123A0087CBA6D5AF2BDDBFEF9A6F97FEF500
            43E5D1E5D4FE57FBF4BE4FFB2D4015F67B37E54797563C9FF65A8F27FD96A00A
            FE5D36ACF95FEFD2797FEF50043E5D36AD795EEDFF007CD37CAF7FFC768020DB
            EE292AC797FEED2347BBFBAD4010EC34953F943FBB49E4FF00B2D4010D152ECF
            F69A93CBFF00768023A2A4F2FDA9BE5FB3500368A28A0028A28A0028A28A0028
            A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
            A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
            A28A0028A28A0028A28A0028A28A0028A28A009ACBFE3F22FF007D68A2CBFE3F
            22FF007D68A0064DFEB1BEB4CA7CDFEB1BEB4CA0028A28A0028A28A0028A28A0
            028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
            028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
            028A72A67B53BCBF7FCA8023A2A6587FD9FCE9CB1FFB5F950043B3FD9A724753
            2C38FE1DD4BE5FFBAB401088F77F79A9CB167F876D4BE5FF00BCD4EF27FD9FCE
            8021F2FF00DAFCA9DE5FFBCD53797FED52AC7BFF00BCD4011793FECD1B3FDDA9
            FCA1FDDA5F2FFDDA00AFE5FF00B54EF2BD9AA6F2FF00DAFD697CAFF7E8020587
            FD9A76CDBFDD5A9D61FF00668F2FFDD5A0083CBFF6969DB2A5D9FED2D3BCAFA5
            0057D9FED3526CFF007AAC797FED351E5FFBD4015F67FBD4EF27FD96AB1E57B3
            51E57B350057F27FD96A3C9FF65AAC795ECD4795ECD4015767FBD46CFF007AAD
            795ECD4DF2FF00DEA008367FB4D434753F97FED352F95F4A00ADE5FF00B4B434
            7BBFBAD53ECFF6968F2FFDD6A00ACD0FFB34795ECD565A1FF669BE57FBF4015B
            CBFF0069A8F2FF00DDAB1E5FFBD4797FEED0057F27FD9A6F97FEF2D59F287F76
            9BE5FF00BCB40159A3FF006BF3A68871D95AAD797FE4D35A1FF66802B18F6FF7
            969BE57D6ACF97FEF2D218F77F75A802B6CFF669B569A3E7EED35A3FF6BF3A00
            AF454CD0FF00B3F9537CBFF6A8023A29CC98ED4DA0028A28A0028A28A0028A28
            A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
            A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
            A009ACBFE3F22FF7D68A2CBFE3F22FF7D68A0064DFEB1BEB4CA7CDFEB1BEB4CA
            0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
            0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
            0028A9123A558FFE054011548B1FFC06A4F2BDA9CB1F3F76802258FF00E054FF
            002F3FECD4BE57D29523FF0066802311F1FDEA558FFE03532C7FF02A558F9FEE
            D004623E7EEEEA7797FEEAD48B1FFBC69EB1FF00C06802158F7FF79A94C7B3F8
            5454DE5FFC0A9CB0FF00B34010F97FED7EB4EF27FD9FCEA658F1FC5F952AC3FE
            CD0045B3FDDA3CBFF7AAC797FEEAD1E57B50043E4FFB3F9D3BCBFF00756A6F27
            FD9FCE9447B7FBAB4010ECFF006A858FFDEA9D63FF006BF2A7247FEF50057487
            FD9A047B7FBAB56161FF00669DE5FF00BAB4015FCBFF00768F2BDAAC797FEED3
            B650055F2FFDEA5F2BFDFAB1B3FDA6A4D9FEF50043E4FF00B2D4793FECB558F2
            7FD96A3C9FF65A802BF93FECB51E4FFB2D563C9FF65A8F27FD96A00AFE4FFB2D
            49E57FBF567C9FF65A9BB3FDEA00AFE5FF00BD4795ED56767FB4D46CFF006A80
            2B797FEED34C7BBFBAD56BCBFF006968F277FF0075A802ABC3FECD2347FEF559
            687FD9A1E3FF007A802B6CFF006A93CBFF0075AAC7979FE2FCE90C7BBFBAD401
            5BC9FF0067F2A6F97FEF55AF27FD9FCA9A63FF007A802BECFF00769BE4FF00B3
            F955AF2FFDD6A6343FECD0056F2FFDAFD69BE5FF00BAD569A3CFF17E74D687FD
            9A00ACD1ECFEF2D2797FEEB558F2FF00E0348D1FFC0A802B18F9FBBB698D1FFC
            0AACB47FEF0A6B47CFF7A802B98F8FEED35A3E3FBD567CBFF80D31E3FF006680
            2B347FF01A468FFE05567CAFA531A3E7EED005765A6D58F2BDA98D1FFC068022
            A2A478EA3A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
            8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
            8A0028A28A009ACBFE3F22FF007D68A2CBFE3F22FF007D68A0064DFEB1BEB4CA
            7CDFEB1BEB4CA0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
            8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A29CAB4
            00DA72AD3D63A7A474011795F5A7AC7CFF0076A558E9563FF815003447C7F7A9
            FE57D29E91D3963E7FBB4011A47FECD3D63FF8154A23E3FBD4FF002BE940112C
            7C7F769CB1F3F76A448FFD9A7AC7FF0002A008FCAFA52A47FECD48B1F3FDDA90
            47C7F7A8020F2BEB4F58F8FBB52AC7FF0001A7A47FECD0043E5FFB5F953BC9FF
            0067F3A9963FF80D2AC7FF0002A008963A7797BBFBCD52797FEEAD49E5FF00BC
            D4010ECDBFDD5A5F2F1FC5F954CB1E4FDDC52F978FE2FCA8020587FD9A531ECF
            E151563C9CFF007A9DE4E7FBAB4015D63FF6BF2A72C7FEF354CB1E3F8BF2A5F2
            FF00DE6A008161FF0067F3A510ED1FC2B53F93FECFE740871FDD5A008767FBB4
            797FED558F2FFDDA3CBFF6BF5A00AFE5FF00B4D4EF2BD9AA6F2FFDEA72C3FEF5
            0057F2BD9A8F2BD9AAC793FECB51E4FF00B2D4015FCAF66A3CAF66AB1E4FFB2D
            4793FECB50057F2BD9A8F2BD9AAC793FECB51E4FFBD40157CBFF0069A8F2FF00
            DAAB1E5FFBD4797FED7EB4015F67FBB49E5FFBAD567CBFF769BE5EF1FC34015D
            A1FF0067F2A1A3FF00796AC343FECFE549E5FF00BCB40159A3FF006BF3A688F7
            FF000A9AB5E5FF00B5F9D1E4EEFE156A00AAF0FF00B348D1FF00B5567CAF66A6
            F979FE2FCE802BB27FBA69BE5E7FBCB565A1FF006693CBFF00796802AB474D68
            7FD9FCAAD347FEE9A63478FF0066802B797FED7E74D68F8FBB569A3FF81535E3
            FF0066802ABC74D78FFD9AB2D1FF00C0A90C7C7F76802B795F4A6347CFDDAB0D
            1F3FDEA468FF00E0340159A3E3FBD4C68FFE03565E3FF6693CAFA5005478FF00
            D9A4F2BE9564C7C7F76A368F9FEF5005731F1FDDA8DA3E7FBD569E3A8DA3FF00
            80D005778E9ACB565A3A63C74015E8A95A3FF80D3196801B4514500145145001
            4514500145145001451450014514500145145001451450014514500145145001
            45145001451450014514500145145004D65FF1F917FBEB45165FF1F917FBEB45
            00326FF58DF5A653E6FF0058DF5A650014514500145145001451450014514500
            1451450014514500145145001451450014514500145145001451450014514E55
            A006D39569C91D4891D003163FF8153D569EB1FF00C069E23A0062C7FF0001A7
            88E9EB1FFC0A9E91D003163FF8153D23A7AC7FF01A788E8018B1FF00C069EB1F
            E34F58FF00E054F48E802348E9CB1F3FDDA9563FF80D3D63FC6802311F1FDEA7
            2C74FF002BEB4F58F9FEED004691FF00B3526CA9047C7F7A9563A008963E7FBB
            4E58F9FEF54CB0FF00B34E48E802258FFDD14AA9FEF1A9847C7DDFFBEA9DE57B
            50047E4ECFEEAD2AC7532C3FECD2AC7401088F8FBBFF007D53BCBFF22A6F27FD
            9A7797FEED004223DDFDE6A5587FD9A9767FBD4E487FD9A0087CBFF6A9DE57B3
            54C91D3BCBFF0069A802BAC3FECD3BCBFF0076A6F27E6FBB4793FECAD0043E5F
            FBB4BB3FDAA9FCBFF768F2FF00DAA008367FB4D4BE4FFB2D53797FED353BCAF6
            6A00AFE4FF00B2D4793FECB558F2BD9A8F2BD9A802BF93FECB51E4FF00B2D563
            CAF66A3CAF66A00AFE4FFB2D4BE50FEED4FE57B351E57B350056D9FED352ECA9
            BCBFF7A8F2FF00DAA00AFE5FFBB4797FEED58F2FFDDA6ECA00AFE4FF00B3F953
            7CBFF80D59F28FF768F2BFDFA00AFE57D29AD0FF00B3567CAF6A4F287F76802B
            3C7B7DA9AD1FFB5565A3A468FF00DDA00AAF0FFB348D1D5978FF00D9A6B47401
            5D93FDD351B27FBC2ADB43CFDDFCA98F1D005668FF00DD34863E3FBB561E1FF6
            69AF1D005568F9FEF51B2AC343FECD31A3FF00815005678FFD9A6B47568C7C7F
            76A368F9FEF5005731F1FDDA8DA3E7FBD569E3A6B47F85005578EA368FFE0356
            DA3FF81531E3A00ACD1FFC0A99E57B55968FFE034C31D005668FFE034C31D596
            8FFE054C78E802B347FF0002A63C7565A3FF0080D30C740159A3FF0080D3196A
            CB474C68F8FEF50057A2A478E9ACB400DA28A2800A28A2800A28A2800A28A280
            0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
            26B2FF008FC8BFDF5A28B2FF008FC8BFDF5A2801937FAC6FAD329F37FAC6FAD3
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A29CAB4F55DD4008A3FE034E58E9CAB522C7400D58EA
            411D395714E58F9FEED0022C74F48E9EB1D3C47400C58FFE034F11D3D63FF815
            3D23A0062C74F48E9EB1D4A91D0046B1FF00C069C23A7AC75288F8FEF50044B1
            FF00C0A9E91D48B1D4891D0044B1FF00C069EB1FE34F58E9E91D004691D3963E
            7FBB52AC7FF01A788E802311F1FDEA72C7536CA163E3EED004691FFB34E09B2A
            6F2E97CBFF0080D0042B1FFB34F48EA458FF00E0552797FEEAD0042A9BA97CBF
            F756A5D9FEF53961CFF0EDA008563A7793FECFE7536DFF00229CB0FF00B34010
            F97FEED1B3FDEA9CC7B7FD9A558FE5A0087C9F9BEED1E4FF00B2B56367B37E54
            BE51FEEAD0041E5FFBB4797FED7EB563CBFF00769DB2802B795FEFD2F93FECB5
            4DB3FDEA7F95F5A00ADE4FFB2D4793FECB558F27FD96A5F287F76802AF947FBB
            4BE4FF00B2D567CA1FDDA3CA1FDDA00ADE4FFB2D4793FECB558F27FD96A5F2BE
            B40153CBFF007A9DE5D4DB3FDEA5D9FED50056F2FF00DDA6F93FECAD5AF2FF00
            DA5A3C9FF66802B7943FBB49B2AC793FECD37CBF92802BF97FEED37C9FF67F2A
            B3E5FF00C0A9BE51FEED005668E90C7BBFBAD5676FFB5F9D35A1A00AE63E3FBB
            4D68F755968FFE0349E5FF00C0A802A3474DF2BEB567CBFF0080D234740158C7
            CFDDDB4DF2F78AB0F1D35A3E7FBD4015DE3DBED51B47CFF7AACF95F5A468FF00
            0A00A9E57D691A3FC2ACB47FF02A6345FDDA00ACD1FF00C0A98F1D5968E91A3F
            F815005468FF00E034C31D5A68EA368F9FEED005668E98F1D5A68E9AD1FF00C0
            A802A3474C31D5968E98F1D005668FFE054C78EACB47FF0001A618E802B3474C
            31D5968EA268F9FEF5005765C546D1D5A65CD46D1D005765CD4646DAB0F1D319
            76D00454539969B4005145140051451400514514005145140051451400514514
            00514514005145140051451400514514013597FC7E45FEFAD14597FC7E45FEFA
            D1400C9BFD637D6994F9BFD637D6994005145140051451400514514005145140
            0514514005145140051451400514514005145006EA002A455C50AB8A9123A006
            AC752AAEDA1576D4AAB8A006AAD3D57753D23A7AAEDA00411F1FDEA72C74E55A
            9163A006A47522474E58EA411D003163FF00BE69EB1FF769EB1D3D23A0062C74
            F48E9EB1D4A91D0046B1D48B1FFC069CB1D4823E3FBD4011AC75208F8FEF5396
            3A9163FF0080D0046B1D4891D3963A9163A008D63A7795ED522C7522C7FF0001
            A008963FF80D3D63FC6A458E9C91D004691D3847C7DDFF00BEAA55873FC3B69E
            B1FE34010F95ED4F586A558FFE034E587FE054010AC7FE569C91FF00B353797B
            29CA9BBF87750044B1D2AC7FEF354BE5FF00C069FE5E3FBCD4010F97B7FD9A15
            7FDAAB1E5FB52AC7FED5004021FF0079A9DE4FFB3526CFF7A9FE50FEED0041B3
            FDDA5F2BE953F97FEED3BCBFF6A802AF97FEF53BCAF66AB091FF00BD4793FECB
            50057F2BD9A8F27FD9AB1E4FFB2D49E51FEED0045E5FFBD4DF27FD9AB1E4FF00
            B2B49E51FEED0041E57B351E57B3558687FD96A3C9FF0065A802AF97FEF52F95
            F4AB1E57FBF49E5FFB5FAD0057F2FF00DDA3C9FF0066AC797FEED3767FB34015
            FCBFF7969BE57B55931EDFEF2D1E5FF934015BCBCFF0AB531A3FF80D5BF2FDA9
            AD16DFEF50055F2FFDAFCE9AF1FF00B3569A3E7F85A9A63FF676D005565CFF00
            F5E91A3FF66ACB47BA9BE5FF00B3B6802ABC74D68F8FBB569A3FF81535A3FC28
            02A795F5A431D5968F07EEE698F1D005668E98F1D5A68E9AD1FF00C0A802A347
            48F1D5868E9AD1D005568E9AD1D5868E9AD1FF00C0A802AB474D68FF00E05561
            A3A698F8FEED005568E9A63E3FBB56197FBD4D68FF00E0540151A3A618EACB47
            FF0002A63C740159A3A63C7565A3A89A3A00AEF1D46D1D5A68EA368E802B98F8
            FEED44CBB6AC98E98CBBA802B32D31A3A9DA3A6B2E6802AB2FF7A9ACB9A9D977
            531E3A0081976D2548CB9A8C8DB4005145140051451400514514005145140051
            451400514514005145140051451400514514013597FC7E45FEFAD14597FC7E45
            FEFAD1400C9BFD637D6994F9BFD637D699400514514005145140051451400514
            5140051451400514514005145140051453956801A06EA9557750ABBAA555CD00
            3556A455CD39569EABBA80055DD4F55A72AE69CAB9A001573522AE29557754AB
            1D0035569EABB69557352AAEEA00448E9CB1D3962FEF548AB9A00458E9E23A72
            474E58F9FEED0022C7FF0002A7A474F58E9EB1FF0076801AB1D48B1FFC069CB1
            D48B1D0046B1D48B1D3963A9123A008D63A9123A72C7522C74011AC7522C7522
            C7F8D48B1E47CD4010AC7522A7FBA2A458F8FEED3963A008D63A7795ED52F95F
            4A7AC7FF0001A008961E7EEFE74AB1FF00C0AA554DDFC3BA9FE57B50046B1FFC
            069563FF0078D4CB1FFB34AB1FFB5401188F8FBAAB4E58F76DF9AA4F276FF0FE
            74F55C7FF5A8021F2FFD9FCE9563FF006AA6F27FD9FCE9DE5FFBB4015FCBFF00
            79A9DE4FFB353F95FEFD38C3F2FDDFCE8020F2FF00DDA5D9FED54FB3FDDA163A
            008163FF007A97C9FF0065AAC247FEF51E57B350041E50FEED1E50FEED4FE4FF
            00B34EF27FD9A00ABE4FFB2B4BE50FEED58F28FF0075697C9FF66802B7943FBB
            49E4FF00B2D563C9FF00668F2BD9A802B347FEF0A1A3FF006AACBC7FEF535A3F
            F2D4015FCBFF00769BE4FF00B356B67FBB49E4FF00B3F950054F2FFDE5A1A3AB
            5E5FFBCB4DF2FF00DDA00AFE5FB547E5F5FEB569A1FF0067F2A468FF00DAA00A
            8D1FFBAD48D1FF00C06ACB47FECFFDF34DF2FF00DAA00AED1FFC0A9AD1E1AACB
            47FECD33CAF6A00ACD1FFB34CAB2D1FF00C0691A3FF815005568E9AD1FFC0AAC
            3474D68FFBD4015BCAFA530C7FECEDAB4D1EEFF6A98D1D005678E98D1D5968FF
            000A634740151A3A6B47561A3E7FBD4D78E802AB474D78EAC3474D68E802AB47
            51BC7565A3A618E802B3474C31D5968E98CB40159A3A89A3AB4F1D46D1D00577
            8EA265DD565E3A632F1F2D005678EA365CD5865C53597140155A3A8DE3AB2CBB
            6A265C50040CBB6A265C55A65C544CBB6802065C544CBB6ACB2D46CB8A00AECB
            4DA95976D3196801B45145001451450014514500145145001451450014514500
            14514500145145004D65FF001F917FBEB45165FF001F917FBEB4500326FF0058
            DF5A653E6FF58DF5A65001451450014514500145145001451450014514500145
            145001451401BA801CAB4F55DD42AEEA95573400226DA9156855A7AAE7FDEA00
            157754AAB9A1573522AD000AB522AE2855C548AB9A001573522AFF00DF542AD4
            8AB8A00458EA555CD0AB9A9156801AAB9A9557752AAE2A555DB400C48EA455CD
            39569EABBA8011571522474E55FF008153963A00458E9E23A7AC74F58BFBD400
            D55C548B1D3963A9163FF80D0046B1D4AB1D2AC752AAEDA0062C7C7F769EB1D3
            D63FC69EB1FCD400C58FE6FEF53D57753D23A7AC7FF01A0062C7C7F769CB1FF7
            56A458F77F8D3D63FF00817D2802211EFA9163FF0080D48B1F1FDDA72C7CFDDA
            008963FF008153D63E3FBB52F95F4A7AC7FF0001A008523CFF000D3963A97CBF
            F79A9EB1FF00BA28021F2F7FF0B1A7797FEED4DE5FFC0A9563FF0065568021D9
            FED52F93FECFE7537978FE2FCA9DE4FF00B3F9D004223FF76858FF00DAAB1B36
            FF007569563A008163F9BF8A8F27FD96A9D63FF7A97C9FF65A8021F27FD9A6F9
            3FECAD58D9FECD1E4FFB2B4015FC9FF6568F27FD95AB1E4FFB2B4793FECAD004
            3E4FFB34DF27FD96AB1B3FD9A3C9FF0065BF0A00AEF1FF00BD4D68FF00DAAB2D
            1FFBD43478FE2FCE802B18FF00DDA6F93FECFE556BCBFF00769AD0FF00B3F950
            057D94DF2FFDD6AB1B3E5FBD48D1FF00B2AD40158C7CFDDDB4D68FFDA5AB5E5F
            FBCB51B47FEEB5005768769FBBF9535A3E3FBD565A3C7FB348D1FF00C0A802A3
            47FF0001A468F3FED558F2FF00FD469A63E7EEFF00DF34015BCAFA530C7FECFE
            3569A3E3FBD4C65C7B7B5005668F8FEF53767F77F5AB063A6347FF0002A00AC6
            3A63475659698CBB6802B3C74D68F03E5AB0D1FE14D923FEF5005368FF00E034
            D31F1FDDAB0D1D3597340155A3A6BC7561A3A8DE3A00AECB8A8D96ACB2EDA899
            714015DE3A8D971569A3FF00BEAA265DB401032E2A265DB564C751B474015597
            14D65C55865CD46CB40159976D3196AC32E2A365CD005765C546CB9AB0CB51B2
            E2802BB2D46CB8AB0D1D46CB40159976D3196AC32E2A265C7FBD401032E2A265
            DB56596A374DD4015D969B52B2EDA888DB400514514005145140051451400514
            514005145140051451400514514013597FC7E45FEFAD14597FC7E45FEFAD1400
            C9BFD637D6994F9BFD637D699400514514005145140051451400514514005145
            140051451400AABBA9EAB8A1571522AD000AB522AE695577548ABBA80055D952
            AAE69AAB5205FE2A0072AD48AB8A455DD52AAE680055CD4918A157FEFAA91576
            D000AB8A915734AABB69E23A00156A455C50AB8A95576D000ABB69EAB4E55C53
            95714002AE2A555DB42C59A9562CD003556A458E858EA555DB4008AB9A9123DB
            4E55C53963FEED0022C752AC74AB1D3C474C06AAE6A455C52AC752AC74806AC7
            FF00015A7C71FF0077E5A558F1FED3549E5FF7A801A23A7AAFFC0A9EB17F7A9E
            B167FD95A0062C5FDEA7AC7B7FD9A785FEED3D63FF00815003163FEEAEEA7AC7
            FF0002A7F95ED522C7F2FF0076802358F6FF007569C23E3FBD52247FECFE269E
            B1FF00C0A802255FF6A9CB1FFB3FF7D54CB1F1FDDA72C740116DFF00229447C7
            DDFF00BEAA658EA4F2F6FF000D572815FCAF6A5F2455858E9561DDFC3B9A9356
            02BECA7F95F4A926DB6FFEB1E38FFDF6DB5A5E1DF09EA9E2EB858F49D3752D5A
            46FBA961672DD337FC0515A9C40CAF2E8F2BFD9DB5ECDE0EFF00827B7C7AF882
            AADA27C15F8B1A9237DD78BC2B7AB1FF00DF4D12AD7A2F86FF00E0899FB57F8A
            31F66F813E3687777BC5B5B3FF00D1B32D481F2A7974BE57D6BEE1D1BFE0DD5F
            DB03588B77FC2A986CD7FE9EBC4DA5C5FF00B70D5BD63FF06D07ED6F75FEB3C1
            FE11B6FF00AEBE2BB5FF00D937536EE07C01E57D68F2BEB5FA236FFF0006C1FE
            D5937DED27E1EC7FEFF8A17FF6586A6FF885FBF6AAFF009F0F86FF00F853FF00
            F69A7CC07E73F974793BFF00DAAFD119FF00E0D86FDABA15F9747F87F27FB9E2
            95FF00D9A2ACDBCFF8367FF6B7B7FB9E0FF08DCFFD73F15DAFFECDB68E603E00
            F27FCE293CAFA57DD1A97FC1B8BFB6069AACCBF0BAC6E57FE9DFC55A5B7FE853
            2D72DACFFC1073F6B8D0F7799F047C4536DFF9F6D474E9FF00F41B8A101F1F34
            74DF2457D2BABFFC1213F6A2D08379FF0000FE2836DFF9E1A41B9FFD14CD5C4F
            893F60BF8E1E0FDDFDABF067E2B582AFDE32F84AFF00FF0042F2AA40F1F78E9A
            63E3EEFF00DF35D36BDF0BFC4DE17665D4FC37E24D2D97EF7DB349B8836FFDF6
            8B5CF4D3436EDB6496146F479155BFF1EA695C08767FB54C687FD9FCAACAEC9B
            EE3ABFD0EEA46B765FE165A1AB015597FDAA698FFD9DB569A3E3FBD4CF2FFE03
            480ACD1F1FDEA6347FF01AB2C9FDE5A63458FF00696802B347FDE5FC698D1FFC
            0AACB45FDDA63459FF0065A802B3AFF77F5A8DA3F9BFBA6AD347FDE5DDEF4C68
            FF00E0540158AFF7A98D1D59F2FF00BB4C78FF00FD540151A3FF00812D35A3E7
            E5AB0D1FFC069ACBFF0001A00AAD1D35A3AB0CBF37F76A331D005668FF00EFAA
            632D5968EA268E802BB2E2A368EAD32E6A268E802B18E98D1D4ED1D35E3A00AA
            D1D35E3A9DA3A89973401048B8A89A3AB0CB4C917140159A3FEF53197754ECB9
            A8CC74015D97351B2D5965DD5132E6802BB2E2A365CD5865A8DD375005765A8D
            97153B2EDA88AFF150040CBBEA22BFC55619698CBB6802B32D46CB9AB0CB8A8D
            96802065DB495232E6A3A0028A28A0028A28A0028A28A0028A28A0028A28A002
            8A28A009ACBFE3F22FF7D68A2CBFE3F22FF7D68A0064DFEB1BEB4CA7CDFEB1BE
            B4CA0028A28A0028A28A0028A28A0028A28A0028A28A0029CAB4D03754AABBA8
            01557152AAEDA48D71522AD003957F86A455A6AAEDA95576D0039577548ABBA9
            157F86A455A00156A455CD0AB9A955775000ABBAA555CD3556A455CD0039136D
            48AB8A455CFF00BD52AAE68015576D4AAB8A6AAD48AB8A00157152AAEDA1576D
            4AAB8A0015714E44DD4E55A7AAEDA001576D4AB166855C548ABBBFDDA680156A
            455CD0AB9A9157148015714E55FF0080AD3956A455CD0022AFFDF34F58FF00BB
            4E55C7DEFBB52247400D58FF00BB522C74AB1EE3FECD4AB1EEFF00656801AB1F
            E34F58FF00E054AABBBFD9A9563FEED003113FBDFA548B1FCBFDDA72C7FDDA7A
            C58FF69A8018B1FE14F58FFE0552AC7FDEF9A9CB1D34AE03563A72C7522AE29C
            B1D525602311D3D63A2F2EA1D36DDA6B99A3B78D7EF3C8EAABFF008F553F09FE
            D3BE13F863E244BEBAF0BE97F10161FBBA7EA32DD41A7B1FF6FC996291D7FD9D
            DB697301BFE0FF0005EADF103C450E8FA0E95AA6B9ABDC1DB15969D672DE5CC8
            DFECC512B37FE3B5F657ECF9FF0006F3FED51F1FD21BA6F87F1F8174D95866EF
            C5B7E9A732AFAFD9D77CFF00F7D46B5DA7FC13DBFE0A79FB777C6FB14D27F65F
            FD9A7E13F877C3B232C26F740F02B69BA5AF6FDF5F5C5C2C4EDFC5F33B357EAD
            7ECCFF00037FE0A07E32B3B7BFF8BBF1C7E0EF82164F9E5D33C31E085D5AE8AF
            F71AE2678A246F755956A40F91FE08FF00C1A1ACC90CFF00123E3349BF3FBDB2
            F0BE8AAABFF01B8BA66FFD155F587C25FF0083667F653F86C15B53F0BF893C71
            328FBFAFF882E1949FFAE56FE4C7FF008ED7D81AF7C4AF0FFECCBF0CE3D43E25
            7C45D1ECAD2D5489B5CF11DD596930C8D8C9FF009E51AFD057C4BFB487FC1D3F
            FB1EFECFCF3DB5978DF56F88DA95B839B6F0969325D26EED8B89BCA81BEAB235
            007D57F0C3FE09A1FB3EFC188517C33F05FE19E97247F7661E1EB6967FFBFAE8
            CFFF008F57B1E89E1EB1F0ED88B7D3ECED74FB75FBB15BC4B122FE0A057E087C
            72FF0083DD70F25BFC35F81395E7CABEF1378879F6CDBDBC5FFB5EBE51F8A9FF
            00077F7ED77E3E9653A2DC7C38F03C6CDF20D2BC3BF68741FEF5DC93E7FEF9A0
            0FEAAB72AF1BBF5A4DA8BFC1FF008ED7F1A9E3CFF8383BF6CBF88CEE750FDA03
            C6D6FE676D2FECFA56DFA7D9638EBC7FC5BFF0525FDA1FC753C8DAD7C77F8C5A
            A799F785C78CB51917FEF9F3B1401FDC6061FDD6FCAAADDEB767A77FC7C5E5AC
            3FF5D2555FE66BF83ED77E3BF8DBC4EECDA9F8C3C51A8B375373AB5C4BBBFEFA
            7AE6EF756BABF7FF0048BAB898FF00D3494B7F3A00FEF4AE3E297866CFFD7788
            3438FF00DFBF857FF66AAC7E36F83C363FE12AF0DE7D3FB52DFF00F8BAFE0B37
            53B77FBBF95007F7AF07C5AF0BDC711788B4197FDCD4616FFD9EB46CFC5BA5DF
            0FF47D434F9FFEB9DC237F5AFE057754B6F7725ABEE8E49236FF0065B6D007F7
            E6AEAC9B97E61EDCD202ADFC1FF8E57F04DA4FC45F11E92EBF61D735AB62BD3C
            8BD953FF00416AED3C3FFB53FC64D00AFF0063FC44F899A7EDE9F63D7EFE2FFD
            064A00FEE9D555465571F8527989FDFF00D6BF897F0AFF00C14A7F6B0F08BEED
            2FE397C7A817D17C57AA3AFE4D295AF49F0AFF00C1707F6E3F0963EC7F1B3E28
            CFB7FE7F552FBFF47C4F401FD8FB46AE855BE756EC7E6AE67C51F047C1DE3552
            BAC7853C33AA06EA2F34BB79C37FDF686BF957F06FFC1CBBFB7AF85446971E3C
            FEDA8D7F8751F06E9AFBBFE0496E8DFF008F57AB7823FE0EE6FDB1FC2D227F6A
            7827E18F88635FBC6EBC3779048DFF000286E517FF001DA00FE823C69FF04CCF
            D9DFE20465756F81FF000A2ECB7DE73E16B3491BFE0488AD5E57E29FF82037EC
            87E2DDFE77C13F0F5A48FF00C7A75E5ED86DFA795328AFCADF037FC1E83F15B4
            B65FF849FF00671D0754FEF9D2F59BCD3FF259619EBDABC09FF07A47802F4AFF
            00C255F00BE276863F8FFB2EFED752DBFF007F56DE803E93F19FFC1AD7FB2AF8
            A25736361F103C3BBBA7F67F89E59157F0B8596BC83C6FFF0006837C2FD4DD9B
            C3BF173E2368FF00DD5BFB2B0D4157FEF9489BFF001EAEF3C09FF0770FEC8FE2
            D0BFDAD71F13BC1FB87CDFDADE1579157FF015E7AF72F86DFF000705FEC6BF14
            8C7FD9BF1FFC1366CC3A6B0D71A3EDFAFDAA2885007E75FC40FF00833EBC6562
            5DBC2BF1BBC33A8AFF00026ADE1CB8B3FCDA29A5FF00D06BC4BE237FC1AB1FB5
            1783D9BFB264F869E2C45FBBF60D7E4B591BFE03710A2FFE3D5FD04FC34FDAEF
            E157C6809FF087FC4CF87FE2CF33EEFF0063F886CEFB77FDFA91ABD0C480FF00
            0B7E5401FC9F7C48FF008214FED6DF0BE4717FF03FC55A9247FF002D34696D75
            556FF756DE666FFC76BC03E23FECCFF11BE0ECCF1F8B7E1FF8EBC30D1FDEFED5
            D02F2D557FE04F12AFFE3D5FDA0FC927F74D364844CA55BE6561820F2A6803F8
            845923924644923775FBC81D59A892365FE1DAD5FD93FC55FD85FE0CFC728A65
            F187C2AF879E2469BEF4BA8787ED6697FEFBD9BBFF001EAF987E2F7FC1B5DFB2
            3FC538D8DBFC3DBEF06DD49D67F0DEB97567B7E913BBC3FF008E5007F2E2D1FF
            00DF54D68FE6F9ABF77BE387FC19EBE1DBE5B89BE1C7C66D7B4C7FBD059F8974
            88B508FE866B768197FEF86AF8E3E3A7FC1AF7FB54FC2669E5D0F47F08FC46B3
            846FDDA0EB4914ECBFF5C6ED616DDFECAB35007E7232E6A365FF00BE6BD47E38
            7EC6DF163F66BB878FC7FF000D3C75E0F55FF96BAA6893C56CDFEECDB7CA6FF8
            0B579946CB2AEF8D9648FD51B72D0040D163FDA5A89A3DBFEED5A65CD46CB8A0
            0AECB9A632EDA9DA2FEED46CB9A00AECB51B2E6AC32FFDF35191B6802B32EEA6
            32D5865FFBE6A265D9401032E6A265DD56596A365CD005565CD4720AB2CBBAA2
            65CD0040CBBAA265CD5865A8D9714015DD37546CB8A9D976D44CB8A0081976D4
            4CB8AB4CB8A8A45CD0040CB8A89976D5865DB5132D005765C54646DAB0CB9A89
            97750040CB9A8997754EC377FBD51B2D005765CD46CB5619715148B9A008A8A0
            8DB450014514500145145001451450014514500145145004D65FF1F917FBEB45
            165FF1F917FBEB4500326FF58DF5A653E6FF0058DF5A65001451450014514500
            1451450014514500145145003956A455C5246B9F9AA58FEEEEA0072AE6A551F3
            531136D488BFC3400E8D6A655A62AEDA9557E6A00728DBFEF54AABB6991AD491
            AF3BA802455FE1A915698ABBAA555CD0039573522AE29AAB522AE2801CAB532A
            D3153E6A95571400E55C548AB9A6C6B522AE6801CAB522AE29157654AAB9A005
            55DB52AAE29AAB522AE2801CAB522AE691576D4AAB8A600ABBBFDDA915680375
            48AB9A400AB9A915714AABBA9F12FF0015000ABFDEA9163A1571F337DEA95577
            530055DD4F58BFBD42AEDFF7AA455F9BFDAA400B1F1F3549E5FF007A95573FEF
            54AB1D003563FF0080AD3D63FF00BE69EAB4E62B1C6CEECAAABF3312DB556AB9
            4015714E58FF00BB5C8F897E33E93A09296CCDA95C2F689B6C6BFF0003FF00E2
            6AA7C2DF05FC50FDB07E2041E13F87FE1AF1078A35ABE394D2F40B179A4DBEAF
            B3EEA74CB390AB47301D0F88FE20E8FE15DCB7374AF32FFCB08BF7927FF63FF0
            2AE4E2F8A1E20F883E21B5D1BC27A2DCDD6A5A84A21B5B7B6B76BCBCBB73F755
            22507737FB2AA6BF5C7FE09F1FF066AF8DBE20358EBFFB4578BA3F03696C5647
            F0CF87648AFB569178F926B93BA085BAFDC59FFE035FB5DFB1D7FC1353E01FFC
            136BC1D3FF00C2B5F027877C24D6F6ECD7DAEDC7EFF529A25197335ECC5A4D9D
            5B6EE58D7FBA2A40FE797F621FF83543F698FDB12E6CF5CF89525BFC1DF0CDC6
            1DA5F10AB5CEB4E8DFF3CEC10EE4FE2F96778BFDDAFD8EFD8A3FE0DA1FD953F6
            1DB08759D5BC30BF13BC49A7AFDA25D6BC6CE9756D6C57E6674B4C0B68D57EF6
            E74765C7DFAF30FF0082947FC1D91F04BF6499B50F0DFC27857E3478DADC989A
            E2CAE7C8F0F5949D3E7BB009B8DBF7B6C0ACADD3CD5AFC17FDBE3FE0B45FB437
            FC147751BA8FE2178F2FA1F0CCCFBA2F0BE8C4E9FA2C2BD94C287F7DB7FBD3B3
            B7FB5401FD167EDB3FF0732FECABFB0AD84DE1FF000FEBC7E28788B4B5FB3C5A
            37829229EC6D4AFCAA8F77F2DB22AF4C44D232EDFB95F8FF00FB687FC1DD3FB4
            9FED0CD79A77C3B4D0FE0C787E72553FB2E21A86ACC9E8F773AED53FED45146D
            EF5F94BBA8A00EBBE2DFC70F1A7C7EF164BAF78E7C59E24F196B93677DF6B5A9
            4B7D70D9FF006E5666FC2B9266CD255AD3749BAD5AE4436B6D35D48DFC112176
            FD2802AD15DFE81FB3D6BDAB6D6B98EDF4D8DBFE7BBE5FFEF95FEB5D9E87FB33
            E936986BEBABCBD6FE2098863FEA7F5A00F0DAD2D2BC2BA96BC47D8EC6F2E777
            78E2665FCEBE8FD17E1B687E1F0AD6BA559C6CBFC6E9E649F9B6EADB58F6A6DD
            DF2FA0AAE503E79D37E01789350FBF6715A0CF59E651FA2E5AB734FF00D982F1
            F6B5D6A96B17A88A26931FF7D6DAF6AF2FFDEA3CAF6A3940F31B1FD99749876F
            DA2FF50B86FF0063646BFF00B356B5AFC02F0CDAEDDD657131FF00A6972DFF00
            B2EDAEE3CAF6A3CAF6A7CA80E66DBE167876D3EEE8D63FF034F33FF42ABF6FE1
            5D36C7FD4E9FA7C7F4B745FE95AFE5FF00BD4EF24B8F5FF80D09580A2B6A917D
            C48D17FD8555A732B2FF00137FDF5561A06DBF73FF001DA6B2AAFDE6DBFF0002
            A60576567FE26FC698D1D4D25C42BF7A687F175A89AFAD57EF5CDBAFFDB55FFE
            2A937601AF1D46F0EDA736A56A3FE5EAD7FEFF00A7FF00155A1E0BF0FDC7C46F
            19693E1ED11E1BCD6BC417B0E9B616E928669AE2795628976FFBEEB500664D6A
            F0E37A326E5DEB95FBC3FBDFEED31B701F79BFEFAAFAD7FE0B55F02B49FD95FF
            006E993E1E69B25BAD8F847C1FE1CD36260CB1F9C62D3511E52BFDE79159DBFD
            A7AF9337C6DF7648DBE8EB40111DD8FBCD504D6EB32ED74575F47556AB9B55BE
            EED6FA535E166FE16FFBE68031A6F09697336E6D2F4DDDF7B70B5456FF00BEB6
            D779F0D3F687F88DF046546F05FC46F889E1368FEE0D1FC517F668BFF0049B67
            FE3B5CCB42DFDD6FFBE6A268E803EB4F85DFF05E7FDAE3E122A259FC68D6B5CB
            75FF00963E21D3ECB5556FABBC3E6FFE44AFA63E12FF00C1DAFF001C3C2A2DE3
            F187C3FF00871E2E863FF592D9FDAB47B893FE05BE78FF00F1CAFCAF65A632ED
            AADC0FDF9F839FF0772FC21F1332C7E38F86FE3FF07CADC1974F7B7D6ADD7FEF
            968A5C7FDB3AFAF3E067FC170FF657FDA025B78346F8CBE15D3B50B85F96CF5E
            91F459F3FDDC5D2A2B37FBACD5FCA3B2D7BA7ECB3E05FD9B7E20496F61F177C7
            9F16BC017133AAC97BA5F87ECB55D2957FBCDB5BED29FF007E9E935603FAE4F0
            F789B4FF0016E950EA1A5DF59EA563703315C5ACCB3C320F674255AB43E59076
            6AFC81FD80BFE086FF0002FC47A643E2CF817FB5CFC5DBEB75DAD25CF82BC456
            5A7984FA4D0C51651BFD9953FE035FA7FF0001FE0CEB1F06BC33FD9BAA7C45F1
            BFC425550B15D78945835D47FF0003B5B6837FFC0F75203B9B9B28EF2D9A1951
            648A45DAD1B2EE561EE2BE75F8FDFF000489FD9A7F699F324F187C19F035E5F4
            9BB75FD9582E977CCC7B99ED7CA919BEAD5F4951401F929F1E3FE0D14F823E36
            125C7807C75E3DF005DC99221B978B5CB15FF80CA125DBFF006D6BE24F8F9FF0
            6987ED11F0E3CEB8F04EBDE01F8916AAC7CB8A3BC7D1EF997FEB95C2B45BBFED
            BD7F48D45007F1BBF1FF00FE09B1F1FBF65E1349E3CF83FE3EF0FD9C2595EFBF
            B29EEEC7FF00022DF7C5FF008F5785AB2C8CDB195D97EF00DB996BFB94F2C638
            E3E95E1BFB42FF00C1353E01FED4A92B78FBE11780FC457531DCD7B2E931C37D
            F85CC5B261FF007DD007F1B8CBB6A265DBF4AFE913E3FF00FC1A45FB3DFC4649
            AE3C0FE21F1F7C36BE909648A1BD4D62C23FFB65743CDFFBE6615F0D7ED07FF0
            68B7C7BF87C27B8F00F8C3C03F116CE36FDD5BCEF2E87A8483E92EF87FF22AD0
            07E4E11B6A323657D01FB437FC12E7F688FD963ED0FE3AF837E3ED1EC6DDB6BE
            A1069ADA869FFF008116BE6C5FF7D32D780EF592474565678FE560ADF32FFBDF
            DDA6040CBBAA265CD5861FC351B2E29015D96A365C54ECB8FF007AA265C50040
            CBB698CB5348B51CAB814015E55FE2A8D97353B2EEA899734010B2E2A365A999
            6A365C50042CBFC35132EEA99976D4522E6802165DD51B2D4D2265AA365F9A80
            21917F8AA291735332EEA89D7F86802165C542CB9AB0E9BAA365C5005765A6D4
            B22E6A2236D0014514500145145001451450014514500145145004D65FF1F917
            FBEB45165FF1F917FBEB4500326FF58DF5A653E6FF0058DF5A65001451450014
            514500145145001451450014E8E9B522AFCD400E55C54AA9F353235A923FBBBA
            802455F9AA68D7151AFCAB532AFF000D003A3152A2ED14CA91572D40122AFF00
            0D48AB8A645FD2A54EB400E55CB5491AE29A89B6A451FC34012275A91532B4D5
            5A9235C35003947F0D48AB8A48D7152C6B8A00555DB52C6B86A6AAE56A455C50
            03956A48D79DD48ABB6A555F9A801557654AABFF007D53635A9235C5301CAB52
            22FF000D22AEEA95573480555DF52AAE29AA3F86A445FE1A0072AD4817F8A915
            77D4A06FA603957F8A9CA36D006EA902FF0015000ABB5BFDAA95576FFBD42AEE
            A65EEA36FA45B19EEA78E08FFBD236DA00B11AE28BABC874DB769AE248EDE15F
            BCF236D55AE07C49F1D628B743A4C3E71FF9EF3AED5FC17FF8AADEFD97FF0063
            0F8D7FF0512F88ABA0FC35F06788BC73A92B859A4B68F658E9C1BBCD70FB60B7
            5FF7D969DEC065F89FE39D969FBA3D3216BD97FE7ABFCB17FF0014DFF8ED5AF8
            03FB357C64FDBF7E2227863E1CF843C49E39D598AEFB6D36DBFD1ACD5BA3CD27
            CB1429FEDCACABFED57EE17FC13ABFE0CDBF0DF83858F893F692F15378A6F94A
            CC7C25E1B99EDF4E8FFD8B8BCC2CD2FBAC4B10E3EFB2D7ECF7C0CFD9DFC0FF00
            B32FC3EB5F09FC3DF09E83E0DF0ED90FDD586916496B06EEEE428F99DBF89DB2
            CDDCD481F87FFF0004ECFF008333A18858F887F695F187DA1BE597FE111F0ACD
            B63FF72E6FC8DC7FDA48147FB32D7ED67ECD5FB227C31FD8E3E1F43E17F85FE0
            8F0FF823435DA5EDF4CB511C972DFDF9A5E6499FFDB9199BFDAACBFDB1FF006E
            7F857FB047C289BC63F15FC5FA6784F475DC2D9676DF75A94AA33E55B40B9926
            93FD9453B7EF3617E6AFE757FE0ABBFF00075B7C52FDAF1B53F077C135D47E12
            FC3B9B7C526A31CE17C49AC44DFDF990E2D10FF7203BFD656CEDA00FD92FF82A
            57FC1C2BF02BFE099706A1A0DD6A87C7FF0013ADC158FC29A14E8D25AB8C7179
            71CC76A3FD93BA5F48FBD7F393FF00052AFF0082E77C7CFF00829DEA97567E2D
            F1237877C06F26EB7F07E82EF6FA5AA8276B4FCF9972FD3E69599777DD54E95F
            1CDDDE497B7124D348F34D3333BBBB6E6627A927B9AAF400753451450015D578
            37E126B5E325492DED7C9B563FF1F171FBB43F4EEDFF0001AA3E1AF155BF85CF
            9C9A4D9DEDE29E24BB669113E8830BFF007D6EADAD47E3DF89AFC656FA3B55FE
            EC10A2FF00F5E803D0BC29FB38693A66D7BE69B54997F87FD5C3FF007CAFCCDF
            F7D57716D6BA7F866CFCB8D6C74F857F806D896BE68D43C79AD6AB9FB4EADA84
            BECD70DB7F2AC9795A66CB9666F5269A7603E9EBCF893E1DD3C3799ACE9AACBD
            967591BFF1DDD59575F1FBC2B6A4FF00C4C2698FFD32B776FF00D0B6D7CE7452
            03DE6EBF69DD021F963B5D52E3FE0091AFFE8559D79FB555B8FF008F7D1646FF
            00AE97417FF415AF17A2803D5AF7F6A8D41CFEE749B18FFDF7793FC2B3EE3F69
            AF1148DF247A645FEEC04FFE84D5E73453BB03B8B8FDA17C5371F76FE287FDCB
            74FF00E26A8CBF1ABC55727E6D6AE97FDD0ABFC8572B452037A6F89FE22B9FF5
            9AD6A6DF4B865AA72F8BF56B8FF59AA6A4FF005B976FEB59B45005A9B56BA9BE
            F5D5C37FBD2B1AAED33C9F7999BEA69B45001451450015FA65FF0006A6FEC787
            F69AFF0082ACE83E23BFB5FB4787FE10D84DE2BB82EBFBB6BB5C416499FEF09E
            4F357FEBD9ABF336BFA82FF833AFF641FF00852FFF0004F4D7BE285FDAF97AAF
            C5ED71E5B690A6D2DA6586FB787F39DAF4FF00BACB401F94BFF0763386FF0082
            CFF8E157EF47A1E88ADFF801157E6BD7E837FC1D19E285F127FC16EFE30AC6DB
            934E4D1ECBFE049A459EEFFC799ABE13D0BC07AD788F1F62D32F274FEFF97B53
            FEFA3F2D0063ACCF1FDD665FA1A9E3D52E623F25CCEBF490D77FA1FECD7AB5E0
            0D7D756B629FDD5FDF49FF008EFCBFF8F5765A27ECFF00A0E9586992E350917F
            E7ABED5FC96803C66C359D62EA658ED2F3529243D12295D9BF4AED3C3DE10F1C
            6A03736A179631E7EF5CDD36EFFBE796AF5AB1D26CF438D2DED6DEDED55BE558
            E3558D9BFF008AAF6EF81FFF0004E2F8F5FB49792FE09F845E3CD6ED666DA97A
            74B7B3B3FF00C08B8D917FE3D401F39E81E17BDD3369BED6B50BF75FE0388D3F
            F8AFFC7AB599715FA71F047FE0D5BFDA1BE2108E6F176B1E01F87B6ECCBBE39E
            F5F55BC51FEE5BAF95FF00916BEC2F829FF0694FC25F0B849BC7DF113C75E329
            976B1834E48345B563E9F28965DBFF006D05007E00C8BE5C7B9BE45F53F76B7B
            E1CFC1FF0016FC66D512C7C1FE17F1278B6F246DAB168DA5CFA837FE4246AFEA
            7BE09FFC114FF65DF804D0CDA1FC19F07DE5F423E5BCD6E07D6A7DDFDEDD7464
            DA7FDDC57D31E1EF0C69FE12D2E3B1D2EC6CF4DB1B7E23B7B585608A3FA22002
            9A7603F98DFD93FF00E08A5FB6CAF8CAC7C51E07F04F8A3E17EAB6ACAD16B3A8
            6B91681730FD555FCF65FF00659197FD9AFDE6FF008275F827F6A2F007829B4D
            FDA2BC55F0D3C633430AFD8F51D020B88F520C3036DCBEC8A097E5FE348D0FAE
            EAFA6D36FCDB76FE14C96E92DE36776D88BD4B70052026A2B8BF13FED0FE02F0
            5961AC78DBC23A595EBF6CD66DA0DBFF007DB8AE3757FF00828A7C01D033F6DF
            8DDF08ED8AF67F175867FF0046D007B3515F3FCBFF000556FD9A61387F8F5F08
            57FEE6BB3FFE2EA6D2FF00E0A8FF00B35EB570B15B7C7EF833248DD17FE132B0
            563F8196803DEA8AE6FC01F173C2BF156C7ED3E18F13681E24B651932E97A8C5
            791FE71B3574940051451400DF2C7FBBF4AF0EFDA1BFE09B3F017F6B1824FF00
            8587F08FC09E26B998EE6BCB8D2628AFBF0B98B6CCBFF7DD7B9D1401F941FB43
            7FC1A2DFB3CFC4B135C780FC45E3EF8677D2365228AF1758D3E3FF00B65743CD
            DBFEECEB5F097ED17FF06897ED05F0E3CEB9F0078A3C03F132CD58AC56ED33E8
            7A848BFEE4DBE0FF00C8EB5FD2651401FC617ED15FF04D5F8FDFB28BCCFF0010
            3E0FF8FBC3B670B3037E74B7BAD3FF00F026DF7C5FF8FD7852B2CDBB63AC9B7E
            F6C6DDB5ABFBAF6855936E3E5F4AF9EBF691FF0082517ECE7FB59F9B278F7E0E
            78175ABE9725B508F4E5B1D40B7AFDA6DF64BFF8F5007F1A4CBBAA275FE1AFE8
            E7F68FFF00833BFE09F8EDA6B8F86BE3CF1D7C3CBC937325B5F345AF69EA7F84
            6D9764E17FEDAB57C09FB47FFC1A6BFB507C2049AEBC1EDE09F8A9611EE651A5
            6A5FD9D7CCBFED5BDDEC8F77FB2B2B5007E5EB2D46CB8AF4EF8FFF00B1E7C56F
            D962FDADFE24FC37F1B782195B024D63489ADEDA4FF766DBE53FFC05DABCCBFD
            62ABA32BA37F18F996802165DB5148B9AB0CB50B0FE1A0085970D51B2E6A661B
            D2A397A50042CBFC3513AEE1534BFD2A265C3500432FDDA8E45CD4CCB9A8D97F
            86802061F3542C9F35587FBB5049FDEA008597351B2D58917350B2FCD4011D14
            51400514514005145140051451400514514013597FC7E45FEFAD14597FC7E45F
            EFAD1400C9BFD637D6994F9BFD637D6994005145140051451400514514005145
            1400E8E9F19F9775313A5489D2802454CAD4CAB8A847DFAB09D6801C3AD491AE
            1A9B1D4917DDA00913AD48BF70D468BFC352A7DDA007AAFCBB6A44E94D5FBD53
            47400E5196A9635C54517DCA997E55A00923A917E54A8E25DCD536DF2FE67F91
            7FDAF96801CAB8A95576D410DEDBB49B56E2DD9BD04ABBABA4F0CFC35F1278C2
            455D1FC37E22D599BEE8B0D26E2E777FDF08D4018EAB8A9235AF63F06FFC1397
            F682F1FAA1D17E05FC60D495BEEBC5E0FBF556FF0081344AB5E99E12FF008219
            7ED79E3060B69FB3FF00C40B70DDEFD2DEC7FF00474C9401F2A45F72A554CAD7
            DE9E1AFF0083663F6CCD7E38DA4F85FA4E948DDF50F15E9B1EDFF80A4AED5E8F
            E13FF834C7F6A9D79D7EDF75F09F4456FBDF68F11CF3B2FF00DFAB66A00FCCB5
            5FE1A92BF5D3C3BFF06747C6CB861FDABF163E15D82B75FB25AEA178C3FEFA48
            ABD13C2BFF000667EB131075BFDA074FB7FEF0B0F06BC9FABDDAD007E25C6BB9
            B75491AF3BABF7BBC3FF00F066C781AD997FB57E3A78DAF17F8BEC7A0D95AEEF
            FBECCB5E81E1AFF8341FF67BD3D47F69F8EBE306A8CBD765FD85B2B7FDF36868
            03F9D68FE45DD52AAB6DFF006ABFA5AD07FE0D4CFD9474723ED167F12356DBFF
            003F5E2B95377FDFA44AEF3C3BFF0006D77EC73A0E3CCF85B75A932F7BEF136A
            92EEFF00C981401FCB7AC2DFC2ADFF007CD3FCBF2FE56F97FDEAFEAFB45FF820
            9FEC83A132987E03F8324DBFF3F4D7375FFA3656AECFC3FF00F048BFD987C304
            7D8FE017C25565EF27866D66FF00D0D5A803F90DFB542ADF34D0AFD5D6A56BA8
            63B57B86923F263566660DB976AFDEFBB5FD8F697FB03FC0DD0D156C7E0DFC29
            B3DBD3CAF09582E3FF002157C15FF0599FF8376F4FFDB5F50B0F19FC1A5F07F8
            1FC5F6764D61A968F2592D8E99E208BEF23EF813F753AFCC9BD9196456556DBB
            15A803F99BF12FC6F51BA3D2A2DDFF004DE65FE4BFFC55775FB21FFC13B3E3C7
            FC1487C68B63F0CFC0DE22F176D93CAB9D51D3C8D2AC3FEBADDC98853D76EEDC
            DD94D7BAFC5DFF0083697F6CAF85BAE490C7F06B54F1059EEDD1DD68DAA58DF2
            B0FF007526DDFF008E8AFB83FE0969E3BFF82A57FC13F7C35A5F816CBE01EBDE
            3FF877A67EEACF40F139B7B36D322DCCC56DAF3CE46897E6FBB27991AFF0AAD0
            07B47FC13A3FE0CE1F03FC35161E22FDA2BC4ADE3ED6136C87C31A14B259E8B0
            B71F2CD71F2CF71FF00F207FBD5FB21F07FE0A7843E00F80ECBC2BE07F0CE89E
            11F0E69AA05BE9BA45947676B0FF00B5B2301771C7CC7AB77AE1BF649F8E1F14
            3E32F859EEBE26FC15D53E0EEAAA8AC2CEE3C4DA76B71CADE8925ABEEFFBED56
            BD8E466543B57737A668022BBBD8EC6DA49A6912286152EECE76AA01D493E95F
            8FDFF0571FF83AF7E1F7ECB726ADE05F80ABA67C50F1F43BEDE7D74C9E678774
            67FF0065D0E6F6453FC31B2C5EAED865AE97FE0ABBFF0004E1FDBDBFE0A7971A
            8785ECBE24FC19F85BF09262C83C35A66B3AA3DC6AD1FF000B6A170B64A66FFA
            E4BB625F97E5765DD5F02DB7FC193FF1F98FEFBE2A7C1D5FF724D49FFF006D85
            007E567ED47FB5C7C46FDB47E2BDF78DBE27F8BF56F187892F89FF0048BD93F7
            76E9FF003CA1897090C4BD923555F6AF34AFDACB4FF83263E3413FBEF8C1F0B9
            7FDCB5D424FF00DA4B5A16BFF06487C523FEBBE367C3F4FF007348BD7FFE2680
            3F10E8AFDCDB7FF8321FC7CE7F7DF1EBC1F1FF00BBE1CBA6FF00DAAB57EDFF00
            E0C7DF164A7F7BFB4378753FDDF084EDFF00B722803F08E8AFDE887FE0C76D68
            9FDE7ED1FA5A7FB9E0795BFF006FAB420FF831CA6FF96DFB49C7FF0000F019FF
            00E4EA00FC07A2BFA0AB7FF831C74F1FEBBF692BC3FEE78157FF0093AAF41FF0
            63C78740FDEFED19AE37FB9E0C897FF6F0D007F3CF457F44D6FF00F0641F8317
            FD77ED01E286FF0073C296EBFF00B70D572D7FE0C8BF87607EF7E3A78D9BFDCD
            02D17FF6A1A00FE7368AFE906D3FE0C93F8503FD77C68F888DFEEE9762BFE357
            ED7FE0C99F82ABFEBBE2F7C546FF0076DF4F5FFDA46803F9AFA2BFA5CB6FF832
            7BE010FF005DF153E313FF00BAFA6AFF00EDB355EB7FF83297F6718FFD6FC49F
            8D927B0BED2D7FF6CE803F995A2BFA7FB4FF00832DFF0065F83FD678DBE374DF
            F717D357FF006C6B4AD3FE0CCFFD94204F9FC43F1AA6FF007B5FB25FE565401F
            CB7515FD5258FF00C19DDFB23DA0F9A6F8B175FF005D7C4912FF00E836CB5B16
            5FF068A7EC756B8F3743F1F5D7FD75F14CBFFB2A2D007F287457F5A9A7FF00C1
            A75FB18D87FCC8FE24B8FF00AEBE28BC6FFD9ABA0D33FE0D79FD8CF4BDBB3E19
            DE3EDFF9E9AF5E37FECF401FC85D5AB5D2AEAFCFEE6DAE26FF007232D5FD8669
            5FF06E3FEC83A505F2FE1631DBFDED7AFF00FA4D5BD63FF0405FD92EC547FC5A
            5B793FEBA6BBA937FEDC5007F1D563F0C7C45A97FA9D0F566FF6BECAE17F956D
            E9BFB3B78BB503F3697F655EB99A545FEB9AFEC2ADFF00E0851FB27DB8FF0092
            31E1F7FF00AEB7B7B2FF00E853568D87FC114FF655D387EEFE077819BFEBADB3
            CBFF00A139A00FE453C05FB167883C73E27D2F4786F2D5B52D62F21B0B4B7B74
            799A69A5758D17F87EF330AFEB13E307ED49F08FFE0861FB067813C27AE5F437
            571E15F0F5AE87E1FD02DA544D43C453C10AA3C8AADF7119F73CB337CABBCFDE
            62AADEA5E01FF82627ECF3F0BFC4DA6EB5E1FF00837F0EF49D6348B84BCB2BD8
            3458BED1693236E4911C8DCACADC86AF48D7BE00F813C59E2F6F116A9E0DF09E
            A9E2031AC4DA9DDE916F3DE145FBA9E6BA17DABD973401FCA3FC66FF0084D3FE
            0A07FB51F8C3E265BF802FB5DF1578E35237F711683A1DC5F470FCAB1A448551
            DB6A4688BB99BE6DBBBF8ABD7BE12FFC10DBF6A8F8CCC8D63F08F5CD12DDBFE5
            BF886E20D22355FF007257F37FF1CAFE9E6E2F34BF06E8DBE696CF4BB0B75EB2
            3A5BC51FF2515E37F153FE0A6FFB3D7C1547FF008493E327C39B1997EF409ADC
            17138FFB65133BFF00E3B401F929F063FE0D39F895E246826F1F7C4EF07F85ED
            E45DD25BE8D653EAD72BEDBDFC88F77FDF55F5EFC11FF835D3F675F873E44FE2
            ABAF1BFC43BC8F991350D53EC16721FF00AE56AA8DFF007D48D5D0FC54FF0083
            987F65FF0087B2489A4EADE30F1B491FDDFEC5F0FCB1C6C7FDFBA302D7CC5F17
            7FE0EDC529243E03F82F3799FF002CEEBC43AF2C6BFF000286DD1BFF0046D3D5
            81FA7FF02BF601F827FB34431FFC20BF0B7C0DE199A1E9756DA4C4D77FF02B87
            0D2B7E2D5EC1F230FEFF00FE3D5FCDEFC60FF8397BF6A1F88ED32E8FAAF837C0
            76F271B345D044D2AAFF00D75BA697FF00415AF957E317EDF3F1BFE3F2C89E32
            F8B9F10B5EB793EF5B4FADCF15AFFDF989923FFC76901FD4EFC64FDB5FE10FEC
            F704CDE38F89BE05F0B343D62D475AB7867FC22DFBDBF05AF93BE337FC1CBFFB
            2BFC2E2D1697E25F1278F2E115B29E1ED0E768C9F4F3AE3C98FF001566AFE6C6
            68D2367B8658D19BEFC87E56FF0081357B97ECC3FF0004CCF8F1FB65490C9F0F
            FE1AF89356D3266DBFDAD7317F67E98BFED7DA66D91B7FC03735007E967C64FF
            0083BC642B243F0FBE0AED3BBE4BAF12EBDB7F386DD1BFF46D7CBBF153FE0E75
            FDAA7E204D33693AB7827C136F26EF9347F0F24F246BFEFDD3CFFF00A0D7D07F
            B35FFC1A4FE26D704379F173E2869DA146CAAEFA67852CCDE4E7FBC0DCDC0545
            6FA44F5F73FC1CFF00820BFEC8BFB2A69B0EA5AA78274FF11DC59B6E6D4FC71A
            8FDB978EE6294A5B2FFDFAA00FC266FF00828FFED7DFB566B5269BA5FC56F8D1
            E2ABCBA6C7D83C353DC2EEFF0067CAB045DB5E8BE04FF822A7EDB9FB5648B75A
            B7853C65656F337377E39F1435AEDDDDDA296579FF00F2157EF1EB9FF0519FD9
            3FF654D1574A1F157E0FF85ECEDFEEE9DA3EA36BFBBF6F26D777FE835E3FE3FF
            00F83963F649F03B32DA78E35DF133AF7D1FC337B2ABFD1E5445FF00C7A803E0
            AF843FF067C78E75F9239BC7FF00163C17A0AB2E5E2D0B449755957FD9F36668
            17FF001D6AFA8BE12FFC1A51FB3B783A28DFC51E21F891E31B85FBEA6FE1D32D
            9BFE016F12BFFE44AABE33FF0083B7BE03E9019743F017C58D6D97A192CECACD
            5BFEFBB92DFF008ED79A6BDFF07886830175D2FE02F882EBD1AF7C556F07E890
            3D007DCFF0CFFE0837FB24FC2B6864B1F821E11D46687FE5AEB5E76AEEC7D4FD
            A9DD7FF1DAF7EF03FECADF0CBE17AAAF867E1DF817C3EB1FDD1A6681696BB7FE
            FDA0AFC61D7BFE0F0DF16CCCDFD97F027C3B6EBFC3F6BF15CF2FFE816CB5C9EA
            3FF077EFC627DCD6BF093E19C03FE9B6A37F2FFE8256803FA068604B78C2468A
            8ABD028C0A92BF9DFBAFF83BD7E3E37FA9F86FF07E3FF7E2D4A4FF00DB95ACFB
            8FF83BB3F68CDDF2F81BE0DA2FFD83F516FF00DBBA00FE8C28AFE71FFE22EBFD
            A4236FF9133E0DB7FDC3751FFE4BAB567FF077F7ED090FCB71F0EFE0DDC7D2DF
            528FFF006E5A803FA2EA2BF9E6D3BFE0F11F8C901FF4AF847F0BEE3FBDE56A37
            F0FF0032F5D0E93FF0793F8E62DBF6FF00813E13B8F5FB3F8AAEA2FF00D0AD9A
            803F7E28AFC2DD27FE0F3B74DBF6FF00D9DF77AFD9BC6BFF00C55956FD87FC1E
            6FE156DBF6CF803E2C87D7C8F145ACBFFA1429401FB67457E35E97FF000794FC
            29988FB6FC1BF89D6BFF005CAF74F97FF42956BA4D2FFE0F15FD9F6E00FB67C3
            BF8C96BFEE58E9D37FE8377401FAE148CBBABF2B2CFF00E0EF9FD96E745F3BC3
            FF0019AD5BFDBF0F5ABFFE8376D5AD65FF00076EFEC9B71FEB1FE295B7FD74F0
            A337FE812B5007E98EA9A3DA6B7A6CD67796B0DDDADC27972C13C6248A45F465
            3C1AF92FF68DFF00820EFEC9BFB50CD7175E20F82FE16D3754B81F36A3E1E57D
            0EEB77F78B5A14566FF7D5ABC5AD7FE0EC0FD8FEE7FD67887C796FFF005D3C1F
            79FF00B2AB56841FF0752FEC6F28F9BC71E2A8BFDFF07EA5FF00C6A803C03E37
            FF00C1995F08FC4F3492F803E2C7C41F07B49F308755B5B5D6E053FDDCED825D
            BFEF3B57CB3F133FE0CCBF8E1A2BCCDE13F8ABF0BBC450C7F71752B7BDD2E693
            FEF949D7FF001EAFD2E5FF0083A6BF6326FF009A89E205FAF83F54FF00E33514
            FF00F0750FEC630E71F103C4527FB9E0FD53FF008CD007E36F89FF00E0D42FDB
            1B459316BE1BF016B63FBD65E2C8555BFEFF00A2573BFF0010B67EDAE5FF00E4
            97682ABFDE3E31D2F6FF00E8EAFDA0D4BFE0EC2FD8EEC54F97E28F1B5E7B43E0
            FBD5FF00D0D56B8FF13FFC1E13FB2AE8703FD8F47F8C1ACC8BF745BF87208837
            E32DCA5007E5BF847FE0D29FDB03C4EEAB7DA67C38F0F06EAF7FE29126DFFC07
            8A5AF70F867FF0656FC55D59E3FF0084CFE347C3ED055BE671A369579AABAFFB
            BE69B75AF63F8D3FF07AB7866CF4E9E3F877F033C45A95D483115C78935C82C6
            28FF00DA68ADD6766FF777AFFBD5F9BFFB6EFF00C1C95FB527ED916779A55D78
            E23F879E19BC0C1F46F05C4DA77988DFC325CEE6B975DBF2B2F9AAADFDDA00FA
            07F6CBFF00825E7EC23FF04A3D3EEACFE267C62F88DF1BBE26DA2FEEFC13E14B
            8B2D31B7FF00D3E3A24DF648FD77CBE66D6F951ABF2BBE2EF8CB45F881E3FBFD
            4BC3DE14D2FC17A2C8F8B3D1EC2EAE2EA3B3897EEAB4D70EF2CB27F79D9BE66F
            BAAABB56B90BED5A5BD91C966F9D8BB966DCD21F563DCD58B74F26D557FD9DD4
            00D3D6A365CD4D254522FCD401032616A397A5487EFD46C3EF5004725369CFD2
            9B400514514005145140051451400514514013597FC7E45FEFAD14597FC7E45F
            EFAD1400C9BFD637D6994F9BFD637D6994005145140051451400514514005145
            14012276A92A3A913EF5004A9F7AA54EB5145FD2A51F70D0048A995A99571517
            DD5F999557D4D7D1FF00B277FC125BF68CFDB60DB4DF0E7E1278BB58D2AE3FD5
            EAF776FF00D9DA595F5FB5DC1489BFE02CD401F3C8EB5244BB9BE55DD5FB59FB
            2E7FC1983F103C50B6D79F17BE2C7873C270B00EFA6F866CDF56BCDBFDC6B897
            CA891BFDD5916BF443F670FF00835B3F643F8011C136A7E0BD63E25EA9085617
            5E2DD525BA8F7773F6687CA83F0646A00FE557C2BE18D4BC6DAD47A7E8BA7DF6
            B5A84CDB52D74FB77BA9E46FF651159BFF001DAFABBE03FF00C108BF6B9FDA16
            3864D07E06F8CB4EB5B819175E218E2D060DBFDEFF004B747DBFEEAB57F5BDF0
            B7E077C3EFD9C7C39F63F06F84BC23E07D2D542793A4E976FA643B47AF96ABFA
            D1E25FDA47E1DF83B3FDADE3CF05E96CBF7BEDBAE5AC1B7FEFB7A00FE793E0C7
            FC19C7FB4078C5639BC65E3EF865E09B793EFC36EF75AC5D47FF0001448A3FFC
            895F567C25FF00832EFE19E8B342FE38F8D1F103C45B70CF1E8DA6DA6908DED9
            7FB4357E9BF883FE0A5FFB3AF84D58EA3F1E3E0DD9EDEA24F1969E197F0F36B8
            9D6FFE0B7BFB23E80CCB71FB447C28665ED0EBD14FFF00A06EA00F0FF863FF00
            06AFFEC73F0F7CB37FE08F1278C1E3FE2D73C517AEADFEF242F127FE3B5EEDF0
            E7FE08B5FB27FC2B746D1FF67DF858AF1F47BCD0A2D41C7FC0AE37B5723A8FFC
            1C2FFB19694CC24F8FDE0C936FFCF08AEE7FFD0216AC9BDFF83927F629B41FF2
            5C74D9BFEB9683AAC9FCADA803EA9F077ECB9F0DBE1EE3FB07E1FF0081F43DBD
            069FA0DA5B6DFF00BE2315DBC3691DBC0B1C71AC68BF7513E50BF957C1B71FF0
            735FEC5B09F97E2ECD27FB9E15D5DBFF006DAA0FF889DBF630C8FF008BA97DF5
            FF00845356FF00E47A00FBF44617FBDF9D218D47F0AD7C156DFF0007347EC5D3
            FF00CD5AB84FF7FC2DAB2FFEDB57C83FF05A0FF82F87877E2CFECFBA57FC32BF
            ED31A4F86F5AB1B89DF5ED386877F63AAEB56ECAAB12D95D4D686389E36DECCB
            B91A4DCB875DBB5803F6CF2A3F87F4AE7F5BF8B7E17F0C6EFED3F11683A76DFB
            DF69D4618B6FFDF4F5FC5C7C46FDA73E25FC64BC92EBC5DF117C7DE26B89BE67
            7D53C437975BBFE02F2B2D7132DBC778DBA68E3999BF8A45F31BFF001EA00FED
            4B53FDB47E0FE88CCB79F15BE1AD9EDFF9EFE28B28FF009CB587A8FF00C147FF
            0067BD27FE3E7E3AFC1D87FDEF1969FF00FC76BF8CB8F4EB60DF2DB5BAFD225A
            8E4D574FB1999249AC6175FE02CAAD401FD8CDFF00FC15AFF661D2C1F3BF680F
            83EBB7FBBE2BB36FE4F5897DFF0005AAFD9434E07CCFDA0BE16B7FD73D72393F
            F41CD7F20B1F8AB4B4FF0097FB35FF00B6AB522F8D34D55FF9095AFF00DFDA00
            FEB86EFF00E0BBFF00B20D80F9FE3F7809BFEB9DCCB2FF00E8286B367FF8382F
            F63BB51F3FC73F0CB7FD72B2BF97FF0041B7AFE4CBFE138D2D7FE6296FFF007D
            D49FF09E693BBE6D52DFFEFB6A00FEAE2F7FE0E2CFD8DACC7CBF19AD276FFA65
            E1FD55FF00F6DAB1EFBFE0E57FD8F6CFEEFC4AD4AE7FEB9785B546FF00DB7AFE
            5857C7DA3EEFF90A5AFF00DF469C9F103445FF0098A5AFFE3DFE1401FD435E7F
            C1CF5FB245BFFABF1778B2E3FEB9F84AFF00FF006641542E7FE0E90FD9461FB9
            AC78F26FF73C2975FF00B36DAFE6313E22688BFF00314B5FFC7BFF0089A923F8
            8DA1FDDFED4B5FFC7BFF0089A00FE9827FF83A7FF65953F7BE244DFEE7859BFF
            006696AABFFC1D59FB2FA0F974FF008A927FB9E1B897FF0042B8AFE6B57E2468
            39FF0090ADAFFDF4DFFC4D4A3E24683FF415B3FF00BE9BFF0089A00FE91DFF00
            E0EBCFD9A231F2E87F17A4FF007740B55FFD0AEEAB4DFF000762FECEA99F2FC2
            5F1824FF00B84592FF00EDDD7F38D1FC47D07FE82D67FF007DD4D1FC46D076FF
            00C862C7FEFBA00FE89E6FF83B3BE022FF00ABF02FC5C93EB6560BFF00B7754E
            5FF83B53E0AFFCB3F86FF161FEB169CBFF00B735FCF42FC44F0FFF00D0634FFF
            00BFB5347F11341FFA0D69BFF7F96803FA0697FE0ED7F84A3FD5FC2DF8A127D6
            5D3D7FF6B5547FF83B67E1AFFCB3F84BF11A4FF7AF74F5FF00DA95F8151FC40D
            07FE835A5FFE0425588FC75A237DDD634BFF00C0A4FF00E2AAA407EF2BFF00C1
            DBBE03C7EEFE0DF8E9BFDED5AC96AB4DFF00076EF8440FDD7C13F181FF007F5E
            B45FFD90D7E1547E32D1DB6AAEADA5B7FDBD27FF001553C7E2BD2A41C6A9A6FF
            00E0527FF155207EE33FFC1DBFE1D5FBBF037C48DFEFF89ADD7FF68D46DFF077
            06938F97E03EB0DFEF78B605FF00DB6AFC458FC47A6B37CBA869EDFF006F09FF
            00C55598F5AB16F9BEDD66DFF6DD3FF8AAA881FB5537FC1DBB6ADFEABE02DE7F
            C0BC609FFC8955A5FF0083B5E623F77F01D47FBFE30FFEE4AFC658F52B66FBB7
            36ACDED2AFFF00155347750B2FCB342DF475A7CA80FD8A93FE0ED1D50FFABF81
            7623FDFF0016BFFF002255797FE0EC6F1211FBBF823A18FF007FC552B7FEDB57
            E42C72237DD68DBFE04B522F27E565A39501FADB2FFC1D7DE313FEABE0BF8657
            FDFF0012DC37FEDBD5597FE0EB7F1F91FBBF83FE0F5FF7F5EBA6FF00DA55F944
            B1B30FF66A5585BFBAD472A03F53E5FF0083ABFE2591F27C27F028FAEAF76DFF
            00B2D4327FC1D51F15DBEE7C2EF876BFEFDFDEB57E5DADBB7F71BFEF9A72DBB1
            FE06FF00BE68E5407E9E37FC1D41F189BEE7C34F8663FDE9EFDBFF0067A824FF
            0083A67E363FDCF877F0AD7EAB7EDFFB5ABF33D6DDFF00BB21FA2D2FD95BFE79
            B7E2B45901FA512FFC1D2DF1D64FB9E06F84B1FF00DBBDFB7FEDCD539BFE0E87
            F8FD27DCF08FC274FF00B87DF37FEDCD7E727D9CFF00CF36FF00BE69AD0EDFE1
            A7603F44EE3FE0E7EFDA15FEEF87BE14C7FF00708BC6FF00DBBAA737FC1CE1FB
            4749F774BF85ABF4D0EE9BFF006E6BF3CE4DB1FDE755FAB54135FDB43F7EE2DD
            3EB285A5CA80FD079BFE0E64FDA524FB90FC338FE9E1F9FF00F926A95C7FC1CA
            FF00B4D499DB71F0E63FA786DBFF0066B8AFCF9BAF136956FF00EB754D353EB7
            48BFFB35675D7C4CF0DDB7FACF1068E3FEDF11BFF66A4EC80FD0B7FF008392FF
            006A02DFF214F00A7D3C323FF8F552D43FE0E3BFDAA2E86D8FC49E0DB56F58BC
            2F0FFECECD5F9DD79F1BBC2567BB7EBD62FF00F5CF7C9FFA0AD64DDFED2BE0FB
            70DB6FAEAE3FEB9DABFF00ECDB6A40FBE7C51FF05F1FDACBC511B23FC5692C15
            BFE81FA0E9D6FF00F8F792CD5E57E36FF829C7ED15F1023923D5BE37FC4E9A19
            BAC706B92D9C6DFF00018762D7C7FA87ED63A1C3B96DF4FD52E3FBA5F646BFFA
            135606A7FB5BDC499167A2DBC5E8669CC9FF00A085A607BD78B3C69ADF8EAE5A
            6D7B5AD635B99BE669351BF96F19BFEFEB35627969671B32AC70A2FDE236C6B5
            F3DEAFFB47F8A754E12F2DEC57FE9DE00BFAB65AB6BC13F0A3C41F13F65FF88A
            FB508F4F6F9D566959A59C7FB2ADD17FDAA7CC07A8378E34DBAD43ECB673FF00
            685E2F58AD3F7BE5FF00B4CDF757FE04D5A5B582AB6DDADE951E85E1CB2F09E9
            A96BA7DB476D02F64FE26FEF337F1355965DAF4809B41F0CEA1E2DD621B0D2AC
            2F352BEB86DB15BDB44D2C8DFF00015AF77F867FB1C78074102FBE347C70F07F
            C3FB655F30E85E1E46F16788E4FF0061A2B4DD6D6EDFF5D67DCBFC495F3BEA1A
            B5BE8F6EED75730DAC722E1FCD9563565FF6B77DEAE5754F8D5E18D1E3F2FF00
            B4566DBF752DA22EBFFC4D3BDC0FD3CF855FF0508FD8C7F6229A3B8F861FB38F
            8A3E29789AD57F75E23F88B7F6AB26FF00EFA42AB3A45FF008A36F7AD2F8ADFF
            00074EFED09E2C81ADFC2FE1EF86BE07B65F9626874E9F519E35FE1F9A69563F
            FC855F917AA7ED2D6310DB67A6DD4ECBDE5758D7FF001DDD583A9FED1DAA5C37
            FA2D9D8DBAFBAB3B7F3A903EFCF8B5FF00059FFDA93E323C9FDADF1B7C69670C
            DD60D1A58B478B1FDDFF0045446FFC7ABE73F1B78EB5CF891A835D788F5BD6BC
            4373236E69754BF9EFA46FF814A5ABE75BBF8D5E23BC7FF8FF00F257D228917F
            A5655DF8EB58BE1FBDD53507F6F3D80A00FA1153ECABF222C6BE8176AD56B8BD
            861FBF3429FEFBAAD7CEB36A371747F793CD27FBEE5AABD007D0D36BD611FCAF
            7F62BF5B84FF00E2AAB49E2AD2D7EF6A5A7FFE042578151401EEEDE2ED2B77FC
            84B4FF00FBFE2A3FF84B34ADDC6A5A7FFDFF005AF0CA2803DC8F88B4F6F956FA
            C5BFEDBAFF00F1549FDB166EBF2DD5AB7FDB75FF00E2ABC3A8A00F706BC864FB
            B342DF491691995BEEB2B7D0D78853918AF438A00F6965F9BEED3197E7FBAD5E
            36975247D24917E8D52AEA9771FDDB9B81F473401EB2CB51CBF72BCB46BD7CBF
            76F2EBFEFEB53C7893505FF97EBAFF00BF869DC0F4B7EB55DFA579EFFC259A97
            FCFEDC7FDF54BFF096EA5FF3F937E7480EFCF5A864AE17FE129D43FE7EA6FCE9
            ADE26BF6FF0097A9BFEFAA00EE1FAD46FD6B896F105F37FCBD4DFF007D531B55
            BA6FBD7371FF007F0D0076722E6A19A458FEF36DFAB571E6F266FBD3487EAC6A
            3762DD4E6803A8B8D5ADA2DDBA68FF000F9AB3EE3C4B1AAED8D59CFA9F96B168
            A00B773ABCD75C6EDABE8B5528A28026B287CFB955EDD4D6B3F7ACFD1DB13B0F
            6AD06FBD4010B7DC151BF5A99BAB5427EE0A0089FEF5447AD4B2FF004A89FEF5
            0046FDEA3A91BEF547400514514005145140051451400514514013597FC7E45F
            EFAD14597FC7E45FEFAD1400C9BFD637D6994F9BFD637D699400514514005145
            14005145140052A7DEA4A2801F17F5A9E3A893EF54B1D00397EE569687358DBE
            AD6EFA85BDD5DD8ABAB4D15BCEB04B22FA2BB23AAFFBDB5AB3D7EE7FC069B2DE
            F9726D55CEDF7A00FB43E00FFC1573C3FF00B223C371F0C3F667F8136BAD4217
            1E21F175BDFF008AB56575FE347B8B848226FF00AE51257AA78D7FE0EA2FDB3B
            C571B4563F103C37E198B1855D2BC2560BE58F63324ACB5F9B3FDA8F9E15693F
            B4E6F555FC2803ECBF187FC1767F6C1F1DEEFB77ED09F11A0DDFF40EBC8B4DFF
            00D27892BCAFC5BFB7EFC75F883E636BDF1ABE2D6B1E67DE5BBF186A122B7FC0
            7CEDB5E11FDAB71FF3D3F4A67F68CFFF003D1A803B7D77C6BAD78AE467D535AD
            635276FBC6EEFE69F77FDF65AB396CE166F9ADE16FFB64B5CD7F685C37FCB693
            FEFAA4FB6DC7FCF69BFEFA3401D5C16F1C7F7238D3E88AB56639197F89AB8BFB
            7CDFF3DA6FFBECD1F6DB8FF9ED37FDF46803BA591F6FDE6A72B37FB55C27F684
            FF00F3F137FDF6697FB4EE7FE7E66FFBF86803BE1F7EA68DABCF5759BC5E9757
            1FF7F0D48BE24BF8CFCB7537FDF5401E851BD4CA5B6FDEAF3C1E2DD454FF00C7
            D49F88152C5E37D4A2FF0097853F58D7FC2803D093A5483EFD70117C45D413EF
            7D9DFEB1D4F0FC4FBC43F3DBDAB7D372FF005A00EF62FEB583E2DF00AEB8D25C
            DAB2C775FC4A7EEC9FFC4B565C5F16593EFD8AB7D25FFEB55C83E2C5A81F35AD
            C0FA10D401C56A1A74FA5DD343711B4322FF0009AAF5E81A878DF40F1059F937
            91DC63F84B45F32FD0AB571BACDADADB5E916771F6AB761B83321565F6340146
            8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
            8A28A0028A28A0070661F749A725C483A3C9FF007D54745004C2FAE0749A65FF
            00819A7AEA9749F76E6E17FEDA1AAD45005B1AE5EAFDDBCBAFFBFAD4A3C437C3
            FE5F2F3FEFF3553A2802E7FC2437DFF3F979FF007FDA8FF8486FBFE7F2F3FEFF
            00B553A2802D36B578DF7AEAE9BFEDA9A6B6A370FF007AE266FAB9AAF450039A
            6793EF3337D4D368A2800A28A2800A28A2800A9ED2D65BFB98E1863926966608
            8AA32CC7D05415BBE07F1A5CF80F5692FACE1B392EBCA6446993CCF2B3FC4BCF
            DEEDF8D007B0FC26FD9F61F0DC71EA5AEA47717E3E74B7237456BFEF7F0B37FE
            3AB5D2F897E32F86FC30CEB71A9C3348BFF2CADBF7EDFF008EFCBFF8F57CF3E2
            7F88BAD78BDDBFB4352BAB88FF00E79EEDB17FDF03E5AC2A00F64F117ED52BF3
            2695A57FBB25D3FF00EC8BFF00C55713AEFC6DF12EB9B95F517B78DBF82D9444
            3F35F9BF5AE468A009AEAEE4BE99A49A492576EACE771A868A2800A28A2800A2
            8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2800A28A2800A28A2800A28A2802C696FB6F53FDAE2B51
            FAFF00C06B1ED5B65D46DE8C2B65BEF2D00407EFD31FEED4AFF7BFEF9A85FA50
            042DF729B2548DF73FE0351C94010CBF7E98FF007AA47FBD5150014514500145
            1450014514500145145004D65FF1F917FBEB45165FF1F917FBEB4500326FF58D
            F5A653E6FF0058DF5A650014514500145145001451450014514A9F7A80254EB5
            24750A75FF0080D4C9D6801DBB6C7BAAA1396AB32B6D81BFEF9AAB4005145140
            0514514005145140051451400514514005145140051451400514514005145140
            0514514005145140051451400514514005145140051451400514514005145140
            0514514005145140051451400514514005145140051451400514514005145140
            0514514005145140051451400514514005145140051451400514514005145140
            0514514005145140051451400514514005145140051451400514514005145140
            0514514005145140051451400514514005145140051451400A0E1AB6D9B76D6F
            F66B0EB6216DD6E8DFEC50034FDFA8DFA54ADF79AA37FBB401137DCFF80D4725
            3A5FB94D9280227FBD51548FD7FE034C7FBD4009451450014514500145145001
            45145004D65FF1F917FBEB45165FF1F917FBEB4500326FF58DF5A653E6FF0058
            DF5A6500145145001451450014514500145145003D7EF2D4A3AD431D4C3EF8A0
            04B96C47B7DEA0A9AE7A2D434005145140051451400514514005145140051451
            4005145140051451400514514005145140051451400514514005145140051451
            4005145140051451400514514005145140051451400514514005145140051451
            4005145140051451400514514005145140051451400514514005145140051451
            4005145140051451400514514005145140051451400514514005145140051451
            4005145140051451400514514005145140051451400514514005145140051451
            400514514005145140056A581CDA27D6B2EB4B4E3FE89FEE934012BFDDA8A5E9
            524BF72A37EB40114BFD2A23D6A57FBD511FBE680236FBD51D3A4A6D00145145
            001451450014514500145145004D65FF001F917FBEB45165FF001F917FBEB450
            0326FF0058DF5A653E6FF58DF5A6500145145001451450014514500145145003
            A3A914FCB50D4C9D6801B3F5151D3A5FBF4DA0028A28A0028A28A0028A28A002
            955775201935FD447FC1B39FF0483F02FC3CFF008270E8FE38F89FF0F7C27E28
            F167C5A9FF00E1218BFB7F44B6BF934FD331B2C624F391B67989BAE3E5FBDF68
            5CFDDA00FE5EBCA3FECFE74C2306BFB9AFF877BFC05FFA227F087FF08DD37FF8
            CD7E0BFF00C1DE3FF04BED07F679F1B7807E367C3BF0AE8FE1BF09F88D3FE119
            D7ACB48D3E2B2B3B5D4225696DA7F2E35550D3C1E6A36D03E6B55EED401F89B4
            5145001451450014515F4F7FC11A3C25A4F8E7FE0AA1F01347D734DD3F58D275
            2F1A69F6F77657D6E9736D751349F323C6E0ABAB7A32D007CC9E51FF0067F3A6
            B2EDAFEE623FF827BFC056456FF8527F087FF08DD37FF8CD7E537FC1DE5FB2D7
            C33F827FF04E1F06EA9E0DF877E03F08EA571F112CAD64BCD1B40B4D3E79223A
            76A0C519E38D599372A9DBBB1F2AFA5007F37F451450014EDBFEEFE74A9D3F03
            5FDAAFEC9DFB05FC0FD6FF00660F86F7979F06BE13DD5D5D785F4B9A79E5F086
            9EEF339B4898B333439662C49CD007F153B3DD7F3A6D7F605FF058FF00D893E0
            DF817FE0963F1F358D13E11FC31D1F56D37C13A8DC59DED8F85AC2DEE6D6558B
            87491220C8CBEAA6BF8FD3D6800A28A2801DB3DD7F3A5F28FF00B3F9D7F627FF
            0004A3FD87FE0BF8CBFE0997FB3FEADAC7C20F85DAAEABA97C3DD12E6F2F2F3C
            29613CD752BD8C2CEEEED1967766E598F2D5F427FC3BDFE02FFD113F843FF846
            E9BFFC66803F868F28FF00B3F9D1E51FF67F3AFEE5FF00E1DEFF00017FE889FC
            21FF00C2374DFF00E3347FC3BDFE02FF00D113F843FF00846E9BFF00C66803F8
            68F28FFB3F9D1E51FF0067F3AFEE5FFE1DEFF017FE889FC21FFC2374DFFE3347
            FC3BDFE02FFD113F843FF846E9BFFC66803F867D9EEBF9D36BFB22FF00829FFE
            C3BF05BC25FF0004DFF8F7AB693F083E16E9BA969BF0F35EBAB4BCB4F09D8433
            DACA9A74EC8E8EB16E4756C32B2F21857F1BB4005145140051457E9D7FC1223F
            E0D9BF8ADFF051ED1B4BF1CF8C6EA5F85BF09AFBF7B6BA8DD5AF99AA6BB175DD
            676ED8C44DDA79709F365165A00FCC50335ABA0783756F14BB0D334BD435065E
            BF66B579FF00F4106BFB11FD8FFF00E0DF3FD947F635D32D5B45F857A2F8AF5B
            B75F9B5AF17C6BAE5F48FF00DF0265F2226FFAE51257D89A0F8734FF000AE9CB
            67A5D85A69B6B18C2416B0AC31AFD15401401FC156BFE0CD63C2D22FF69E93A8
            E9FBBA7DA6D5E1CFFDF40565118AFEFAB5EF0E69FE28D39ACF52B1B5D42D6418
            786E6159A36FAAB022BE3CFDB03FE0DF8FD947F6CAD36E9B5AF853A1F85F5BB8
            5F975AF08C4BA1DF46FF00DF2215F2656FFAEB13D007F1B1457E9FFF00C15DFF
            00E0D91F8A9FF04E7D1354F1DF826EA6F8A9F0A2C732DD5FDB5B797AB68317F7
            AEEDD73BA25EF3C595F9599D6215F9814005145140051451400E0B93FF00D7A5
            F28FFB3F9D7F49DFF06907ECA9F0C7E34FFC130FC41AB78C3E1CF80FC59AA47F
            10751B44BDD6B40B3BFB85896CB4F6081E58D9B68662719C7CCD5FA90DFF0004
            FAF8083FE688FC23FC3C17A77FF19A00FE1A7CA3FECFE747947FD9FCEBFB96FF
            00877E7C04FF00A223F08FFF0008AD3FFF008CD35FFE09F1F00650CAFF0003FE
            11BAB7507C15A7E3FF0044D007F0D3B0D257F68DF17FFE0863FB227C70B59A2D
            6FE00FC37B569D4EE9746D37FB167FA87B331357E70FEDE3FF0006627847C47A
            4DE6B5FB3CF8E750F0E6ACA19E3F0E78A9FED9A7CE7FB91DDA2F9B0FFC0D65FA
            AD007F3AF457A87ED57FB227C47FD887E2FEA1E05F89FE14D4BC25E24B1EB0DD
            26E8AEA2ED3432AE639A26ECF1B32F1EA2BCBE800A28A2800A28A2801FE51FF6
            7F3A3CA3FECFE75FDC1F82BFE09FFF00022EBC1FA5492FC15F848EF259C2CC5B
            C1BA6E58EC5FFA635A9FF0EFBF806BFF003447E11FFE117A77FF0019A00FE1A3
            CA3FECFE74CAFEE67FE1DF9F013FE888FC23FF00C22B4FFF00E33585E32FF825
            8FECCFF10F4E6B5D63F67FF83B748DFC7FF087584522FF00BAE912B0FF0080B5
            007F107D0D15FD547ED93FF068FF00ECC5FB41E8F7571F0F6DF5CF837E249033
            433E937526A1A633E3FE5ADA5C3B7CBED149157F3F7FF0538FF824D7C5CFF825
            67C558741F88DA5C371A2EACCEDA1F8934EDD2E97AD22F5D8E554C72A8C6F89F
            0EBD7E65656600F96E8A28A0028A28A00555DD4A5707FF00AF5FAFDFF06787C1
            1F06FC6FFDB1FE29D878D3C25E16F1758D9F82D2E60B7D6F4A83508A197EDF02
            EF45991955B6965C8AFBFBFE0E9AFD92FE167C1EFF00824DEB9AD784BE19FC3E
            F0C6B11F89348885FE93E1CB4B1B854699B728962895B6B775DD401FCC0D1451
            4005382E4FFF005E9B5FBA5FF06847C40F851F1D22F881F037E237C3EF877E28
            F1069FFF00154F872FB59F0FD95E5DCD6A7643796FE6CB1162B1BF9322AEE3FE
            B65FE15A00FC2E65DB495FD3F7FC1CE9FF000488F0378E7FE09CBA87C40F863F
            0FBC27E17F157C23B9FEDEB81A0E896FA7BEA1A532F977A8FE4A2EFF0029765C
            65BEEAC1263EF57F3034005145140051457BEFFC132FF62CD4BFE0A0BFB71FC3
            CF85162264B7F136A69FDAB7310E6CB4D8BF7B77367F859604936E7AB145FE2A
            00F04DBFEEFE74DAFED6BE3A7ECBFF00B317EC8BFB3978A3C73E22F82FF08ECF
            C33E01D166D4AE89F08E9ECFE4DBC5B822968B73BB6D545CFCCCCC3D6BF8D4F8
            E1F14A6F8DFF0018BC51E309F4DD2F4797C4DAA5C6A474FD36D92DACEC7CD959
            C430C48AAA91A02115547DD5A00E428A28A00555DD4EF28FFB3F9D7E897FC1AE
            BF0C7C35F177FE0AE5E15D17C57E1DD0FC4DA3CDA0EAF24963AB58457D6D232D
            AB156314A194B29E9F2D7F50DFF0EF9F8078CFFC291F847FF846E9DFFC66803F
            867F28FF00B3F9D1E51FF67F3AFEE5BFE1DF9F013FE888FC23FF00C22B4FFF00
            E3347FC3BF3E027FD111F847FF0084569FFF00C66803F869F28FFB3F9D1E51FF
            0067F3AFEE5BFE1DF9F013FE888FC23FFC22B4FF00FE3348DFF04FDF80B838F8
            23F097FF0008AD3BFF008CD007F0CF457D35FF00058FF09E95E08FF82A5FC7CD
            1F44D36C747D274DF1B6A36F6965656C96D6D6B12CBF2A2448155157D156BE65
            A002AF699CDBB0F7AA35774EFF0050DF5A009E47C3546DF7A9CCD8A8D9B2B400
            C66C546FF769F2FDCA8DFAD004725368A2800A28A2800A28A2800A28A2800A28
            A28026B2FF008FC8BFDF5A28B2FF008FC8BFDF5A2801937FAC6FAD329F37FAC6
            FAD32800A28A2800A28A2800A28A2800A28A2800A92A3A72B61680093EF9A6D2
            BFDEA4A0028A28A0028A28A0028A28A00FA4BFE093BFB0DDE7FC145FF6F9F87B
            F0BE349BFB2355BF5BBD7EE23F97ECBA55BFEF6EDF77F0B346A514FF007E44F5
            AFED6BC39A159F85F41B3D374FB786CEC34F852DADADE14D91C1120DA880760A
            A00FC2BF16FF00E0CD8FF827FF00FC2AEFD9DFC57FB40EBB67B757F88D33687E
            1E7913E68F4BB597F7F2AB7A4D74BB7FEDCD7D6BF68BC51E22D3FC1DE1DBFD57
            54BB86C74DD2EDE5BCBCB999B6A5BC28A5DDD8F6555527F0A007596BD63A86A3
            75676F796D35DD8F97F6885265696DF78DC9BD7AAEE5E46EEB5E1FFF000537FD
            8AB4DFF8284FEC35F113E145F0863B8F1369AC74AB997A596A511F36D26CFF00
            0AACE89BB1F790BAFF00157E33FF00C10EFF00E0B6775F1CFF00E0BD5F16A4F1
            0DDCD6FE15FDA4AE1ADF42B7B83B469F369C8CBA5237F0AB359AC90B6DFBD2BA
            57F42DF7D3EB401FC0DF8C7C27A97807C5BAA687AC59CFA6EAFA2DDCB617D693
            2ED96D6E227292C6C3B32BAB0FC2B26BF58BFE0EDBFD803FE197BF6FD87E2968
            B63F67F0AFC6C85F5294A4788E0D620DA9789FF6D55A1B8E7EF34D2FF76BF276
            800A28A2800AFAAFFE0879FF002976FD9D7FEC7AD37FF46D7CA95F55FF00C10F
            3FE52EDFB3AFFD8F5A6FFE8DA00FED3A1FF56BF4AFC82FF83D27FE518BE07FFB
            29565FFA6DD46BF5F61FF56BF4AFC82FF83D27FE518BE07FFB29565FFA6DD468
            03F983A28A280248FEF7FC04FF002AFEEBBF63AFF934CF85FF00F629693FFA45
            057F0A31FDEFF809FE55FDD77EC75FF2699F0BFF00EC52D27FF48A0A00F1FF00
            F82E0FFCA237F689FF00B10F53FF00D155FC569EB5FDA97FC1707FE511BFB44F
            FD887A9FFE8AAFE2B4F5A0028A28A00FDE6FD8B7FE0EF4F00FECB1FB21FC2FF8
            6B77F06FC5FAADDF80FC2DA7787E6BD835AB68E3BA7B5B78E132AA94DCA1990B
            61BD6BD3FF00E2375F873FF4433C6FFF0083EB3FFE22BF9CAA2803FAE5FF0082
            417FC1C27E15FF0082BA7C7CF11780741F873E22F07DD787FC3EFE2092EEFF00
            5282EA29916E2083CA0235521B3701B3FEC9AFD17AFE65FF00E0CA2FF948BFC4
            EFFB26F3FF00E9D34FAFE9A2803F3AFF00E0AFDFF0707F857FE0915F1DBC3BE0
            5D7BE1CF88BC6173E20D0175E8EEEC35282D63851AE2783CA2AEAC4B661DD9FF
            006857C99FF11BAFC39FFA219E37FF00C1F59FFF00115F31FF00C1EC1FF2906F
            85FF00F64EE2FF00D395F57E335007EF77ED83FF00077EF803F69AFD93BE26FC
            3BB5F833E31D2EEFC77E15D4FC3F05E4DAE5ABC76AF756B240B290A99655670C
            557FBB5F82345140051456F7C36F00EA7F15FE22683E17D1A1FB56B1E24D46DF
            4BB087FE7B5C4F2AC512FE2EE2803F587FE0D85FF821CE9FFB7278E25F8DDF15
            B495BDF857E0DBEFB3691A4DCA661F14EA49B58F98BFC76B065772FDD964609F
            32A4AA7FA75B4B28F4FB68E185238E28D42222AED5503A002BCDBF634FD98340
            FD8C3F65AF02FC2CF0D471C7A4F82748874D8E444DAD752A8DD35C37FB72CAD2
            4ADFED48D563F6B7FDA57C39FB1CFECD5E34F89FE2C99A1F0FF8274C9753BA08
            4799705461204CFF00CB496429127FB4EB40189FB64FEDDDF0A7F602F861FF00
            0977C58F19E97E12D25D8C76AB3E65BAD4E40377956F6E80CB33FB22FCBD5B02
            BF263E39FF00C1ED7E00F0E6B13DBFC3BF827E2AF155923954BDD6F5C8746DFE
            E228E2B86DA7FDA6535F889FF0505FDBEFC7FF00F0522FDA4B5AF895F1075192
            E2EEFE468B4ED39252D65A0DA64F95696E9FC31A0EFF0079DB73B6599ABC2680
            3FA30F823FF07B4F80BC45AE436FF10FE08F8A7C2D6523857BCD0B5C835931FB
            98658ADCED1FECB678AFD66FD8C3F6F1F84FFF000503F865FF00097FC26F19E9
            7E2AD262658EEE28774579A6CAC37795716EFB6485FEF7DE5C3632A596BF869A
            F71FD80BF6F3F881FF0004E2FDA3B45F897F0F75392D6FB4F9025FE9ED21FB1E
            B96991E6DA5CA7F1C6E3FE048D875DACAA6803FB85BAB58EF2DDA29235923917
            0CAC32AC3D2BF990FF0083A07FE0873A6FEC49E338FE39FC29D1D6C7E17F8BAF
            7ECDAD68F6A9FB8F0BEA526595A351F72D27F9B6AFDD8A41B0615E255FE8A7F6
            40FDA7FC37FB67FECCDE0BF8A5E13919F41F1B6991EA56E8EC1A4B666F96481F
            1C79914AAF137FB51B51FB60FECD1A07ED8FFB3278E3E17F89A159345F1B6913
            6973394DCD6EEE3F753A7FB714A1255FF6916803F84FA2BA1F8ABF0EF54F843F
            137C45E12D6E136DAC785F53B9D26FE2FF009E77104AD148BFF7DA1AE7A800A2
            8A2803FA91FF0083333FE5143E23FF00B293A9FF00E9069D5F33FF00C1E8FF00
            163C51F0DBE2A7C035F0F78935ED056F349D65A75D3B509AD5662B3DA6370461
            BB6E4F5AFA63FE0CCCFF009450F88FFECA4EA7FF00A41A757C91FF0007C0FF00
            C95AFD9EFF00EC0FADFF00E9459D007E31FF00C3547C4CFF00A285E38FFC1FDE
            7FF1CA92DFF6AFF8A16B2AC917C46F1E4722F2AE9E21BC0CBFF912BCF68A00FA
            E7F673FF0082E87ED61FB2F6A704DE1CF8DDE37BFB5B76C9D3FC417CDAE59C8B
            DD3CBBBF3368FF007369F7AFDBCFF823DFFC1D5FE11FDB27C5BA3FC39F8E1A7E
            97F0E7E20EA92259E99AC5AC8CBA0EB93B70B136F2CD692BB70A1D9E362701D5
            9954FF003154AAD8A00FED97FE0A73FF0004C6F873FF00054AFD9D2FBC0FE38B
            18E0D4A1479BC3FE2086156BEF0EDD91C4B11FE246C287889DB22FF7595597F8
            E7FDAF3F657F177EC4BFB4878B3E17F8E2C4E9FE24F08DE35A5C28C98AE108DD
            15C4448F9A296364911BFBAEBDEBFA6CFF00835CFF00E0A85AA7EDF5FB12DD78
            47C65A949A97C42F83D35BE95797B33F9971AAE9B2A37D8AE642796907972C2E
            DD5BC85766DCED5F2DFF00C1E97FB10D9DE781BE1BFED01A4D9AAEA56179FF00
            086EBF246BF34F04AB25C59BBFFB8E9709BBFE9BA2FF000AD007F3D345145001
            45145007F7C9E04FF912747FFAF1B7FF00D016BF8D3FF82A4FED1FF107C3FF00
            F052AFDA02C6C7C77E32B5B3B3F88DAFC504116B974890A2EA33ED55557DAAAB
            FC207DDAFECB3C09FF00224E8FFF005E36FF00FA02D7F13BFF000563FF0094A1
            7ED15FF6527C41FF00A719E803CEFF00E1AA3E267FD142F1C7FE0FEF3FF8E575
            9F0DBFE0A29F1EBE0EEAF1DE785FE347C52D0EE216DCBF65F145EAC6DEC50C9B
            597D994D78AD1401FBD7FF000452FF0083ADFC5FE21F8B7E1DF859FB4C5DE9FA
            BE9BE22B98F4ED3BC7296C967716170E44712DF2461627859B0BE72AA3464EE7
            DCBB997F68FF006FFF00D88BC1FF00F0511FD94BC55F0AFC656F1C961E20B76F
            B15E7941A6D1EF5437D9EF21FEEC913FCDFED2EF43F2BB2D7F0E4ADB4D7F703F
            F04C6F8A1A97C6EFF8273FC0EF176B123DC6B1E22F0268F7B7F3487734D70D65
            1798E4FF00B4D96FF815007F153F1B7E13EB5F01BE3178ABC13E22B5FB2EBFE0
            FD5AE746D461ED1DC5BCAD14A07FB3B90E3DAB93AFBC7FE0E5EF055AF813FE0B
            63F1BEDAC556386FAEF4ED49917FE7ADC6976934A7FE0523B37FC0ABE0EA0028
            A28A00FDA6FF0083273FE4F7FE2E7FD88A9FFA71B6AFD1AFF83B93FE50EDE20F
            FB1A346FFD1ED5F9CBFF00064E7FC9EFFC5CFF00B1153FF4E36D5FA35FF07727
            FCA1DBC41FF63468DFFA3DA803F93FA28A2800AF6FFF0082757ED89AB7EC0BFB
            697C3DF8B1A4F9D2378475549AF6DE36DAD7B62F98AEEDFF00EDA40F2AFB3306
            FE1AF10A3A1A00FEF4B4BD4FC37FB417C21B7BCB66B3F117843C69A42CD11237
            DB6A9637506E5FF79248A4FF00C7ABF8B1FF0082A0FEC4B7DFF04F5FDBB3E227
            C29B9170F63E1ED4D9F46B897ADE69937EF6D25DDFC4C60740D8FE3575FE1AFE
            82BFE0D11FDBFBFE1A4BF60FBEF84DAD5E79DE27F82F72B696A249373CFA3DC9
            77B63EFE548B343FECA470FF007ABC87FE0F35FD8097C69F07BC17FB4468765B
            B50F06CABE19F12BC51FCCDA7CEE5AD267FF00662B8678FF00EDF17D2803F9CF
            A28A2800AFE8ABFE0CCBFD807FE112F857E34FDA2B5CB3DBA878B243E17F0CBC
            A9F30B081D5EF264FF00665B8548B3FF004EAFFDEAFC0BFD9E7E06EBDFB4D7C7
            5F08FC3DF0BDB7DABC43E33D56DF48B08C8F97CD9DC22B37F75173B99BF85413
            5FDBB7ECE3F037C2BFB10FECABE13F01E8F243A7F857E1CE83158ADD4E5615F2
            A08B74B7529E9B9D83CAEDFDE663401F92BFF07957EDF9FF000AD7F67CF08FEC
            FBA1DE6DD57E214E35FF0011246FF326976B2FFA3C4E3FBB35D2EFFF00B733FD
            EAFE6F6BE92FF82B2FEDC577FF000514FDBF3E227C506926FEC7D57506B3D020
            932BF66D2EDFF75689B7F859A350EC3FE7A4AF5F36D00145145007E987FC1A59
            FF002998F08FFD8BDADFFE91B57F425FF05DDD76FBC35FF048BF8F1A869B7979
            A7DFDAF85E5782E2DA7682685BCD8B957521857F3DBFF06967FCA663C23FF62F
            6B7FFA46D5FD04FF00C17EBFE50E1FB417FD8A92FF00E8D8A803F9067FDA9BE2
            5AC8DFF170BC73D7FE83F79FFC729BFF000D51F133FE8A178E3FF07F79FF00C7
            2B849BFD637D699401DF7FC3547C4CFF00A285E38FFC1FDE7FF1CA3FE1A9FE26
            7FD142F1C7FE14177FFC72B81A2802F6B5AEDE788F57B8BED42EEE750BCBB90C
            B35C5CCAD2CD339EACCEDCB37B9AA345140055DD39B6C2FF005AA556AC3FD5B7
            FBD401624FEED4323548CD8A8D9BF8A802366F9AA3A566DA94C92801B4514500
            145145001451450014514500145145004D65FF001F917FBEB45165FF001F917F
            BEB4500326FF0058DF5A653E6FF58DF5A6500145145001451450014514500145
            14500145145002BFDEA4A28A0028A28A0028A28A002BD23F648FD9B75FFDB07F
            697F03FC2FF0CC7E66B5E38D5E0D2ADD8AEE5B71237CF3BFFB1147BE46FF0065
            1ABCDEBF773FE0CC8FD8047893C7BE36FDA335CB2DD6BE1D47F0A7859E44EB77
            2A2BDF5C27FB490347106EFF0069957F86803F7B3F67CF827A0FECD7F043C25F
            0FFC2F6FF65F0EF8374AB7D1F4F8FF00884304623527FBCCDB7731FE2624D7E7
            A7FC1D71FB767FC3267FC1342FFC1BA5DE7D9FC55F1A6E1BC376E11B6CB1E9C0
            2BEA12FF00BAD114B76FFAFAAFD3E6385AFE73FF00E0E3EFD87FF6B6FF008290
            7FC141AF2FBC1FF05FC6FAC7C38F02E9D1683E1CB98842B05F7FCB5BABA55697
            F8E776507F8A3822A00FC55F85FF0011F58F83DF127C3FE2EF0F5E3E9DAFF867
            52B7D574DB94FBD6F7104AB2C4E3FDD745AFEE07F61DFDA9748FDB6BF648F007
            C56D0FCB5B1F1BE8F06A2D0236EFB1DC11B6E2DC9FEF453ACB11FF0072BF927F
            F887CFF6CAFF00A37EF1D7FDF36FFF00C7ABF73BFE0D61F841FB427EC97F013C
            71F08FE35FC35F14783F45D2F505D73C2D7BA888CC4CB71F2DDDAAEC76DBB644
            49557BF9D2D007D19FF05F7FF827F0FF0082877FC135FC6DE19D36C85DF8CBC2
            F1FF00C24FE18DA9BA46BEB547630AFF00B53C06687FDE951BF86BF8DC61B588
            AFEFE5D772D7F1FBFF00071BFF00C13EFF00E1817FE0A67E2DB5D26C7ECBE09F
            8884F8B7C3DB136C50A5C3B7DA2DD7B2F957025555FE18DA2F5A00F81E8A28A0
            02BEABFF00821E7FCA5DBF675FFB1EB4DFFD1B5F2A57D4DFF0449BB8EC7FE0AD
            DFB3AB4AD856F1EE9483EAD3AAAFFE3C45007F6A70FF00AB5FA57E417FC1E93F
            F28C5F03FF00D94AB2FF00D36EA35FAFD08DB18AFC8DFF0083CE3469B51FF825
            8F856EA35CC7A7FC47D3E5971FC2AD61A8A03FF7D30FFBEA803F977A28A28024
            8FEF7FC04FF2AFEEBBF63AFF00934CF85FFF00629693FF00A45057F0A09D3F03
            5FDDCFECADA34DE1FF00D997E1DE9F74ACB7163E19D32DE507F85D2D2253FA8A
            00F15FF82E0FFCA237F689FF00B10F53FF00D155FC569EB5FDA67FC172AFA2B0
            FF0082457ED10D29DA3FE107D42353FED32055FF00C79857F16D27FAC6FAD003
            28A28A0028A28A00FD94FF008328BFE522FF0013BFEC9BCFFF00A74D3EBFA68A
            FE65FF00E0CA2FF948BFC4EFFB26F3FF00E9D34FAFE9A2803F99CFF83D83FE52
            0DF0BFFEC9DC5FFA72BEAFC66AFD99FF0083D83FE520DF0BFF00EC9DC5FF00A7
            2BEAFC66A0028A28A002BEC6FF00837FFC096FF11FFE0B21FB3FE9B74AB2450F
            89D753008FE3B3825BB4FF00C7A15AF8E6BEBAFF00820CFC4AB5F84DFF000582
            FD9FB56BC9161826F15C3A59776DAA0DE24966BFF8F5C2D007F6810FFAB5CFDE
            C57E477FC1E53F176FBC09FF0004C1F0EF86EC6468E3F1BF8E2CACEF803F2C96
            F6F6F7375B0FFDB68A06FF008057EB8C59D8BBBAD7E4EFFC1E27F032FBE27FFC
            12BEC7C4B630BC9FF0AEFC6561AB5E955DDE5DACF14F64CC7FEDADC5BD007F2C
            F4514500145145007F501FF0666FC5DBEF1AFF00C1343C55E19BD91A48FC15E3
            8BB82CB27E586DEE2D6DAE360FFB6AD3B7FC0EBF5E65FBADF4AFC98FF83393E0
            6DEFC36FF825D6ADE28BE8648FFE161F8CAF751B1661B449696F14166187FDB6
            86E3FEF9AFD6893FD5B7AD007F1A7FF07097812DBE1CFF00C166FE3FE9F6AA23
            8A7F112EA840FEFDE5AC174E7FEFB99ABE31AFB0BFE0BF1F122D7E2BFF00C163
            3F680D5ACE4596187C50FA56E5391BACA18ACDBFF1EB76AF8F6800A28A2803FA
            91FF0083333FE5143E23FF00B293A9FF00E9069D5F247FC1F03FF256BF67BFFB
            03EB7FFA51675F5BFF00C1999FF28A1F11FF00D949D4FF00F4834EAF923FE0F8
            1FF92B5FB3DFFD81F5BFFD28B3A00FC25A28A2800A28A2803F5B3FE0CE0F8A17
            9E10FF0082A46B9E1F491BFB3FC5BE07BE86587F85A5B79ADA78DFFDE555947F
            DB46AFD99FF839A3C076BE3BFF008229FC6859A3DD36936FA76A96EFFF003CDE
            1D4AD5B3FF007C175FF8157E3A7FC19A1F082F3C67FF00052BF1578B3CB6FECB
            F06F822E965971F2ADC5D5C411449FF028D6E1BFE006BF60BFE0E79F8916BF0F
            3FE08ADF18166755B9F100D3347B55CFFAC79751B7661FF7ED253FF01A00FE41
            186D6229295DB73134940051451401FDF27813FE449D1FFEBC6DFF00F405AFE2
            77FE0AC7FF002942FDA2BFECA4F883FF004E33D7F6C3E01FF912347FFAF2B7FF
            00D16B5F87FF00B5DFFC19E5E21FDA6FF6A7F88FF11E1F8EFA2E8D0F8F3C4FA9
            78852C24F0A4B3359ADDDD493888BFDA57795F336EEDA376DE9401FCEE515FBB
            DFF103CF89FF00E8E2341FFC2367FF00E4BAEBFE187FC1901A65AEACB2F8CBF6
            82D42FAC55BE7B5D17C2696B330F6966B99557FEFDB5007E1B7ECC1FB3478BBF
            6C0F8F9E16F86FE05D324D5BC4DE2CBC4B2B38954958F77DF9656FE08A24DCEE
            FD15518D7F6FDFB39FC1AB1FD9CFF67CF04FC3FD2A4F334DF04E8363A0DAC857
            6B491DB5BC702B91FDE6D99FC6BC4FFE09D7FF000481F817FF0004BCD02E61F8
            61E1875D7B528D61D43C49AACBF6CD63504FBDE5B4DB42C71FCAA7CA89510950
            C54B735F0EFF00C1C65FF0706F86BF65BF85BE22F827F083C416BADFC5CD7EDE
            4D3758D4B4E996587C1B6F22B24B9917E5FB7329645453BA1DC5DB6B2A2B007E
            18FF00C16A7F68FB0FDAC7FE0A9DF1BBC71A4DC2DE691A8788E5B0D3AE11B725
            CDB59A259C52AFFB2E96EAE3FDEAF966827268A0028A28A00FDA6FF83273FE4F
            7FE2E7FD88A9FF00A71B6AFD1AFF0083B93FE50EDE20FF00B1A346FF00D1ED5F
            9CBFF064E7FC9EFF00C5CFFB1153FF004E36D5FA35FF0007727FCA1DBC41FF00
            63468DFF00A3DA803F93FA28A2800A28A2803ED2FF008208FEDFADFF0004F1FF
            008294781FC55A85EFD8FC1DE2497FE117F14166DB1AE9F74EABE73FB413AC33
            FF00BB0B2FF157F5C9FB527ECEFE1FFDADFF00670F1AFC36F1346B3685E37D1E
            E348B9651B9A112A61664FF6E37DAEA7FBC8B5FC252B6D35FD81FF00C1B91FB7
            F7FC37CFFC1327C2379AADF7DAFC67F0F547843C425DB32CD25BA2FD9EE1BBB7
            9B6C61666FE29165F4A00FE4CFF689F819AF7ECC9F1D7C5FF0F7C516FF0067F1
            1782F57B9D1AFD40F95A582428CEBEA8DB772B7F12B035C3D7EDA7FC1E53FB01
            FF00C2B0FDA1FC25FB40687665349F88908D07C42F1A7CB1EA96B17FA3CACDFD
            E9AD576FFDB9B7AD7E2DF87F43BCF136B767A7D85BCD797D7F325BDB5BC485E4
            B895DB6A2281D599885FF815007ED27FC19ADFB00FFC2CFF00DA1BC59FB416B9
            665F49F8750B683E1E7913E59354BA8BFD22553FDE86D5B6FF00DBE2FA57E84F
            FC1D5DFB7DFF00C3207FC1376FBC13A45E9B5F177C6A91FC376BE5BED921D355
            43EA328FF65A264B7FFB7AF6AFAAFF00E0937FB0F59FFC13ABF603F877F0C238
            E1FED8D2B4F5BBD7A74FF979D52E3F7B76FBBF89564628A7FE79C495FCCD7FC1
            C9DFB7DFFC376FFC14E7C54BA4DEFDABC19F0CB7784743D8FBA39BC876FB5DCA
            FF0009F36E4CBB587DE8E38A803F3F09C9A28A2800A28A2803F4C3FE0D2CFF00
            94CC7847FEC5ED6FFF0048DABFA75FDB5FF65AD37F6D9FD95BC6FF000AB58D4F
            50D1B4DF1C69ADA6DC5E592235C5BA33AB6E40FF002EEF93BD7F315FF06967FC
            A663C23FF62F6B7FFA46D5FD267FC14FBF69DF117EC67FB01FC52F8A5E16B7D2
            6F3C43E09D0DF52B1875289E6B49255745C4AA8E8CCBF31FBACB401F99CDFF00
            064B7C1C662DFF000B8FE277FE01587FF1149FF104A7C1CFFA2C7F13BFF006C3
            FF0088AF8A64FF0083CEFF006A8562BFF088FC11FF00C11EA1FF00C9D47FC467
            9FB547FD0A3F047FF047A8FF00F275007DADFF00104A7C1CFF00A2C7F13BFF00
            006C3FF88AF927FE0B59FF0006D4FC3BFF00825FFEC3F7FF00153C37F113C69E
            24D4ED358B1D356CB53B5B548192E1D958E6250DB976D73FFF00119E7ED51FF4
            28FC11FF00C11EA3FF00C9D5E17FF050FF00F838D3E397FC14C3F672B8F861E3
            ED07E19E9FE1FBABFB6D49E6D134BBA82EBCC80B320DF2DCCABB79E7E5A00FCF
            FA28A2800AB563FEA9BEB556AC5A36D8CFD6802495B9DB51C8F4E692A366F97F
            DAA006B3FCD51D399A9B40051451400514514005145140051451400514514013
            597FC7E45FEFAD14597FC7E45FEFAD140113FDEA4A57FBD49400514514005145
            1400514514005145140051451400514514005145140051451401B3E02F046A9F
            12BC71A3F87743B19B52D6BC417B0E9DA7D9C4BBA4BAB899D5238D7FDA67655F
            C6BFB6FF00F8271FEC6BA4FEC03FB147C3CF84FA498A4FF844F4A48AFEE635F9
            6FAF9F32DDDC7FDB49DE461BBEEAED5ED5FCF3FF00C1A29FF04FFF00F8691FDB
            B6F7E2E6B767E7785BE0B5BADD5A974DD1DC6B3701D2D87FB5E546B34DC7DD75
            83FBD5FD45A8DA28011DD53A9C5319A127E6F2EBF01BFE0EA8FF0082CDFC48F8
            0DFB577857E107C18F885E21F04DC784B4BFED2F145D6877C6DE59EEEF36B416
            D295F9BF75022CB8FF00A7A5FEED7E55FF00C3F0BF6BAFFA38AF8B1FF83E9680
            3FB4CC43E91D391A35E9B07D2BF8B1FF0087E17ED75FF4715F163FF07D2D1FF0
            FC2FDAEBFE8E2BE2C7FE0FA5A00FED4436E1C57E607FC1D65FF04FDFF86C0FF8
            2715EF8E347B2FB478C3E0A4AFE22B768E3DD2CDA63285D421FF00756354B8FF
            00B74FF6ABA2FF0083657FE0A49AC7FC141FF60036FE34D72E75EF891F0D7537
            D1F5CBCBB97CCBAD4209774F677521FF006A32F16EFE26B566EF5FA1DAFE8B6B
            E22D16EB4FBEB78AEEC6FA27B7B88254DF1CD138DAE847F1065247E3401FC099
            183457D2DFF0571FD85AEBFE09CFFF000500F885F0C1A398689A7DF7DBFC3D33
            9DDF6AD2EE3F7B6ADBBF89950F96C7FBF13D7CD34005779FB317C5E97F67EFDA
            43C01E3C8564693C13E23D3F5E554FBCDF65B98E7C7FE395C1D00E0D007F7D3E
            14F12D8F8CFC33A7EB3A5DC477DA6EAD6F15E59DC447725C432AABA48BFECB2B
            035F327FC16ABF622BCFF82837FC136FE257C39D1A3493C5177669A9E801881E
            66A1692ADC43164F0BE6EC68771FBBE757C6FF00F06A77FC15934BFDA93F64FB
            1F817E2AD5238FE24FC27B3FB2E991DC4BF3EB5A227CB03C7FDE6B65221751F7
            51606E7736DFD75FBCB401FC0A788341BCF0A6B97DA5EA36973A7EA1A7CEF6B7
            76B71134335B4A8DB5E3746F995D59482A47CA4567D7F629FF00050FFF00837B
            7F670FF829078B2EBC53E2AF0E6A7E15F1B5EFFC7CF88BC2D729637B7C71B435
            C23A4904CDC0F9DE3DE578DD5F25F86FFE0CA7F80763AEC72EA9F13BE2D6A1A7
            A3E5ADA26D3EDE471E864FB3B7E8B401F877FF00048DFD81F5CFF828DFEDE5E0
            5F87BA6D8CD73A1B5FC5A9F89AE950B45A7E9103AB5CCAE7F8772FEE9377DE92
            58D7BD7F6B96F02C112AAAAAAA8C280B8DA3D2BC37F619FF0082737C20FF0082
            71FC369BC31F093C2369E1DB7BE612EA17AEED73A8EACEBD1EE2E1F323EDCB6D
            5FB8BB9B6AAE6BDCA699608D9DD9555464927EED007E6DFF00C1D67FB42DAFC1
            0FF823CF8CB47370B16A5F11F54D3FC3364377CCD9B85BA9B8FEEF916B28FF00
            810AFE4B19B71AFD3DFF00839EBFE0AC1A6FFC1433F6BFB3F07F827528F50F86
            7F0944D6165790C9BA1D6B527651777687F8A25F2D2289BF8951DD4ED96BF306
            800A28A2800A28A2803F653FE0CA2FF948BFC4EFFB26F3FF00E9D34FAFE9A2BF
            997FF8328BFE522FF13BFEC9BCFF00FA74D3EBFA68A00FE673FE0F60FF009483
            7C2FFF00B27717FE9CAFABF19ABF667FE0F60FF94837C2FF00FB27717FE9CAFA
            BF19A800A28A2800AD4F0878A2FF00C0BE2BD2F5BD2AE24B3D4F47BA8AF6CEE1
            3EF43344E24471FEEB28359745007F721FF04F2FDB1745FDBDFF00636F00FC58
            D0E487C9F166971CF776F1B6EFECFBE5FDDDD5B9FF006A29D654F70A1BF8ABB8
            FDA07E087873F696F827E29F87FE2EB21A8F867C61A64DA56A56FBB6B3432A15
            254FF0B8EAADFC2C14F6AFE5E7FE0DC0FF0082E12FFC1343E2F5DFC3FF008897
            93FF00C297F1E5D896EAE154C8DE17D436AA2DFAA0E5A2755449D57E6DA88EBC
            A157FEA93C2BE2AD37C75E1BB0D6345D42CB56D2F54B68EEAD2F6CE759ADEEA1
            75DC92A3AFCAE8CA7219783401FC5E7FC1543FE0967F10BFE0961FB466A1E0EF
            16D95D5E7872EE6925F0CF8952065B3F105A6E3B5D4FDD49D5768961DDB91BFB
            CAC8CDF2E57F785F1EFF00677F02FED4BF0DEFBC1BF113C27A278C7C31A87CD3
            69FAADA89E12C33875CF2922E7E575C32F635F993F1C7FE0CDDFD987E21EBD36
            A1E13D7BE267C3F5998B7D82CB528750B38C7F7505D44F37FDF52B5007F2E75F
            4EFF00C12E3FE0977F10FF00E0A9DFB4669FE0CF0758DCDAE856F2C72F893C49
            240CD63E1FB4CFCCEEDF75A665DCB1439DD230ECA1997F7AFE077FC19B3FB327
            C3CD762BEF157883E2778F961607EC179A9C3A7D9CC3D1FECD12CDFF007CCAB5
            FA71F003F66EF01FECABF0CACFC1DF0EBC27A1F837C35607743A7E956A208B79
            FBD23E3E6776FE2772CCDDCD004BFB3B7C08F0DFECC3F03FC29F0F7C2163FD9F
            E1BF06E990E93A742C773AC5126D05DBF89DB9666FE26663DEB8EFDBFF00F6BF
            D0FF0060DFD8FF00C79F15F5F680DAF8474B96EADADE47DBF6FBC6F92DAD47FB
            52CED1A7FC089ED5EA9E25F1369FE0AD02F356D5F50B3D2F4CD36092EAEEF2EE
            65860B58635DCF248ED85445505999B815FCAFFF00C1C8FF00F05C08BFE0A53F
            16ED7E1D7C39BE9FFE14C7816EDA686E7698FF00E12AD402B21BD653F32C28AC
            E902B7CDB5DDDBEFAAA007E6778DBC5FA8FC43F196ADAFEAF72D79AB6B97935F
            DEDC37DE9A795DA491CFFBCCCC6B228A2800A28A2803FA91FF0083333FE5143E
            23FF00B293A9FF00E9069D5F247FC1F03FF256BF67BFFB03EB7FFA51675F5BFF
            00C1999FF28A1F11FF00D949D4FF00F4834EAF18FF0083BDBF626F8BFF00B597
            C4DF81F73F0CBE19F8DBC7F6FA2E99ABC57F2683A34F7E2CDE49AD5903B44ADB
            4B2A36377F74D007F3AB457D33FF000E68FDACBFE8DC7E357FE1237BFF00C453
            E0FF008230FED677336D5FD9C7E32AB37F7BC2978ABF994A00F98EAF695A5DC6
            B3A8DBD9DA5BCD757775208A18228CBC93BB1DAAAAA396663C6057E81FECE9FF
            0006B97ED89F1FB55B75BEF8796BF0F34B9880FA8F8AF5486D5611FF005EF134
            B727FEFD57EDBFFC121FFE0DA3F857FF0004D7F1069BE3AF135E0F8A1F162CFF
            00796BAA5D5AF93A6E86FEB676E4B7EF47FCF79599FF00B822F9A803A2FF0083
            6FBFE095D7FF00F04CDFD87BCDF1758FD8FE277C4C9A2D6FC47037DFD2E3542B
            69604FF7A247767FEECB3CABF32AAB57C0BFF07A2FEDE567ABEA1F0F7F677D12
            F566B8D2A5FF0084C3C4C88FFEA2564782C6038FE2F2DEE25656FE1781BF8ABF
            4FFF00E0B0BFF0590F87BFF0498F81536A5AADC5A6B9F1175AB771E17F0A4737
            EFF5097EE89E6DBCC56A8DF79CFDEDBB532D5FC837C7FF008EDE28FDA73E3478
            9BE2078D3569B5AF1578BAFE4D4752BC938DF2B9E8ABFC28AB85545F95555547
            0280389A28A2800A28A2803FBE3F00FF00C891A3FF00D795BFFE8B5AFC3CFDAF
            3FE0F0BF127ECCBFB557C48F8710FC0BD075887C07E26D4BC3C97D278A6685AF
            16D2EA4804A516D9B633797BB6EE3B7775AFDC4F027FC893A3FF00D78DBFFE80
            B5FC4EFF00C158FF00E5285FB457FD949F107FE9C67A00FD5AFF0088E0BC55FF
            0046F3E1FF00FC2C27FF00E45AFA4BFE0945FF00075BE93FB7A7ED77A6FC2DF8
            83E03D27E1A7FC2591FD97C3DA841AD3DE4375A8EEF92D25DF120432AEE546FE
            2902A7F1AD7F3235734CD4EE347D46DEF2D6E26B5BAB5712C3344E52485D4E55
            948E4329E73ED401FD9AFF00C16A7F64EF89DFB607EC15E2BF0EFC21F1CF89BC
            1BE3AB24FED1B18749D41AC57C46B1A36FD36675DAC1275660BB597F7823DCDB
            372D7F19DAF69579A06AF7763A85BDC59EA16733C37304E8D1CB0CAADB5D1D5B
            E6565604107A1AFEB63FE0DDDFF82C05BFFC150FF64E4D27C4F7D12FC60F8770
            C563E25899809358831B61D4917D25DBB65C7DD9437DD574AFCEEFF83B43FE08
            D7FF00083F896EBF6A5F873A5FFC49F5A9D23F1FD8DB47F2D9DDB9548B54551D
            1276C24BFF004D591FE6F35D9403F0A28A28A0028A28A00FDA6FF83273FE4F7F
            E2E7FD88A9FF00A71B6AFD1AFF0083B93FE50EDE20FF00B1A346FF00D1ED5F9C
            BFF064E7FC9EFF00C5CFFB1153FF004E36D5FA35FF0007727FCA1DBC41FF0063
            468DFF00A3DA803F93FA28A2800A28A2800AFD49FF00834FFF006FCFF864DFF8
            28C5BF80758BEFB3F847E36429A0CAAF26D8E1D510B3E9F2FF00BCCCD2DBFF00
            DBD0FEED7E5B568786BC457DE12F10D8EA9A6DD4D63A969B7097569710BEC92D
            E5460C8EA7B32B007F0A00FED5BFE0ADBFB0CDAFFC1457FE09FF00F10FE1818A
            16D6B53D3CDEF87E693E5FB36AB6FF00BDB46DDFC2AD22F96C7FB92BD7F3C7FF
            0006B3FF00C13AAEBF69CFF829BAF8A7C49A5CCBE1DF80BB75AD461B98B1FF00
            136F31A2B1B770DF75D254967FFB73DBDEBFA26FF8256FEDBF63FF00050FFD82
            FE1EFC5481A15D4B5DD3960D6ADD0FFC7A6A707EEAED36FF000AF9A8CEBFEC3A
            1FE2AEC3F669FD8D7C09FB257887E246A9E0CD2DB4FBAF8A9E2A9FC5FAE3361B
            CCBD95111C2607CB16E46709FC2D2CA7F8A803C5FF00E0BA1FB7C2FF00C13AFF
            00E09B7E3CF1A58DE2DB78B75683FE11CF0BFCFB64FED3BA5644957FDA82312D
            C7FDB0F7AFE32E699A69999D99CB1C927A9AFD79FF0083BEFF006FDFF8681FDB
            7F49F837A1DE799E1CF8376A575011BFC93EB374A8F367F85BCA83C98FFD9769
            D6BF20A800A28A2800A28A2803F4C3FE0D2CFF0094CC7847FEC5ED6FFF0048DA
            BFA09FF82FD7FCA1C3F682FF00B1525FFD1B157F3EDFF06967FCA663C23FF62F
            6B7FFA46D5FD127FC16AFE18F88BE347FC12BFE36F85FC27A26A9E24F116B5E1
            B92DEC34DD3ADDAE6EAF24F3623B1117E666E0F0BE9401FC574DFEB1BEB4CAFA
            69FF00E08CFF00B5933B7FC638FC69EBFF004295E7FF001149FF000E68FDACBF
            E8DC7E357FE1237BFF00C45007CCD457D33FF0E68FDACBFE8DC7E357FE1237BF
            FC451FF0E68FDACBFE8DC7E357FE1237BFFC45007CCD4576BF1BFF0067FF001C
            FECCFE3A6F0C7C41F097887C17E228E04B87D3759B092CEE9627FB8FB2450DB5
            B1C1AE2A800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
            800A28A2801F0FFAC5FAD1443FEB17EB450035FEF5252BFDEA4A0028A28A0028
            A28A0028A28A0028A28A0028A28A0028A28A0028A28A002953EF5251401FD3E7
            FC10B3F6DBFD8FFF00E09B7FF04E8F05F82751F8F3F0D2DFC65AD23788BC5656
            F9B77F68DD2AB189BE4FF96112C307F77F725BBD7D65E2CFF83803F640F0C785
            F53D4A3F8EFE04D49AC2D65B95B4B3BB796E2EB62337971AECF99DB1855F56AF
            E353CD6FEF37FDF5479ADFDE6FFBEA803D07F6B0FDA2F5CFDAE3F691F1C7C4CF
            12396D6BC71ACDC6AF7099DCB6FE6BB32429FEC469B117FD945AF3BA28A0028A
            28A00FD12FF836AFFE0A4DA4FF00C13B3FE0A0F0BF8CB5A8741F86BF1134C974
            2F105D5C31FB3D8C8B99AD2E9F1FDC957CADDFC297321AFE8BBFE1FD3FB1EFFD
            1C27C38FFC0F7FFE22BF8BFE869DE63FF79BF3A00FDC4FF83ABFE387ECD1FB76
            7C35F01FC4AF857F173C07E28F889E0DB86D1350D3B4FBB2D75A8E953B33A32F
            C9F37913EE6DBFDDB994F6AFC39A73485FEF331A6D0014514500755F07FE3078
            A3E007C4CD17C67E0BD7352F0DF8A7C3B74B77A76A561298A7B5940FBCADEE32
            194FCACACCA4152457F405FF0004DDFF0083C6FC23E27F0FE9FE1BFDA5B41BCF
            0CEB76F1AC4FE2CF0FD99BAD36F30147997168BFBE81BD7CA12AB374545F96BF
            9D3A2803FB76F835FF00055DFD9AFF00680D3A3B9F0A7C74F85DA9F9B82B6EFE
            21B7B5BB5FF7ADE664957FE04B5E89A8FED5BF0C344B037179F11BC076B6CA32
            669BC436891FE664AFE11FCC3F5FAD2F9A7FD9FCA803FB29FDA63FE0E03FD91F
            F65CD2AE9F58F8D1E16F106A16EA4269BE159FFB7AEA67FEE7FA2EE8D1BFEBA3
            A2FBD7E1D7FC1613FE0E93F1F7EDE9E17D53E1DFC27D3750F85FF0CF5257B7D4
            2E24B956D77C430B7DE8A574F96DE061C34513333746919494AFC98DD45001D4
            D14514005145140051451401FA95FF0006A2FED81F0CFF00631FDB83C7FE21F8
            A3E34D0FC0FA26A5E059B4DB5BCD527314535C9D42CA411290A7E6D88EDFF01A
            FDF6FF0087F4FEC7BFF4709F0E3FF03DFF00F88AFE30518AF438A3CC7FEF37E7
            401FA99FF075EFED87F0CBF6D0FDB57E1EEBFF000B7C6DA0F8E346D2FC129A7D
            D5DE9731962B7B8FB7DDC9E5B1207CDB1D1BFE055F9634E762DD4E69B4005145
            14005145140057DD9FF04A8FF82FDFC6CFF8259B43A1E93710F8E3E19BCCD2CF
            E11D6E67F2202DF33359CC32F6AEC79F955A36666668D9BE6AF84E8A00FEB2BF
            641FF83AC7F652FDA534CB587C4DE22D4BE10F88A45C4963E28B56FB2EFEFB2F
            210F16DFF6A5F29BFD9AFB6BC0DFB777C13F899611DD7873E2EFC31D7A098655
            EC3C53613FFE832D7F0B8AD8A72C98FEEFE5401FDD0F8DFF006ECF82BF0D2C24
            B9F117C5DF863A0C10AEE67BFF0014D8C1FF00A14B5F13FED7DFF07577ECA5FB
            34E95730F86FC49A97C5CF1022E22B1F0BDAB35A87EDBEF2609085FF006A3F34
            FF00B35FC9B3499FEEFE54D66CD007DDFF00F0559FF83803E367FC152CDC681A
            95CC3E05F862B3F9B1784B4599FC9B92BF32B5ECE70F74CA79DACAB12B2AB2C6
            1BE6AF83E8A2800A28A2800A28A2803FA18FF8359FFE0A6FF007F63AFF008271
            6BBE15F89DF157C23E0BF10DC78F350D4A2B0D52E8C53B5BBD9D8A24B8C1F959
            A275FF00809AFD28FF0087F47EC79FF4707F0DFF00F03DFF00F88AFE3055D97E
            E9228F31FF00BCDF9D007F67DFF0FE8FD8F3FE8E0FE1BFFE07BFFF001151CDFF
            0005EAFD8EE08C96FDA0FE1D155FEEDEBB7E812BF8C5F31FFBCDF9D1E63FF79B
            F3A00FEBB3E2E7FC1D15FB17FC27D3DE4B7F89F77E2EBC4048B3F0F6817B7123
            FD1E48E287F37AFCE0FDBBBFE0F3DF1578DB49BDD13F67DF87E3C1A938289E25
            F13B457BA946BFDE8AD137411C83D5E49D7FD9AFC316627AD250075DF193E367
            8B3F683F887AAF8BBC6FE23D63C55E26D6A633DEEA5A9DCB5C5C5C37BB37F0AF
            4551F2AA8C00057234514005145140051451401FD977847FE0BB3FB20E9BE17D
            36DE5FDA0BE1C2CB0DAC28E3EDEFF2B2A2A9FE0AFE503FE0A43E3DD1FE28FF00
            C1423E397897C3BA95AEB3E1FF001078F35BD474DBFB66DD0DE5B4B7D3491CA8
            4FF0B2B061F5AF12F31FFBCDF9D36800A28A2803DCBFE09E5FB7578BFF00E09C
            7FB58F863E2AF8366CDE6892F957FA7B3948359B19368B8B497FD9751F7BF81D
            51D7E645AFEA60FF00C1737F626FDA63E02FD8FC51F173C029A1F8DB45F2F53D
            035E95A39E386E22C4B697316DE1943323052791C37DD6AFE3D69DE630FE26FC
            E803DD3FE0A31F01FE1EFECEFF00B57789343F853E3FD13E247C3A9A4FB7787B
            56D3AE3CE2969216D96F3F0313C5828DFDEC2BFF001ED1E134E762DD4E69B400
            51451401FAB7FF00069EFED93F0BFF0062FF00DADBE266B7F14BC6DA0F81F4AD
            5BC209656773AACCD1477137DB607D8B853F36D566AFB97FE0E57FF82A6FECEF
            FB587FC12F75AF087C39F8B9E0DF18789A6F1069775169DA75C979E48E29999D
            80C7DD5535FCE0A315E87143485FEF331A006D14514005145140051451401FB2
            3FF06A57FC15E7C1FF00B127893E217C2DF8B1E2DD3FC27E01F11449E20D2351
            D42465B5B3D4E3D914D16541C79F0EC6E78CDAFF00B55FAF7FB427FC1C49FB2B
            7C2DF819E2CF127877E307823C5DE20D0F49B9BCD3343B2BC769F56BB48C986D
            D06CFE39362EEFE10C4FF0D7F1EA8C57A1C506463FC4DFF7D5006F7C4DF88DAC
            7C5EF88FAF78B3C437B26A5AF789B50B8D5B52BB93EF5D5C4F2B4B2B9FF79D89
            AE7E8A2800A28A2800A28A2803EFAFF836DBF68FF02FECA9FF00054DF0D78CBE
            22F8A349F087862CF45D5ADE6D475194C7023CB6AC88A4807966AFE91BFE1FD1
            FB1E7FD1C1FC37FF00C0F7FF00E22BF8C0562A78E297CC7FEF37E7401FD9F7FC
            3FA3F63CFF00A383F86FFF0081EFFF00C451FF000FE8FD8F3FE8E0FE1BFF00E0
            7BFF00F115FC60F98FFDE6FCE8F31FFBCDF9D007F67DFF000FE8FD8F3FE8E0FE
            1BFF00E07BFF00F1147FC3FA3F63CFFA383F86FF00F81EFF00FC457F183E63FF
            0079BF3A3CC7FEF37E7401FA0DFF0007307ED2FE01FDACBFE0A77A978BBE1BF8
            AB47F18786A6F0DE976A9A8E9B2992032C48E1D3240F99722BF3DE9CEC5BA9CD
            36800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
            A2801F0FFAC5FAD1443FEB17EB450035FEF5252BFDEA4A0028A28A0028A28A00
            28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00
            28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00
            28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00
            28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00
            28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00
            28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00
            28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00
            28A28A0028A28A0028A28A007C3FEB17EB4510FF00AC5FAD1400D7FBD494AFF7
            A92800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A2800A28A2800A28A2800A28A2801F0FF00AC5FAD1443FE
            B17EB450035FEF5252BFDEA4A0028A28A0028A28A0028A28A0028A28A0028A28
            A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
            A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
            A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
            A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
            A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
            A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
            A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
            A007C3FEB17EB4510FFAC5FAD1400D7FBD494AFF007A92800A28A2800A28A280
            0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
            0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
            0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
            0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
            0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
            0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
            0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
            0A28A2800A28A2800A28A2801F0FFAC5FAD1443FEB17EB450035FEF5252BFDEA
            4A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
            8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
            8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
            8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
            8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
            8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
            8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
            8A0028A28A0028A28A0028A28A0028A28A0028A28A007C3FEB17EB4510FF00AC
            5FAD1400D7FBD494AFF7A92800A28A2800A28A2800A28A2800A28A2800A28A28
            00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
            00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
            00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
            00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
            00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
            00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
            00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
            01F0FF00AC5FAD1443FEB17EB450035FEF5252BFDEA4A0028A28A0028A28A002
            8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
            8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
            8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
            8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
            8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
            8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
            8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
            8A28A0028A28A0028A28A007C3FEB17EB4510FFAC5FAD1400D7FBD494AFF007A
            92800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
            A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
            A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
            A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
            A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
            A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
            A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
            A2800A28A2800A28A2800A28A2800A28A2800A28A2801F0FFAC5FAD1443FEB17
            EB450035FEF5252BFDEA4A0028A28A0028A28A0028A28A0028A28A0028A28A00
            28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002BE85FF8
            27B783B49F19FC41D7E1D5F49D3F54861D2C3A47796E93AC6DE746B90AC3EF57
            CF55F4AFFC133BFE4A4F893FEC14BFFA3D29C7714B639EFDB77E0047F087C7AB
            AAE936AB0787BC4059A28E35DA96930FBF10F45FE25F6247F0D717FB37FC189B
            E39FC50B1D247991E9F09FB46A338FF9636EA7E6C7FB4DC2AFFB4D5F5EDE6ADA
            5FED3F63F107E1DEACD0C3AA6877F2A5AC817E65456FDCCC3FDA46F91FFD96FF
            006AB91D134C87F617FD9B2F2FAEBECEFE32D7E5D8A09575F3BE6D899EF1C4B9
            73FDE66FF6969D857323FE0A0BF0D7C3BE08F871E1F9345D0F49D2A497506899
            ED2D522664F2B80CCA37357C8F5F677FC14A3E6F84BE18666DCDFDA4DCFF007B
            F715F18D296E38EC15F5F7C0EFD957C25F0B7E17AF8D3E2325BCCED0ADD1B7BB
            CFD9EC51BEE2B22FFAD95B2BF2FF00B5B76D7C9BA23C31EB366D75FF001EEB32
            197FDCC8CFE95F69FF00C1472DEEAF3E0A69B35A6E7D3E1D5524B8F2FEEED313
            8898FB6E3FF8F2D0866558FED55F057C49A90D26EBC250DAE9F21DAB7571A2DB
            790BEE553F7807BD717FB607EC95A6780FC3CBE30F099C68AC53ED56A25F352D
            D5FEE4B1BFF146D951B7E6DBB87F0FDDF9A6BEE7D3239B48FF008278CA9AD7CB
            27FC23B2EC127DE0AEEDF671FF008F45B7FE034F72763E18AD8F04EA767A2F8C
            B49BCD420175A7D9DE4335D425164F3A2575675DADF29DCB9E0D63D15251F6C7
            C2CF8C1F07BE30F8F2CFC3FA67806D61BCBEDED1BDC68D6AB1AEC4676CED66FE
            15FEED5CF8D9F10FE127C0AF1647A2EB1E03B1B8BA9AD52E83DA6916AD1EC666
            51F7997E6F95ABE78FD863FE4E7BC3DF4B9FFD2696BA1FF828FF00FC97CB3FFB
            02DBFF00E872D5DF4B936D4F2BF8C9E24D1FC61F13B58D4FC3F61FD99A3DE4DE
            65ADAF9090F92BB5463627CABF367EED72B4515051F407EC6FFB2941F1A26B8D
            7B5DF397C3D63279090C6DB1AFA5E199777645046EDBCFCD8F5AF4ED7BF693F8
            2BF0CF549344B0F0ADAEA50DBB7952CD65A55BC90961F29F9E56DCFF00EF7FE3
            D5B1FB3BC736A9FB08496FA2EEFED26D3B5389163FF59F68CCBFF8F6D65FFBE9
            6BE192306AB6277DCFB43C7BFB357813F695F86F27893E1DA5AE9FA9AAB79496
            D1F9515C4ABCB412C5FC127FB4BEABF794EEAF8D2E2DE4B599A3911A39233865
            2B8653E95F5C7FC131ECF505D2BC5933799FD9B24D6A9167EEB4CA1F763FE02C
            9F9AD7CDDF1CE6B7BAF8CFE2C92CF6FD964D5EE9A2DBF776F9ADD28608E4EBE9
            CFF8274781344F1B5C78B9758D1F4BD57ECE969E57DB2D527F2F734BBB6EE1F2
            EEDABFF7CD7CC75F577FC12FCE2EBC69FEE597F39E94771CB636BC4BF1F7E09F
            86BC5BA8E877DE03B759B4FBA7B39E54D12D5A3DC8CCA4AFCDBB6F158BFB527E
            CC3E14BAF84DFF0009F781E38ED6DD224BA960859BECD736EECABE622B7DC65D
            CB95FF007BE5522B4BC73FF04EBD47C6BF10358D624F1358DADBEAD7F35E6D16
            52492461E466C75505B9AD6FDA9BC77A07C07FD9D57E1E69F79F6AD52E2C63B1
            8A166DD2C70E433CD2E3EEEEF9B6AFFB5FDD5A7D011F14D14515230A28A28015
            3EF57DCFF0CBC2BE07F08FECA5A2F8AB5CF09E8F7E2CF4A4B8BA93FB3A09679B
            E7DB9CB7DE6F997EF357C309F7ABEE0BEFF9471AFF00D8BC9FFA3D6AA24C8E7B
            49FDA03E0278CAED2C6F3C1F6BA5472B6CF3EE3478A345DDEAF13332FF00BD5C
            8FED6FFB2269FF000DFC3ABE2CF09C923E86CC9F6AB5697CD5B657FB92C6FF00
            C51B640E776DDCBF3306F97E6DAFBA2C619B49FF008278C89AD6E493FE11C955
            44DF79559DBECEBFF7CB45B7FE0346E1B1F0BD14515251F707C0AF09783744FD
            92B4DF14EB9E15D1F526B1B09EEAEA436114B7132ACF2776EADB76FDE6AE3FFE
            1AC3E09FFD1376FF00C13597FF00175E91F00AFB49D2FF00624D36E75D83ED3A
            243A6DC3DEC423DFE645E7CB91B772EEAF395F8B5FB388917778526DBBBE6FF8
            973FFF001EAA64A3E79F8D3E29D1BC6DF13B56D4FC3DA7FF0064E8F74E86DAD3
            C9487C9023553F227CABF3063C7AD7275A1E249ED2E7C417D258A7976725C3B5
            BAE31B63DC768FFBE7159F525057D9DFB217C0AF0CF86FE09DBEBFE2ED3347BA
            9FC457519B67D4ADD25F26277F2A155DCADB59D8EEFF00812D7CC3F043E1A4DF
            17BE2868FE1F8CB2C7793E6E1C7FCB2857E691BFEF907F4AFAF3F6C8F86FE30F
            1EF86FC3FE1EF05E90D2699A7BADC4CF1DD450796C8BB2145DCCBF757737FDF3
            5484FB1F3CFEDB7F06E1F84DF17DE6D3ED92D746D7A3FB5DAC71A6D8E17FBB2C
            407F0ED6E76FF75D6BC66BEF2FDA57E196A5F18BF66286E754B0FB378AB43B71
            A849082246F35176DC2295CEE0EA0BFCBFDD5AF8368904760AFA8BFE09D3E01D
            0BC6D6DE2A6D6346D2F5636F25A2C5F6CB549FCBDDE6EEDBB87CBBB0BFF7CD7C
            BB5F5C7FC1307FE3DBC63FF5D6CBFF006BD28EE12D8F9AFE2C5A43A7FC52F125
            BC11C70416FAA5D4514712ED48D56560001D96B9BAE9BE337FC95FF167FD866E
            FF00F47BD73348615ECFFB0B78634DF16FC798ACF54D3ECF52B4FB05CC9E4DCC
            2258F72AF076B578C57BA7FC13D7FE4E2A1FFB06DD7FE8029C7714B63D9FE317
            C55F849F053C6D3683AA7C3EB3B8BA8628E567B6D22D5A3DAEBB87DE65AF22F8
            F9F1EFE1978F3E1BDCE9BE19F067F636AD24D13C777FD9B6F06D453F3AEE46DD
            F357B57C7FF1EFC1DD03E24DC5B78D34192FB5E58226927168F26E464F93E60E
            BFC3FECD7CF3FB4D78BFE1A78A34DD1D7C03A4BE9B3C324A6F49B768BCC52A9B
            3EF3B679DD4E4289E3B451454947DD9E1ED07C03F0EFF65BF0FF008B35CF08E8
            F7E96FA4594B74EBA6C12CF33C811777CDB7736E6FE26AC5F87FE3AF81FF00B4
            06BA9E1D87C1F6BA7DEDE065B75974F4B5699B6EEC249036E56E2BB1B1F86337
            C63FD8C7C3FE1BB6BA8EC66D4B45D3F6CF2219157CBD8FF757E6FE1AE4BE097E
            C1D1FC1FF88167E26D67C450DE0D1D9AE62822B73047950DF3BBB9FBABF7BFE0
            3F7AB4333E7BFDABBE04A7C06F892B636934D3E93A841F6BB17947CE8BB99591
            8FF11561D7D08AF2DAF6EFDB87E33E99F173E27DAC7A34C2EB4BD0ED8DA25C2F
            FABB890BB33B27FB3D141FE2DBBABC46A25B9A1E85FB337C218BE367C5ED3F44
            BA9A4874F2AF7376F19F9FCA45CB2AFF00B4DC2FFC0ABE98F899F157E15FECBF
            AEC7E1B5F03DBDE5D47024B2B4565049B5587CBBA597733B6DAF93FE0E7C54D4
            3E0CFC40B0F1069CB1CB359921E1907EEE78D86D746FF796BEA493F6A9F83BF1
            D6D608FC63A37D8EF157CB0D7D69E7795FECADC45F385FF80AD1703CBFF692F8
            A5F0B7E237C3AB7B9F0BF87A3D2FC4D25D812A8B5FB2B4516D6DC4EC3E5BEE6D
            A3FBDD6BC06BEA6FDA2FF636F0D587C2FB8F197816FA46B1B6816E9EDFCEFB4C
            1710EEDACF13FDEE33D1B77DD6FBB5F2CD200AFB17C5DF0DBC3B69FB05C3AC45
            A0E8CBABB68B692B5EA5A22DC17695371DF8DD9F9ABE3AAFD08F056A9A0E8BFB
            1D787EEBC5102DD6830E8B6AD77134265561B9557E41F7BE6DB5512647E7FE9D
            1EFD460561B8348AA41FAD7D6DFF000505F871E1FF0006FC2DD1AE747D0F47D2
            A79755F26492D2D1219197C976DA4A8FBB525BFC5DFD9D25B8454F0EDBEE665C
            7FC499FAFF00DF55A9FF00052FFF009241A0FF00D867FF0068494740EA7C5345
            1454947D85F163E1B78774DFD846CF57B7D0747B7D55B49D39DAF23B3459D999
            E2DC77E376E6DCDBABE3DAFB73E337FCA3B6CBFEC0DA57FE87057C47552120AF
            B5BF654F0378447ECAD6FE20D73C33A3EA9259ADF5C4F2CB6114D3C8913BB6DD
            CC3E6F9578AF8A6BEEEFD917C3CFE2BFD8CE3D2924585F528B51B459186E58CC
            8EE99C7FC0A888A472BE17F8E9F027E226B76FA3CDE0CB3D34DF3AC292DCE910
            451EF6F95773C4DB97FDEAF34FDB53F665B2F821AD69FA9E87E72689ABB3C5E4
            4AFE6359CCBC950CDF31565395DDF370D5E87E0BFF00826C3681E26B3BED67C4
            B0DC5859CAB33C56F68F134DB4E71BDCED55FF006AB07FE0A0DF1D349F1B5E69
            7E1BD1EF2DF501A5CD2DD5EDC42DBE212B0DA22565F94ED5CEEC7F780FEF51D0
            3A9F30D145152505145140051451400514514005145140051451400514514005
            14514005145140051451400514514005145140051451400F87FD62FD68A21FF5
            8BF5A2801AFF007A9295FEF52500145145001451450014514500145145001451
            45001451450014514500145145001451450014514500145145001451450015EF
            1FB097C51F0FFC2CF1D6B977E20D521D32DEEB4D1044D223B798FE6A36DF955B
            F845783D1401EB9AFF00C707F04FED55ACF8CBC3B7097B6ADAA4F32E19A38EFA
            DDDBE643DF6B2FB7CBC1ED597FB45FED037DFB41F8CA0D42E2DFFB36C6C6110D
            9D9897CD587F89D8B6172CCDFECF40A3F86BCDE8A00FA93F6E5F8E1E14F8A3F0
            DBC3F69A06B76FAA5D5ADFF9B2C71A3AB46BE4EDCFCCABFC55F2DD1450015F54
            FECF7FB67686FE028FC1BF10EDFCEB08E1FB2C578F0FDA229A1E8239D3EF7CBC
            61D73F757FBBBABE56A2803ECAB3F0D7ECDFE18BE5D61350D2EE3CB3E6A5BC97
            571731A9FF00AE3B7737FBADBABCDFF6B5FDAFD7E32D947E1FD0219ED7C3B1C8
            259A5946C96F9D7EE7CBFC31AFDE55F5FA62BE7DDD453E615828A28A433D2FF6
            49F19E97E01F8F5A26ADACDE4761A75A8B8F366915995774122AFDD527EF115B
            BFB717C45D13E27FC60B5D4341D421D4ACA3D2E181A58D59555C3CAC57E655FE
            F0AF17A2800A28A2803DA7F64DFDA9E6F807A95C58DFC32DE787750759658E33
            FBDB697EEF9A9EBF2E032FF16D5FEED7B2EB763FB3BFC54D45B5CBAD434EB3B8
            B96F32641713D8EF3DC98B6FDEFF0076BE31A3753E6158FAEBE2C7ED95E14F86
            BF0FDBC2FF000CADE3F33634297714261B7B256FBCE9BBE6797FDA6FF7B7357C
            8EEE598B3725BBD368A430AFA33F604F8BFE1AF85171E296F116AD0696B7CB6C
            20F311DBCCDA65DDF755BFBCB5F39D1401E9DACFC72D53C27FB416ADE25D0B53
            9AE6DA3D5EE2E6DC191FC8B885A56F9483FC2CA71F8D7A97ED63E3CF877F1FBE
            1ED86BDA66B36B67E2CB18148B396291669A36FBF6EEDB36EE46CB2B6EDBF7BF
            BD5F2FD14005145140051451400A9F7ABED5F85DF1CBE18EA3FB35E8BE14F12F
            882D6256D345ADFDB6D9D645F9D9B6EE44FF0077EED7C5346EA69D84D1F60696
            DFB35F81AF5752866B6BE9ADCEE48E4FB65D2E7FDC61B5BFE055E77FB567ED86
            DF1BAC9741D0EDA7B1F0FC72896669F6ACD7AEBF77705F95517AAAFE7D2BC0E8
            A3982C145145219F667C0DF8DFF0E53F663D2FC29E25F115ADBB4B653DADEDB6
            D996455795DB1B953FBACBF76B1FFE10BFD99FFE830DFF0081979FFC457C97BA
            8DD4EE076DF1F6C7C27A6FC4BBB87C133FDA3C3EB145E4BEF77DCFB177F2EAAD
            F7B35C4D145203E90FD85BC6DE07F8530EB3AE788F5EB3B1D5AEB6D9DBC2F14A
            D2470AED776F954AFCEDB57FED9FBD71FE2CFDB67E20EADE25D42EB4FF00115E
            69FA7DC5C3BDB5B2245B608B77C89F77F85715E3F453B858FAB3F654FDB5A63A
            A6AD67F1135FF32D648925B3B9BA8B72C6EADB5E3F917F895B3D3FE59FBD7CFD
            F19B4FD0F49F899AC47E1BBE8750D0E49CCB672C6ACAA237F9B67CCA0FCB9DBF
            8572945200AFA4BF605F8C7E19F8536DE281E21D620D29AF9ED4DBF988EDE66D
            F3777DD56FEF2D7CDB45007D85ADE8FF00B37F8935ABCD46EB57492EAFA67B89
            9C5D5E2AB3B9DC4E367F79ABC47F69DD2BE1D695ACE92BF0F2EBED16925B3B5E
            1F365936C9BFE5FF0058ABFC3FDDAF2BDD450015EBDFB16F8FB47F86DF1B63D5
            35CD423D36C56C6E21F3A45665DCCBC0F955ABC868A00FB53E24EADFB3FF00C5
            9F14CBAD6B7AF47717D3469133C735D44BB506D5F9553FBB5E65F1CBC35F03F4
            FF0085FA94DE0DD49AE3C44AD17D963FB45C49BBF7ABBF87455FB99AF9E3751B
            AAAE0145145481F5978F3F681F0ADDFEC5567E1ED3FC410FFC2450E956107D9A
            25952557478B7AEEDBB7E5556FE2AE47F637FDAA17E19EBB71A2F8A2FA66F0F6
            A9B9D6E27DD2FD866C7DEEEDE5B8F9587FBA7D6BE7BA2803D17F691D17C27A7F
            C44B8BAF05EA967A8689A86675861475FB0BEEF9A2F9947CBDD7DB8ED5E75451
            401DF7ECE9E2BF0BF833E29D9EA3E2EB196FB49862917CB585665591976AB3A3
            7DF5193F2FD2BDFAE3C03FB3878BE6FB7C3AE43A5ABFCED0477B35BAFF00DF0E
            8CCBFF0001AF90E8DD401F55FED07FB50F83B41F82EFE01F87E0DC5B4D0FD91E
            65475820873B9D54BFCCEECDFC5FED357CA945140057D61E2CF8F3E11BEFD886
            1F0CC3AE5AB6BCBA3DB5B9B3F2E5DFE62CB1B32EEDBB7EE83FC55F27D1401634
            F758EFEDDD9B6AABAB13F8D7D45FB767C75F097C52F869A4D9F87F5BB5D52EAD
            F54F3E48E34915953CA719F9947F1357CAB4500145145007D5DF143E3BF8475B
            FD8A6CFC356BAE5ACDAE45A5E9F0B5984977ABC662DEB9DBB7E5DADFC55F28D1
            450015F597C0BF8F9E12F08FEC8375E1FBCD7E0B3D79ACF5244B6292F99BDF7F
            978655DBF36E1FC55F26D1401A179E26D4B5088C7717F7B346DD5249DD97F535
            9F45140051451400514514005145140051451400514514005145140051451400
            514514005145140051451400514514005145140051451400F87FD62FD68A21FF
            0058BF5A2801AFF7A9295FEF5250014514500145145001451450014514500145
            1450014514500145145001451450014514500145145001451450014514500145
            1450014514500145145001451450014514500145145001451450014514500145
            1450014514500145145001451450014514500145145001451450014514500145
            1450014514500145145001451450014514500145145001451450014514500145
            1450014514500145145001451450014514500145145001451450014514500145
            1450014514500145145001451450014514500145145001451450014514500145
            1450014514500145145001451450014514500145145001451450014514500145
            145003E1FF0058BF5A2887FD62FD68A006BFDEA4A57FBD494005145140051451
            4005145140051451400514514005145140051451400514514005145140051451
            4005145140051451400514514005145140051451400514514005145140051451
            4005145140051451400514514005145140051451400514514005145140051451
            4005145140051451400514514005145140051451400514514005145140051451
            4005145140051451400514514005145140051451400514514005145140051451
            4005145140051451400514514005145140051451400514514005145140051451
            4005145140051451400514514005145140051451400514514005145140051451
            400514514005145140051451400F87FD62FD68A21FF58BF5A2801AFF007A9295
            FEF5250014514500145145001451450014514500145145001451450014514500
            1451450014514500145145001451450014514500145145001451450014514500
            1451450014514500145145001451450014514500145145001451450014514500
            1451450014514500145145001451450014514500145145001451450014514500
            1451450014514500145145001451450014514500145145001451450014514500
            1451450014514500145145001451450014514500145145001451450014514500
            1451450014514500145145001451450014514500145145001451450014514500
            1451450014514500145145001451450014514500145145003E1FF58BF5A2887F
            D62FD68A006BFDEA4A9314628023A2A4C518A008E8A9314628023A2A4C518A00
            8E8A9314628023A2A4C518A008E8A9314628023A2A4C518A008E8A9314628023
            A2A4C518A008E8A9314628023A2A4C518A008E8A9314628023A2A4C518A008E8
            A9314628023A2A4C518A008E8A9314628023A2A4C518A008E8A9314628023A2A
            4C518A008E8A9314628023A2A4C518A008E8A9314628023A2A4C518A008E8A93
            14628023A2A4C518A008E8A9314628023A2A4C518A008E8A9314628023A2A4C5
            18A008E8A9314628023A2A4C518A008E8A9314628023A2A4C518A008E8A93146
            28023A2A4C518A008E8A9314628023A2A4C518A008E8A9314628023A2A4C518A
            008E8A9314628023A2A4C518A008E8A9314628023A2A4C518A008E8A93146280
            23A2A4C518A008E8A9314628023A2A4C518A008E8A9314628023A2A4C518A008
            E8A9314628023A2A4C518A008E8A9314628023A2A4C518A008E8A9314628023A
            2A4C518A008E8A9314628023A2A4C518A008E8A9314628023A2A4C518A008E8A
            9314628023A2A4C518A00487FD62FD68A58C7EF451401FFFD9}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 79.370130000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          DataField = 'CUSTOMERNAME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CUSTOMERNAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuReportSales
    Left = 395
    Top = 351
  end
  object FDQuReportSales: TFDQuery
    Active = True
    Connection = DM.FDConnection1
    SQL.Strings = (
      'SELECT * FROM vSales')
    Left = 307
    Top = 351
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SALESID=SALESID'
      'CUSTACCOUNT=CUSTACCOUNT'
      'CUSTOMERNAME=CUSTOMERNAME'
      'SALESDATE=SALESDATE'
      'ISPPN=ISPPN'
      'TOTALAMOUNT=TOTALAMOUNT'
      'GRANDTOTAL=GRANDTOTAL'
      'ITEMID=ITEMID'
      'ITEMNAME=ITEMNAME'
      'QTY=QTY'
      'UNIT=UNIT'
      'PRICE=PRICE'
      'LINEAMOUNT=LINEAMOUNT')
    DataSet = FDQuReportSales
    BCDToCurrency = False
    Left = 387
    Top = 287
  end
end