object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Conex'#227'o MySql'
  ClientHeight = 332
  ClientWidth = 607
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 601
    Height = 268
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Button1: TButton
    AlignWithMargins = True
    Left = 3
    Top = 277
    Width = 601
    Height = 52
    Align = alBottom
    Caption = 'Carregar Dados'
    TabOrder = 1
    OnClick = Button1Click
    ExplicitLeft = 0
    ExplicitTop = 280
    ExplicitWidth = 581
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data' +
      ' Source=MySql ODBC 32 Ansi;Initial Catalog=world'
    DefaultDatabase = 'world'
    LoginPrompt = False
    Left = 24
    Top = 56
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CITY')
    Left = 168
    Top = 56
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 256
    Top = 56
  end
end
