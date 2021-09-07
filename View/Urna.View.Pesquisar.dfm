object FRM_PESQUISAR: TFRM_PESQUISAR
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pesquisar'
  ClientHeight = 263
  ClientWidth = 583
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  object pnlMain: TRzPanel
    Left = 0
    Top = 0
    Width = 583
    Height = 239
    Align = alClient
    BorderOuter = fsFlat
    Color = clWhite
    TabOrder = 0
    object lblFiltro: TRzLabel
      Left = 10
      Top = 10
      Width = 36
      Height = 17
      Caption = 'Nome'
    end
    object btnPesquisar: TPraButtonStyle
      Left = 254
      Top = 31
      Width = 60
      Height = 25
      Action = ACT_PESQUISAR
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = clWindowText
      FontDown.Height = -11
      FontDown.Name = 'Tahoma'
      FontDown.Style = []
      FontFocused.Charset = DEFAULT_CHARSET
      FontFocused.Color = clWindowText
      FontFocused.Height = -11
      FontFocused.Name = 'Tahoma'
      FontFocused.Style = []
      FontDisabled.Charset = DEFAULT_CHARSET
      FontDisabled.Color = clWindowText
      FontDisabled.Height = -11
      FontDisabled.Name = 'Tahoma'
      FontDisabled.Style = []
      Caption = 'Pesquisar'
      TabOrder = 2
    end
    object gdResultado: TRzDBGrid
      Left = 10
      Top = 74
      Width = 563
      Height = 153
      DataSource = DS_PESQ
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDblClick = gdResultadoDblClick
    end
    object edtFiltro: TRzEdit
      Left = 10
      Top = 31
      Width = 238
      Height = 25
      Text = ''
      CharCase = ecUpperCase
      TabOnEnter = True
      TabOrder = 1
    end
  end
  object pnlOpcoes: TRzPanel
    Left = 0
    Top = 239
    Width = 583
    Height = 24
    Align = alBottom
    BorderOuter = fsFlat
    Color = clInfoBk
    TabOrder = 1
    object lblLegenda: TRzLabel
      Left = 433
      Top = 5
      Width = 140
      Height = 13
      Caption = '** Duplo Clique para Editar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
  end
  object DS_PESQ: TDataSource
    DataSet = DM_BD.CDS_AUX
    Left = 400
    Top = 112
  end
  object ActionList: TActionList
    Left = 248
    Top = 128
    object ACT_PESQUISAR: TAction
      Caption = 'Pesquisar'
      OnExecute = ACT_PESQUISARExecute
    end
  end
end
