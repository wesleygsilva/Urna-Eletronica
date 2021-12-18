object FRM_RELAPURACAO: TFRM_RELAPURACAO
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Apura'#231#227'o de Elei'#231#227'o'
  ClientHeight = 607
  ClientWidth = 1223
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 17
  object pnlOpcoes: TRzPanel
    Left = 0
    Top = 561
    Width = 1223
    Height = 46
    Align = alBottom
    BorderOuter = fsFlat
    Color = clInfoBk
    TabOrder = 0
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
  object pnlMain: TRzPanel
    Left = 0
    Top = 0
    Width = 1223
    Height = 561
    Align = alClient
    BorderOuter = fsFlat
    Color = clWhite
    TabOrder = 1
    object lblCandidato: TRzLabel
      Left = 102
      Top = 14
      Width = 60
      Height = 17
      Caption = 'Candidato'
    end
    object lblPartido: TRzLabel
      Left = 12
      Top = 14
      Width = 42
      Height = 17
      Caption = 'Partido'
    end
    object lblEleicao: TRzLabel
      Left = 12
      Top = 151
      Width = 41
      Height = 17
      Caption = 'Elei'#231#227'o'
    end
    object edtCandidato: TRzEdit
      Left = 102
      Top = 37
      Width = 267
      Height = 25
      Text = ''
      CharCase = ecUpperCase
      TabOnEnter = True
      TabOrder = 1
    end
    object edtPartido: TRzEdit
      Left = 12
      Top = 37
      Width = 85
      Height = 25
      Text = ''
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object chkCargo: TRzCheckGroup
      Left = 12
      Top = 70
      Width = 357
      Height = 75
      Caption = 'Cargo: '
      Columns = 3
      Items.Strings = (
        'Deputado Federal'
        'Deputado Estadual'
        'Senador'
        'Governador'
        'Presidente')
      TabOrder = 2
      Transparent = True
      CheckStates = (
        0
        0
        0
        0
        0)
    end
    object RLLabel2: TRLLabel
      Left = 456
      Top = 176
      Width = 56
      Height = 17
    end
  end
  object cbEleicao: TDBLookupComboBox
    Left = 12
    Top = 174
    Width = 357
    Height = 25
    KeyField = 'IDELEICAO'
    ListField = 'DESCRICAOELEICAO'
    ListSource = DS_ELEICOES
    TabOrder = 2
  end
  object RLReport: TRLReport
    Left = 405
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
        Width = 200
        Height = 24
        Caption = 'Apura'#231#227'o de Elei'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblFiltros: TRLLabel
        Left = 0
        Top = 60
        Width = 43
        Height = 15
        Caption = 'Filtros: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object bandFooter: TRLBand
      Left = 38
      Top = 217
      Width = 718
      Height = 11
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
    end
    object edtEleicao: TRLDBText
      Left = 319
      Top = 135
      Width = 172
      Height = 19
      DataField = 'DESCRICAOELEICAO'
      DataSource = DS_REL
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Text = ''
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 129
      Width = 718
      Height = 88
      DataFields = 'CARGOCANDIDATO'
      object bandHeader: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 56
        BandType = btColumnHeader
        object RLLabel8: TRLLabel
          Left = 0
          Top = 45
          Width = 719
          Height = 12
          Caption = 
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '---------------'
        end
        object RLLabel3: TRLLabel
          Left = 40
          Top = 38
          Width = 35
          Height = 15
          Caption = 'Turno'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 81
          Top = 38
          Width = 60
          Height = 15
          Caption = 'Candidato'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 424
          Top = 35
          Width = 42
          Height = 15
          Caption = 'Partido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 300
          Top = 37
          Width = 48
          Height = 15
          Caption = 'N'#250'mero'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 571
          Top = 38
          Width = 31
          Height = 15
          Caption = 'UF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 608
          Top = 38
          Width = 73
          Height = 15
          Alignment = taRightJustify
          Caption = 'Votos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 311
          Top = 3
          Width = 115
          Height = 15
          DataField = 'CARGOCANDIDATO'
          DataSource = DS_REL
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object bandDetail: TRLBand
        Left = 0
        Top = 56
        Width = 718
        Height = 25
        object RLDBText1: TRLDBText
          Left = 40
          Top = 2
          Width = 35
          Height = 15
          DataField = 'TURNOELEICAO'
          DataSource = DS_REL
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 81
          Top = 2
          Width = 208
          Height = 15
          DataField = 'NOMECANDIDATO'
          DataSource = DS_REL
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 300
          Top = 2
          Width = 99
          Height = 15
          DataField = 'NUMCANDIDATO'
          DataSource = DS_REL
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 424
          Top = 2
          Width = 81
          Height = 15
          DataField = 'SIGLA'
          DataSource = DS_REL
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 571
          Top = 2
          Width = 31
          Height = 15
          DataField = 'UF'
          DataSource = DS_REL
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 608
          Top = 2
          Width = 73
          Height = 15
          Alignment = taRightJustify
          DataField = 'QTDVOTOS'
          DataSource = DS_REL
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
    end
  end
  object DS_REL: TDataSource
    DataSet = DM_BD.CDS_RELAPURACAO
    Left = 288
    Top = 16
  end
  object ActionList: TActionList
    Left = 224
    Top = 56
    object ACT_IMPRIMIR: TAction
      Caption = 'Imprimir (F10)'
      ShortCut = 121
      OnExecute = ACT_IMPRIMIRExecute
    end
  end
  object DS_ELEICOES: TDataSource
    DataSet = DM_BD.CDS_ELEICOES
    Left = 288
    Top = 80
  end
end
