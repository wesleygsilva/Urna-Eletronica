object FRM_RELPARTIDOS: TFRM_RELPARTIDOS
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Partidos'
  ClientHeight = 226
  ClientWidth = 297
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object RLReport: TRLReport
    Left = 224
    Top = 8
    Width = 794
    Height = 1123
    DataSource = DS_REL
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    object bandTitle: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 91
      BandType = btTitle
      object RLLabel1: TRLLabel
        Left = -1
        Top = 72
        Width = 739
        Height = 17
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '-------------------'
      end
      object lblTitulo: TRLLabel
        Left = 259
        Top = 16
        Width = 199
        Height = 30
        Caption = 'Listagem de Partidos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblFiltros: TRLLabel
        Left = 0
        Top = 60
        Width = 46
        Height = 17
        Caption = 'Filtros: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        BeforePrint = lblFiltrosBeforePrint
      end
    end
    object bandHeader: TRLBand
      Left = 38
      Top = 129
      Width = 718
      Height = 24
      BandType = btColumnHeader
      object RLLabel8: TRLLabel
        Left = -1
        Top = 12
        Width = 719
        Height = 12
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '---------------'
      end
      object RLLabel2: TRLLabel
        Left = 11
        Top = 3
        Width = 42
        Height = 15
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 66
        Top = 3
        Width = 62
        Height = 15
        Caption = 'Partido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 430
        Top = 3
        Width = 28
        Height = 15
        Caption = 'Sigla'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 496
        Top = 3
        Width = 47
        Height = 15
        Caption = 'N'#250'mero'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 569
        Top = 3
        Width = 77
        Height = 15
        Caption = 'Data Cadastro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 672
        Top = 3
        Width = 35
        Height = 15
        Caption = 'Status'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
    end
    object bandDetail: TRLBand
      Left = 38
      Top = 153
      Width = 718
      Height = 23
      object edtCodigo: TRLDBText
        Left = 11
        Top = 4
        Width = 42
        Height = 15
        Alignment = taRightJustify
        DataField = 'IDPARTIDO'
        DataSource = DS_REL
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object edtPartido: TRLDBText
        Left = 66
        Top = 4
        Width = 351
        Height = 15
        DataField = 'NOMEPARTIDO'
        DataSource = DS_REL
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object edtDBSigla: TRLDBText
        Left = 424
        Top = 4
        Width = 34
        Height = 15
        Alignment = taRightJustify
        DataField = 'SIGLA'
        DataSource = DS_REL
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object edtNumero: TRLDBText
        Left = 464
        Top = 4
        Width = 79
        Height = 15
        Alignment = taRightJustify
        DataField = 'NUMPARTIDO'
        DataSource = DS_REL
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object edtStatus: TRLDBText
        Left = 671
        Top = 4
        Width = 36
        Height = 15
        Alignment = taRightJustify
        DataField = 'ATIVO'
        DataSource = DS_REL
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object edtCadastro: TRLDBText
        Left = 553
        Top = 4
        Width = 93
        Height = 15
        Alignment = taRightJustify
        DataField = 'DATACADASTRO'
        DataSource = DS_REL
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object bandFooter: TRLBand
      Left = 38
      Top = 176
      Width = 718
      Height = 33
      BandType = btSummary
      object RLLabel10: TRLLabel
        Left = -3
        Top = -6
        Width = 744
        Height = 17
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '--------------------'
      end
      object RLLabel9: TRLLabel
        Left = 560
        Top = 8
        Width = 97
        Height = 15
        Caption = 'Total de Partidos: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 661
        Top = 6
        Width = 46
        Height = 17
        DataField = 'IDPARTIDO'
        DataSource = DS_REL
        Info = riCount
        Text = ''
      end
    end
  end
  object pnlMain: TRzPanel
    Left = 0
    Top = 0
    Width = 297
    Height = 180
    Align = alClient
    BorderOuter = fsFlat
    Color = clWhite
    TabOrder = 1
    object lblNome: TRzLabel
      Left = 12
      Top = 70
      Width = 36
      Height = 17
      Caption = 'Nome'
    end
    object lblSigla: TRzLabel
      Left = 12
      Top = 14
      Width = 28
      Height = 17
      Caption = 'Sigla'
    end
    object edtNome: TRzEdit
      Left = 12
      Top = 89
      Width = 267
      Height = 25
      Text = ''
      CharCase = ecUpperCase
      TabOnEnter = True
      TabOrder = 1
    end
    object edtSigla: TRzEdit
      Left = 12
      Top = 33
      Width = 65
      Height = 25
      Text = ''
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object rgStatus: TRzRadioGroup
      Left = 12
      Top = 120
      Width = 265
      Height = 48
      Caption = ' Status '
      Columns = 3
      Items.Strings = (
        'Todos'
        'Ativo'
        'Inativo')
      TabOrder = 2
      Transparent = True
    end
  end
  object pnlOpcoes: TRzPanel
    Left = 0
    Top = 180
    Width = 297
    Height = 46
    Align = alBottom
    BorderOuter = fsFlat
    Color = clInfoBk
    TabOrder = 2
    object btnImprimir: TPraButtonStyle
      Left = 12
      Top = 10
      Width = 85
      Height = 25
      Action = ACT_IMPRIMIR
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
      Caption = 'Imprimir (F10)'
      TabOrder = 0
      TabStop = True
    end
  end
  object DS_REL: TDataSource
    DataSet = DM_BD.CDS_RELPARTIDOS
    Left = 120
    Top = 24
  end
  object ActionList: TActionList
    Left = 184
    Top = 32
    object ACT_IMPRIMIR: TAction
      Caption = 'Imprimir (F10)'
      ShortCut = 121
      OnExecute = ACT_IMPRIMIRExecute
    end
  end
end
