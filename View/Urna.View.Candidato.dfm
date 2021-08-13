object FRM_NOMECANDIDATO: TFRM_NOMECANDIDATO
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FRM_NOMECANDIDATO'
  ClientHeight = 42
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
  object pnlNomeCandidato: TRzPanel
    Left = 0
    Top = -1
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
    object lblInfoNomeDepFederal: TRzLabel
      Left = 5
      Top = 6
      Width = 39
      Height = 17
      Caption = 'Nome:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblNomeCandidato: TRzLabel
      Left = 60
      Top = 6
      Width = 96
      Height = 17
      Caption = 'NomeCandidato'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
  end
end
