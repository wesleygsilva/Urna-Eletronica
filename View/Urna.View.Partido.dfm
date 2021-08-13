object FRM_PARTIDO: TFRM_PARTIDO
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FRM_PARTIDO'
  ClientHeight = 43
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPartido: TRzPanel
    Left = 0
    Top = 0
    Width = 463
    Height = 43
    Align = alBottom
    BorderOuter = fsNone
    BorderSides = [sdTop]
    BorderColor = clBlack
    BorderHighlight = clBlack
    BorderShadow = clBlack
    Color = 15199730
    TabOrder = 0
    object lblPartidoDepFederal: TRzLabel
      Left = 5
      Top = 6
      Width = 49
      Height = 17
      Caption = 'Partido: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblNomePartido: TRzLabel
      Left = 60
      Top = 6
      Width = 78
      Height = 17
      Caption = 'NomePartido'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
  end
end
