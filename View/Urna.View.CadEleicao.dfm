object FRM_CADELEICAO: TFRM_CADELEICAO
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Elei'#231#245'es'
  ClientHeight = 178
  ClientWidth = 343
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
  object lblCodigo: TRzLabel
    Left = 16
    Top = 8
    Width = 43
    Height = 17
    Caption = 'C'#243'digo'
  end
  object lblDescricao: TRzLabel
    Left = 16
    Top = 62
    Width = 57
    Height = 17
    Caption = 'Descri'#231#227'o'
  end
  object lblData: TRzLabel
    Left = 96
    Top = 8
    Width = 72
    Height = 17
    Caption = 'Data Elei'#231#227'o'
  end
  object RzLabel3: TRzLabel
    Left = 215
    Top = 8
    Width = 38
    Height = 17
    Caption = 'Turno '
  end
  object btnSalvar: TPraButtonStyle
    Left = 16
    Top = 126
    Width = 94
    Height = 28
    OnClick = btnSalvarClick
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Pen.Color = clGreen
    PenDown.Color = clWhite
    PenFocused.Color = clWhite
    Brush.Color = clGreen
    BrushDown.Color = clGreen
    BrushFocused.Color = clGreen
    FontDown.Charset = DEFAULT_CHARSET
    FontDown.Color = clWhite
    FontDown.Height = -13
    FontDown.Name = 'Arial'
    FontDown.Style = []
    FontFocused.Charset = DEFAULT_CHARSET
    FontFocused.Color = clWhite
    FontFocused.Height = -13
    FontFocused.Name = 'Arial'
    FontFocused.Style = []
    FontDisabled.Charset = DEFAULT_CHARSET
    FontDisabled.Color = clWindowText
    FontDisabled.Height = -11
    FontDisabled.Name = 'Tahoma'
    FontDisabled.Style = []
    Caption = 'Salvar'
    TabOrder = 0
    Radius = 0
  end
  object btnCancelar: TPraButtonStyle
    Left = 121
    Top = 126
    Width = 80
    Height = 28
    OnClick = btnCancelarClick
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Pen.Color = clRed
    PenDown.Color = clWhite
    PenFocused.Color = clWhite
    Brush.Color = clRed
    BrushDown.Color = clRed
    BrushFocused.Color = clRed
    FontDown.Charset = DEFAULT_CHARSET
    FontDown.Color = clWhite
    FontDown.Height = -13
    FontDown.Name = 'Arial'
    FontDown.Style = []
    FontFocused.Charset = DEFAULT_CHARSET
    FontFocused.Color = clWhite
    FontFocused.Height = -13
    FontFocused.Name = 'Arial'
    FontFocused.Style = []
    FontDisabled.Charset = DEFAULT_CHARSET
    FontDisabled.Color = clWindowText
    FontDisabled.Height = -11
    FontDisabled.Name = 'Tahoma'
    FontDisabled.Style = []
    Caption = 'Cancelar'
    TabOrder = 4
    Radius = 0
  end
  object edtCodigo: TRzDBEdit
    Left = 16
    Top = 29
    Width = 65
    Height = 25
    DataSource = DataSource
    DataField = 'IDELEICAO'
    ReadOnly = True
    Color = clInfoBk
    TabOrder = 1
  end
  object edtTurno: TRzDBEdit
    Left = 215
    Top = 29
    Width = 38
    Height = 25
    DataSource = DataSource
    DataField = 'TURNOELEICAO'
    TabOrder = 2
  end
  object edtDescricao: TRzDBEdit
    Left = 16
    Top = 82
    Width = 312
    Height = 25
    DataSource = DataSource
    DataField = 'DESCRICAOELEICAO'
    TabOrder = 3
  end
  object dtEleicao: TRzDBDateTimeEdit
    Left = 96
    Top = 29
    Width = 105
    Height = 25
    DataSource = DataSource
    DataField = 'DATAELEICAO'
    TabOrder = 5
    EditType = etDate
  end
  object chkAtivo: TRzDBCheckBox
    Left = 280
    Top = 31
    Width = 48
    Height = 19
    DataField = 'ATIVO'
    DataSource = DataSource
    ValueChecked = 'S'
    ValueUnchecked = 'N'
    Caption = 'Ativo'
    TabOrder = 6
  end
  object DataSource: TDataSource
    DataSet = DM_BD.CDS_ELEICOES
    Left = 280
    Top = 72
  end
end
