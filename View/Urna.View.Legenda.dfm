object FRM_LEGENDA: TFRM_LEGENDA
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FRM_LEGENDA'
  ClientHeight = 71
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 17
  object pnlLegenda: TRzPanel
    Left = 0
    Top = 0
    Width = 463
    Height = 71
    Align = alBottom
    BorderOuter = fsNone
    BorderSides = [sdTop]
    BorderColor = clBlack
    BorderHighlight = clBlack
    BorderShadow = clBlack
    Color = 15199730
    TabOrder = 0
    ExplicitLeft = -38
    ExplicitTop = 169
    ExplicitWidth = 501
    object lbl: TRzLabel
      Left = 5
      Top = 6
      Width = 84
      Height = 17
      Caption = 'Aperte a tecla:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object RzLabel3: TRzLabel
      Left = 28
      Top = 25
      Width = 231
      Height = 17
      Caption = 'CONFIRMA para CONFIRMAR este voto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object RzLabel4: TRzLabel
      Left = 28
      Top = 45
      Width = 204
      Height = 17
      Caption = 'CORRIGE para REINICIAR este voto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object RzLine: TRzLine
      Left = -1
      Top = -10
      Width = 501
      Height = 20
      LineColor = clBlack
      LineWidth = 2
    end
  end
end
