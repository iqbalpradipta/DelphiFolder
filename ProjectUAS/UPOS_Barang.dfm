inherited frmBarang: TfrmBarang
  Caption = 'Master Data Barang'
  ClientWidth = 795
  FormStyle = fsMDIChild
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitWidth = 811
  PixelsPerInch = 96
  TextHeight = 13
  object RzLabel6: TRzLabel [0]
    Left = 22
    Top = 27
    Width = 36
    Height = 13
    Caption = 'Item ID'
  end
  object RzLabel7: TRzLabel [1]
    Left = 22
    Top = 54
    Width = 52
    Height = 13
    Caption = 'Item Name'
  end
  inherited Panel1: TPanel
    Width = 795
    ExplicitWidth = 795
    inherited RzDBNavigator1: TRzDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel2: TPanel
    Left = 687
    ExplicitLeft = 615
    ExplicitTop = 41
  end
  inherited Panel3: TPanel
    Width = 687
    ExplicitWidth = 687
    inherited RzPanel1: TRzPanel
      Top = 185
      Width = 683
      Height = 244
      ExplicitTop = 185
      ExplicitWidth = 683
      ExplicitHeight = 244
      inherited SMDBGrid1: TSMDBGrid
        Width = 679
        Height = 240
        DataSource = DataSource1
        ReadOnly = True
        Columns = <
          item
            Expanded = False
            FieldName = 'ITEMID'
            Title.Caption = 'ITEM ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEMNAME'
            Title.Caption = 'ITEM NAME'
            Width = 254
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNIT'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ISACTIVE'
            Title.Caption = 'IS ACTIVE'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MINSTOCK'
            Title.Caption = 'MIN STOCK'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MAXSTOCK'
            Title.Caption = 'MAX STOCK'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HARGABELI'
            Title.Caption = 'HARGA BELI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HARGAJUAL'
            Title.Caption = 'HARGA JUAL'
            Visible = True
          end>
      end
    end
    inherited RzPanel2: TRzPanel
      Width = 683
      Height = 183
      ExplicitWidth = 683
      ExplicitHeight = 183
      object RzLabel1: TRzLabel
        Left = 14
        Top = 19
        Width = 36
        Height = 13
        Caption = 'Item ID'
      end
      object RzLabel2: TRzLabel
        Left = 14
        Top = 46
        Width = 52
        Height = 13
        Caption = 'Item Name'
      end
      object RzLabel3: TRzLabel
        Left = 14
        Top = 73
        Width = 19
        Height = 13
        Caption = 'Unit'
      end
      object RzLabel4: TRzLabel
        Left = 14
        Top = 99
        Width = 69
        Height = 13
        Caption = 'Minimum Stock'
      end
      object RzLabel5: TRzLabel
        Left = 14
        Top = 127
        Width = 73
        Height = 13
        Caption = 'Maximum Stock'
      end
      object RzLabel8: TRzLabel
        Left = 334
        Top = 19
        Width = 48
        Height = 13
        Caption = 'Harga Beli'
      end
      object RzLabel9: TRzLabel
        Left = 334
        Top = 46
        Width = 51
        Height = 13
        Caption = 'Harga Jual'
      end
      object RzDBEdit1: TRzDBEdit
        Left = 112
        Top = 16
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'ITEMID'
        TabOrder = 0
      end
      object RzDBEdit2: TRzDBEdit
        Left = 112
        Top = 43
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'ITEMNAME'
        TabOrder = 1
      end
      object RzDBNumericEdit1: TRzDBNumericEdit
        Left = 112
        Top = 97
        Width = 92
        Height = 21
        DataSource = DataSource1
        DataField = 'MINSTOCK'
        Alignment = taLeftJustify
        TabOrder = 2
        DisplayFormat = ',0;(,0)'
      end
      object RzDBNumericEdit2: TRzDBNumericEdit
        Left = 112
        Top = 124
        Width = 92
        Height = 21
        DataSource = DataSource1
        DataField = 'MAXSTOCK'
        Alignment = taLeftJustify
        TabOrder = 3
        DisplayFormat = ',0;(,0)'
      end
      object RzDBNumericEdit3: TRzDBNumericEdit
        Left = 408
        Top = 16
        Width = 92
        Height = 21
        DataSource = DataSource1
        DataField = 'HARGABELI'
        Alignment = taLeftJustify
        TabOrder = 4
        DisplayFormat = ',0;(,0)'
      end
      object RzDBNumericEdit4: TRzDBNumericEdit
        Left = 408
        Top = 43
        Width = 92
        Height = 21
        DataSource = DataSource1
        DataField = 'HARGAJUAL'
        Alignment = taLeftJustify
        TabOrder = 5
        DisplayFormat = ',0;(,0)'
      end
      object RzDBCheckBox1: TRzDBCheckBox
        Left = 408
        Top = 72
        Width = 66
        Height = 15
        DataField = 'ISACTIVE'
        DataSource = DataSource1
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        Caption = 'IsActive ?'
        TabOrder = 6
      end
      object RzDBLookupComboBox1: TRzDBLookupComboBox
        Left = 112
        Top = 70
        Width = 145
        Height = 21
        DataField = 'UNIT'
        DataSource = DataSource1
        KeyField = 'UNIT'
        ListField = 'UNIT'
        ListSource = DsUnit
        TabOrder = 7
      end
    end
  end
  inherited FDQuery1: TFDQuery
    SQL.Strings = (
      'SELECT * FROM INVENTTABLE')
    Left = 624
    Top = 123
    object FDQuery1ITEMID: TWideStringField
      FieldName = 'ITEMID'
      Origin = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1ITEMNAME: TWideStringField
      FieldName = 'ITEMNAME'
      Origin = 'ITEMNAME'
      Size = 80
    end
    object FDQuery1MINSTOCK: TFMTBCDField
      FieldName = 'MINSTOCK'
      Origin = 'MINSTOCK'
      Precision = 18
      Size = 2
    end
    object FDQuery1MAXSTOCK: TFMTBCDField
      FieldName = 'MAXSTOCK'
      Origin = 'MAXSTOCK'
      Precision = 18
      Size = 2
    end
    object FDQuery1HARGABELI: TFMTBCDField
      FieldName = 'HARGABELI'
      Origin = 'HARGABELI'
      Precision = 18
      Size = 2
    end
    object FDQuery1HARGAJUAL: TFMTBCDField
      FieldName = 'HARGAJUAL'
      Origin = 'HARGAJUAL'
      Precision = 18
      Size = 2
    end
    object FDQuery1ISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
      Origin = 'ISACTIVE'
    end
    object FDQuery1UNIT: TWideStringField
      FieldName = 'UNIT'
      Origin = 'UNIT'
      Size = 10
    end
  end
  inherited DataSource1: TDataSource
    Left = 622
    Top = 50
  end
  object FDQuUnit: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'SELECT * FROM UNITS')
    Left = 482
    Top = 133
    object FDQuUnitUNIT: TWideStringField
      FieldName = 'UNIT'
      Origin = 'UNIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object FDQuUnitUNITNAME: TWideStringField
      FieldName = 'UNITNAME'
      Origin = 'UNITNAME'
      Size = 50
    end
  end
  object DsUnit: TDataSource
    DataSet = FDQuUnit
    Left = 554
    Top = 133
  end
end
