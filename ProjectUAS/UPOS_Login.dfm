object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Login'
  ClientHeight = 125
  ClientWidth = 288
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 288
    Height = 125
    Align = alClient
    BorderOuter = fsBump
    Color = 7237230
    TabOrder = 0
    object RzLabel1: TRzLabel
      Left = 56
      Top = 64
      Width = 48
      Height = 13
      Caption = 'Username'
      Color = 7237230
      ParentColor = False
    end
    object RzLabel2: TRzLabel
      Left = 56
      Top = 91
      Width = 46
      Height = 13
      Caption = 'Password'
    end
    object RzPanel2: TRzPanel
      Left = 2
      Top = 2
      Width = 284
      Height = 41
      Align = alTop
      BorderOuter = fsBump
      Caption = 'Login Form Point Of Sales (POS) PT. Delaer Cahaya Harapan'
      Color = clSilver
      TabOrder = 0
    end
    object RzEdUserName: TRzEdit
      Left = 128
      Top = 61
      Width = 121
      Height = 21
      Text = ''
      TabOrder = 1
      OnKeyPress = RzEdUserNameKeyPress
    end
    object RzEdPassword: TRzEdit
      Left = 128
      Top = 88
      Width = 121
      Height = 21
      Text = ''
      PasswordChar = '#'
      TabOrder = 2
      OnKeyPress = RzEdPasswordKeyPress
    end
  end
end