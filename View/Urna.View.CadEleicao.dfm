object FRM_CADELEICAO: TFRM_CADELEICAO
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Elei'#231#245'es'
  ClientHeight = 156
  ClientWidth = 271
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object pnlMain: TRzPanel
    Left = 0
    Top = 0
    Width = 271
    Height = 115
    Align = alClient
    BorderOuter = fsFlat
    Color = clWhite
    TabOrder = 0
    object lblTurno: TRzLabel
      Left = 16
      Top = 59
      Width = 38
      Height = 17
      Caption = 'Turno '
    end
    object lblDescricao: TRzLabel
      Left = 87
      Top = 8
      Width = 57
      Height = 17
      Caption = 'Descri'#231#227'o'
    end
    object lblData: TRzLabel
      Left = 89
      Top = 59
      Width = 72
      Height = 17
      Caption = 'Data Elei'#231#227'o'
    end
    object lblCodigo: TRzLabel
      Left = 16
      Top = 8
      Width = 43
      Height = 17
      Caption = 'C'#243'digo'
    end
    object edtDescricao: TRzDBEdit
      Left = 87
      Top = 26
      Width = 168
      Height = 25
      DataSource = DataSource
      DataField = 'DESCRICAOELEICAO'
      CharCase = ecUpperCase
      TabOnEnter = True
      TabOrder = 1
    end
    object edtCodigo: TRzDBEdit
      Left = 16
      Top = 26
      Width = 65
      Height = 25
      TabStop = False
      DataSource = DataSource
      DataField = 'IDELEICAO'
      ReadOnly = True
      Color = clInfoBk
      TabOrder = 0
    end
    object dtEleicao: TRzDBDateTimeEdit
      Left = 89
      Top = 77
      Width = 105
      Height = 25
      DataSource = DataSource
      DataField = 'DATAELEICAO'
      TabOnEnter = True
      TabOrder = 3
      EditType = etDate
    end
    object chkAtivo: TRzDBCheckBox
      Left = 207
      Top = 77
      Width = 48
      Height = 19
      DataField = 'ATIVO'
      DataSource = DataSource
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      Caption = 'Ativo'
      TabOnEnter = True
      TabOrder = 4
    end
    object cbTurno: TRzDBComboBox
      Left = 16
      Top = 77
      Width = 65
      Height = 25
      DataField = 'TURNOELEICAO'
      DataSource = DataSource
      TabOnEnter = True
      TabOrder = 2
      OnKeyPress = cbTurnoKeyPress
      Items.Strings = (
        '1'#186
        '2'#186)
      Values.Strings = (
        '1'
        '2')
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 115
    Width = 271
    Height = 41
    Align = alBottom
    BorderOuter = fsFlat
    Color = clInfoBk
    TabOrder = 1
    object btnSalvar: TPraButtonStyle
      Left = 16
      Top = 8
      Width = 65
      Height = 25
      Action = ACT_SALVAR
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
      Caption = 'Salvar'
      TabOrder = 0
    end
    object btnCancelar: TPraButtonStyle
      Left = 87
      Top = 8
      Width = 65
      Height = 25
      Action = ACT_FECHAR
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
      Caption = 'Cancelar'
      TabOrder = 1
    end
  end
  object DataSource: TDataSource
    DataSet = DM_BD.CDS_ELEICOES
    Left = 832
    Top = 136
  end
  object ActionList: TActionList
    Left = 832
    Top = 80
    object ACT_SALVAR: TAction
      Caption = 'Salvar'
      OnExecute = ACT_SALVARExecute
    end
    object ACT_FECHAR: TAction
      Caption = 'Fechar'
      OnExecute = ACT_FECHARExecute
    end
  end
end
