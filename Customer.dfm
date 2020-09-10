object CustomerForm: TCustomerForm
  Left = 311
  Top = 215
  Caption = #44256#44061' '#44288#47532
  ClientHeight = 666
  ClientWidth = 1326
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 145
    Width = 1326
    Height = 521
    Align = alClient
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #44404#47548
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ct_name'
        Title.Caption = #51060#47492
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ct_gender'
        Title.Caption = #49457#48324
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ct_Id'
        Title.Caption = 'ID'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ct_password'
        Title.Caption = #48708#48128#48264#54840
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ct_phoneNumber'
        Title.Caption = #50672#46973#52376'('#54648#46300#54256')'
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ct_homeNumber'
        Title.Caption = #50672#46973#52376'('#51665')'
        Width = 143
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ct_address1'
        Title.Caption = #51452#49548' 1'
        Width = 258
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ct_address2'
        Title.Caption = #51452#49548' 2'
        Width = 254
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ct_email'
        Title.Caption = #51060#47700#51068
        Width = 230
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1326
    Height = 145
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 117
      Height = 27
      Caption = #44256#44061' '#44288#47532
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 16
      Top = 96
      Width = 4
      Height = 13
    end
    object Label2: TLabel
      Left = 16
      Top = 96
      Width = 82
      Height = 19
      Caption = #51312#54924' '#45236#50857
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
    end
    object db_seek: TDBEdit
      Left = 104
      Top = 96
      Width = 289
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 424
      Top = 88
      Width = 129
      Height = 33
      Caption = #51312#54924
      TabOrder = 1
    end
    object Button2: TButton
      Left = 712
      Top = 88
      Width = 129
      Height = 33
      Caption = #49688#51221
      TabOrder = 2
    end
    object Button3: TButton
      Left = 856
      Top = 88
      Width = 129
      Height = 33
      Caption = #49325#51228
      TabOrder = 3
    end
    object CustomerAddButton: TButton
      Left = 568
      Top = 88
      Width = 129
      Height = 33
      Caption = #44256#44061' '#52628#44032
      TabOrder = 4
      OnClick = CustomerAddButtonClick
    end
    object Button4: TButton
      Left = 1024
      Top = 19
      Width = 129
      Height = 33
      Caption = #45803#44592
      TabOrder = 5
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Password="";Data Source=D:\jins' +
      'u\Data\ShopDB.mdb;Persist Security Info=True'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 1048
    Top = 80
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Customer')
    Left = 1128
    Top = 80
    object ADOQuery1ct_count: TAutoIncField
      FieldName = 'ct_count'
      ReadOnly = True
    end
    object ADOQuery1ct_name: TWideStringField
      FieldName = 'ct_name'
      Size = 50
    end
    object ADOQuery1ct_Id: TWideStringField
      FieldName = 'ct_Id'
      Size = 255
    end
    object ADOQuery1ct_password: TWideStringField
      FieldName = 'ct_password'
      Size = 30
    end
    object ADOQuery1ct_phoneNumber: TWideStringField
      FieldName = 'ct_phoneNumber'
      Size = 15
    end
    object ADOQuery1ct_homeNumber: TWideStringField
      FieldName = 'ct_homeNumber'
      Size = 15
    end
    object ADOQuery1ct_address1: TWideStringField
      FieldName = 'ct_address1'
      Size = 100
    end
    object ADOQuery1ct_address2: TWideStringField
      FieldName = 'ct_address2'
      Size = 100
    end
    object ADOQuery1ct_email: TWideStringField
      FieldName = 'ct_email'
      Size = 100
    end
    object ADOQuery1ct_gender: TBooleanField
      FieldName = 'ct_gender'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 1200
    Top = 80
  end
  object MainMenu1: TMainMenu
    Left = 280
    Top = 24
  end
end
