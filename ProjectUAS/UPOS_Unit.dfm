inherited frmUnit: TfrmUnit
  Caption = 'Master Unit'
  FormStyle = fsMDIChild
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzLabel1: TRzLabel [0]
    Left = 40
    Top = 64
    Width = 43
    Height = 13
    Caption = 'RzLabel1'
  end
  inherited Panel1: TPanel
    inherited RzDBNavigator1: TRzDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel3: TPanel
    inherited RzPanel1: TRzPanel
      inherited SMDBGrid1: TSMDBGrid
        DataSource = DataSource1
        Columns = <
          item
            Expanded = False
            FieldName = 'UNIT'
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNITNAME'
            Visible = True
          end>
      end
    end
    inherited RzPanel2: TRzPanel
      object RzLabel2: TRzLabel
        Left = 54
        Top = 19
        Width = 19
        Height = 13
        Caption = 'Unit'
      end
      object RzLabel3: TRzLabel
        Left = 24
        Top = 46
        Width = 49
        Height = 13
        Caption = 'Unit Name'
      end
      object RzDBEdit1: TRzDBEdit
        Left = 88
        Top = 16
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'UNIT'
        TabOrder = 0
      end
      object RzDBEdit2: TRzDBEdit
        Left = 88
        Top = 43
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'UNITNAME'
        TabOrder = 1
      end
    end
  end
  inherited FDQuery1: TFDQuery
    Active = True
    SQL.Strings = (
      'SELECT * FROM UNITS')
    object FDQuery1UNIT: TWideStringField
      FieldName = 'UNIT'
      Origin = 'UNIT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object FDQuery1UNITNAME: TWideStringField
      FieldName = 'UNITNAME'
      Origin = 'UNITNAME'
      Size = 50
    end
  end
end
