inherited frmSupplier: TfrmSupplier
  Caption = 'Master Supplier'
  FormStyle = fsMDIChild
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzLabel5: TRzLabel [0]
    Left = 40
    Top = 81
    Width = 43
    Height = 13
    Caption = 'RzLabel4'
  end
  object RzLabel6: TRzLabel [1]
    Left = 40
    Top = 62
    Width = 43
    Height = 13
    Caption = 'RzLabel3'
  end
  object RzLabel7: TRzLabel [2]
    Left = 40
    Top = 43
    Width = 43
    Height = 13
    Caption = 'RzLabel2'
  end
  object RzLabel8: TRzLabel [3]
    Left = 40
    Top = 24
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
            FieldName = 'VENDACCOUNT'
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENDORNAME'
            Width = 126
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TELEPHONE'
            Width = 115
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAX'
            Width = 117
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NPWP'
            Width = 121
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTACTPERSON'
            Width = 169
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMAIL'
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ADDRESS'
            Width = 173
            Visible = True
          end>
      end
    end
    inherited RzPanel2: TRzPanel
      object RzLabel1: TRzLabel
        Left = 32
        Top = 16
        Width = 76
        Height = 13
        Caption = 'Vendor Account'
      end
      object RzLabel2: TRzLabel
        Left = 32
        Top = 42
        Width = 64
        Height = 13
        Caption = 'Vendor Name'
      end
      object RzLabel3: TRzLabel
        Left = 32
        Top = 69
        Width = 50
        Height = 13
        Caption = 'Telephone'
      end
      object RzLabel4: TRzLabel
        Left = 32
        Top = 96
        Width = 18
        Height = 13
        Caption = 'Fax'
      end
      object RzLabel9: TRzLabel
        Left = 32
        Top = 123
        Width = 29
        Height = 13
        Caption = 'NPWP'
      end
      object RzLabel10: TRzLabel
        Left = 272
        Top = 15
        Width = 74
        Height = 13
        Caption = 'Contact Person'
      end
      object RzLabel11: TRzLabel
        Left = 272
        Top = 42
        Width = 24
        Height = 13
        Caption = 'Email'
      end
      object RzLabel12: TRzLabel
        Left = 272
        Top = 69
        Width = 39
        Height = 13
        Caption = 'Address'
      end
      object RzDBEdit1: TRzDBEdit
        Left = 121
        Top = 13
        Width = 121
        Height = 20
        DataSource = DataSource1
        DataField = 'VENDACCOUNT'
        TabOrder = 0
      end
      object RzDBEdit2: TRzDBEdit
        Left = 121
        Top = 39
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'VENDORNAME'
        TabOrder = 1
      end
      object RzDBEdit3: TRzDBEdit
        Left = 121
        Top = 66
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'TELEPHONE'
        TabOrder = 2
      end
      object RzDBEdit4: TRzDBEdit
        Left = 121
        Top = 93
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'FAX'
        TabOrder = 3
      end
      object RzDBEdit5: TRzDBEdit
        Left = 121
        Top = 120
        Width = 121
        Height = 20
        DataSource = DataSource1
        DataField = 'NPWP'
        TabOrder = 4
      end
      object RzDBEdit6: TRzDBEdit
        Left = 369
        Top = 12
        Width = 248
        Height = 21
        DataSource = DataSource1
        DataField = 'CONTACTPERSON'
        TabOrder = 5
      end
      object RzDBEdit7: TRzDBEdit
        Left = 369
        Top = 39
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'EMAIL'
        TabOrder = 6
      end
      object RzDBMemo1: TRzDBMemo
        Left = 369
        Top = 66
        Width = 248
        Height = 60
        DataField = 'ADDRESS'
        DataSource = DataSource1
        TabOrder = 7
      end
    end
  end
  inherited FDQuery1: TFDQuery
    Active = True
    SQL.Strings = (
      'SELECT * FROM VENDOR')
    Left = 632
    Top = 43
    object FDQuery1VENDACCOUNT: TWideStringField
      FieldName = 'VENDACCOUNT'
      Origin = 'VENDACCOUNT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object FDQuery1VENDORNAME: TWideStringField
      FieldName = 'VENDORNAME'
      Origin = 'VENDORNAME'
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
      Size = 30
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
    Left = 630
    Top = 90
  end
end
