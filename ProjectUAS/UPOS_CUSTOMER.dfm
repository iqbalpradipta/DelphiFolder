inherited frmCustomer: TfrmCustomer
  Caption = 'Master Customer'
  FormStyle = fsMDIChild
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzLabel5: TRzLabel [0]
    Left = 64
    Top = 24
    Width = 43
    Height = 13
    Caption = 'RzLabel1'
  end
  object RzLabel6: TRzLabel [1]
    Left = 64
    Top = 56
    Width = 43
    Height = 13
    Caption = 'RzLabel2'
  end
  object RzLabel7: TRzLabel [2]
    Left = 64
    Top = 120
    Width = 43
    Height = 13
    Caption = 'RzLabel4'
  end
  object RzLabel8: TRzLabel [3]
    Left = 64
    Top = 88
    Width = 43
    Height = 13
    Caption = 'RzLabel3'
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
            FieldName = 'CUSTACCOUNT'
            Title.Caption = 'CUST ACCOUNT'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUSTOMERNAME'
            Title.Caption = 'CUSTOMER NAME'
            Width = 135
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TELEPHONE'
            Width = 112
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAX'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NPWP'
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTACTPERSON'
            Title.Caption = 'CONTACT PERSON'
            Width = 143
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMAIL'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ADDRESS'
            Width = 191
            Visible = True
          end>
      end
    end
    inherited RzPanel2: TRzPanel
      ExplicitLeft = -2
      ExplicitTop = -2
      object RzLabel1: TRzLabel
        Left = 7
        Top = 6
        Width = 88
        Height = 13
        Caption = 'Customer Account'
      end
      object RzLabel2: TRzLabel
        Left = 19
        Top = 32
        Width = 76
        Height = 13
        Caption = 'Customer Name'
      end
      object RzLabel3: TRzLabel
        Left = 45
        Top = 61
        Width = 50
        Height = 13
        Caption = 'Telephone'
      end
      object RzLabel4: TRzLabel
        Left = 77
        Top = 88
        Width = 18
        Height = 13
        Caption = 'Fax'
      end
      object RzLabel9: TRzLabel
        Left = 66
        Top = 115
        Width = 29
        Height = 13
        Caption = 'NPWP'
      end
      object RzLabel10: TRzLabel
        Left = 285
        Top = 7
        Width = 74
        Height = 13
        Caption = 'Contact Person'
      end
      object RzLabel11: TRzLabel
        Left = 335
        Top = 26
        Width = 24
        Height = 13
        Caption = 'Email'
      end
      object RzLabel12: TRzLabel
        Left = 320
        Top = 61
        Width = 39
        Height = 13
        Caption = 'Address'
      end
      object RzDBEdit1: TRzDBEdit
        Left = 111
        Top = 4
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'CUSTACCOUNT'
        TabOrder = 0
      end
      object RzDBEdit2: TRzDBEdit
        Left = 112
        Top = 31
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'CUSTOMERNAME'
        TabOrder = 1
      end
      object RzDBEdit3: TRzDBEdit
        Left = 112
        Top = 58
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'TELEPHONE'
        TabOrder = 2
      end
      object RzDBEdit4: TRzDBEdit
        Left = 112
        Top = 85
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'FAX'
        TabOrder = 3
      end
      object RzDBEdit5: TRzDBEdit
        Left = 112
        Top = 112
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'NPWP'
        TabOrder = 4
      end
      object RzDBEdit6: TRzDBEdit
        Left = 392
        Top = 4
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'CONTACTPERSON'
        TabOrder = 5
      end
      object RzDBEdit7: TRzDBEdit
        Left = 392
        Top = 31
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'EMAIL'
        TabOrder = 6
      end
      object RzDBMemo1: TRzDBMemo
        Left = 392
        Top = 58
        Width = 249
        Height = 95
        DataField = 'ADDRESS'
        DataSource = DataSource1
        TabOrder = 7
      end
    end
  end
  inherited FDQuery1: TFDQuery
    Active = True
    SQL.Strings = (
      'SELECT * FROM CUSTOMER')
    Left = 600
    Top = 123
    object FDQuery1CUSTACCOUNT: TWideStringField
      FieldName = 'CUSTACCOUNT'
      Origin = 'CUSTACCOUNT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object FDQuery1CUSTOMERNAME: TWideStringField
      FieldName = 'CUSTOMERNAME'
      Origin = 'CUSTOMERNAME'
      Size = 80
    end
    object FDQuery1TELEPHONE: TWideStringField
      FieldName = 'TELEPHONE'
      Origin = 'TELEPHONE'
      Size = 80
    end
    object FDQuery1FAX: TWideStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      Size = 80
    end
    object FDQuery1NPWP: TWideStringField
      FieldName = 'NPWP'
      Origin = 'NPWP'
      Size = 50
    end
    object FDQuery1CONTACTPERSON: TWideStringField
      FieldName = 'CONTACTPERSON'
      Origin = 'CONTACTPERSON'
      Size = 50
    end
    object FDQuery1EMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object FDQuery1ADDRESS: TWideStringField
      FieldName = 'ADDRESS'
      Origin = 'ADDRESS'
      Size = 250
    end
  end
  inherited DataSource1: TDataSource
    Left = 606
    Top = 58
  end
end