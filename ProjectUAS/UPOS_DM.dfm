object DM: TDM
  OldCreateOrder = False
  Height = 298
  Width = 533
  object FDConnection1: TFDConnection
    Params.Strings = (
      'SERVER=DESKTOP-45UGNCI\SQLSERVER2016'
      'User_Name=iqbalp12'
      'Password=mbangg12'
      'ApplicationName=Point of Sales (POS)'
      'Workstation=DESKTOP-45UGNCI'
      'DATABASE=POS'
      'MARS=yes'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 176
    Top = 40
  end
  object FDStoredProcPO: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'POS.dbo.GetNumberSequence'
    Left = 248
    Top = 112
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@Param'
        DataType = ftString
        ParamType = ptInput
        Size = 60
      end>
  end
  object FDStoredProcSO: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'POS.dbo.GetNumberSequence'
    Left = 336
    Top = 112
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@Param'
        DataType = ftString
        ParamType = ptInput
        Size = 60
      end>
  end
  object FDQueryGetRecordId: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM GETRECORDID')
    Left = 152
    Top = 120
  end
  object FDQuGlobal: TFDQuery
    Connection = FDConnection1
    Left = 264
    Top = 200
  end
  object FDQuGlobal2: TFDQuery
    Connection = FDConnection1
    Left = 336
    Top = 192
  end
end
