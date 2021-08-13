object FRM_ESTADO: TFRM_ESTADO
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Selecione o Estado'
  ClientHeight = 62
  ClientWidth = 139
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblEstado: TRzLabel
    Left = 8
    Top = 23
    Width = 43
    Height = 17
    Caption = 'Estado:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object edtOk: TRzEdit
    Left = 74
    Top = 23
    Width = 6
    Height = 7
    Text = ''
    TabOrder = 1
    OnEnter = edtOkEnter
  end
  object cbEstado: TRzComboBox
    Left = 57
    Top = 20
    Width = 62
    Height = 25
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOnEnter = True
    TabOrder = 0
    Text = 'AC'
    Items.Strings = (
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB'
      'PR'
      'PE'
      'PI'
      'RJ'
      'RN'
      'RS'
      'RO'
      'RR'
      'SC'
      'SP'
      'SE'
      'TO')
    ItemIndex = 0
  end
end
