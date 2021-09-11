object DM_BD: TDM_BD
  OldCreateOrder = False
  Height = 402
  Width = 648
  object SQLConnection: TSQLConnection
    ConnectionName = 'MySQLConnection'
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver240.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver240.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=24.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverMYSQL'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'MaxBlobSize=-1'
      'DriverName=MySQL'
      'HostName=localhost'
      'Database=myeleicoes'
      'User_Name=root'
      'Password='
      'ServerCharSet='
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'ConnectTimeout=60')
    Connected = True
    Left = 304
    Top = 24
  end
  object SQLDS_VOTACOES: TSQLDataSet
    CommandText = 
      'SELECT '#13#10'V.* '#13#10'FROM '#13#10'VOTACOES V '#13#10'WHERE '#13#10'(V.IDVOTACAO = :IDVOT' +
      'ACAO OR :IDVOTACAO = 0)'#13#10'AND '#13#10'(V.IDCANDIDATO = :IDCANDIDATO)'#13#10'A' +
      'ND'#13#10'(V.IDELEICAO = :IDELEICAO)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'IDVOTACAO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IDVOTACAO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IDCANDIDATO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IDELEICAO'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 280
    Top = 96
    object SQLDS_VOTACOESIDVOTACAO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDVOTACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SQLDS_VOTACOESIDCANDIDATO: TIntegerField
      FieldName = 'IDCANDIDATO'
      Required = True
    end
    object SQLDS_VOTACOESIDELEICAO: TIntegerField
      FieldName = 'IDELEICAO'
      Required = True
    end
    object SQLDS_VOTACOESQTDVOTOS: TIntegerField
      FieldName = 'QTDVOTOS'
      Required = True
    end
    object SQLDS_VOTACOESATIVO: TStringField
      FieldName = 'ATIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object CDS_VOTACOES: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'IDVOTACAO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IDVOTACAO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IDCANDIDATO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IDELEICAO'
        ParamType = ptInput
      end>
    ProviderName = 'DSP_VOTACOES'
    AfterPost = CDS_VOTACOESAfterPost
    Left = 320
    Top = 96
    object CDS_VOTACOESIDVOTACAO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDVOTACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDS_VOTACOESIDCANDIDATO: TIntegerField
      FieldName = 'IDCANDIDATO'
      Required = True
    end
    object CDS_VOTACOESIDELEICAO: TIntegerField
      FieldName = 'IDELEICAO'
      Required = True
    end
    object CDS_VOTACOESQTDVOTOS: TIntegerField
      FieldName = 'QTDVOTOS'
      Required = True
    end
    object CDS_VOTACOESATIVO: TStringField
      FieldName = 'ATIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSP_VOTACOES: TDataSetProvider
    DataSet = SQLDS_VOTACOES
    Left = 304
    Top = 96
  end
  object SQLDS_CANDIDATOS: TSQLDataSet
    CommandText = 
      'SELECT '#13#10'C.*'#13#10'FROM '#13#10'CANDIDATOS C'#13#10'WHERE'#13#10'(C.IDCANDIDATO = :IDCA' +
      'NDIDATO OR :IDCANDIDATO = 0)'#13#10'AND'#13#10'(C.NUMCANDIDATO = :NUMCANDIDA' +
      'TO)'#13#10'AND'#13#10'(C.CARGOCANDIDATO = :CARGOCANDIDATO)'#13#10'AND'#13#10'(C.UF = :UF' +
      ' OR :UF = '#39#39')'#13#10'AND'#13#10'(C.IDELEICAO = :IDELEICAO)'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'IDCANDIDATO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IDCANDIDATO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUMCANDIDATO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CARGOCANDIDATO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'UF'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'UF'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IDELEICAO'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 272
    Top = 168
    object SQLDS_CANDIDATOSIDCANDIDATO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDCANDIDATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SQLDS_CANDIDATOSNOMECANDIDATO: TStringField
      FieldName = 'NOMECANDIDATO'
      Required = True
      Size = 255
    end
    object SQLDS_CANDIDATOSNUMCANDIDATO: TIntegerField
      FieldName = 'NUMCANDIDATO'
      Required = True
    end
    object SQLDS_CANDIDATOSCARGOCANDIDATO: TStringField
      FieldName = 'CARGOCANDIDATO'
      Required = True
      Size = 255
    end
    object SQLDS_CANDIDATOSATIVO: TStringField
      FieldName = 'ATIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SQLDS_CANDIDATOSIDPARTIDO: TIntegerField
      FieldName = 'IDPARTIDO'
      Required = True
    end
    object SQLDS_CANDIDATOSFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 1
    end
    object SQLDS_CANDIDATOSIDELEICAO: TIntegerField
      FieldName = 'IDELEICAO'
      Required = True
    end
    object SQLDS_CANDIDATOSUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
  end
  object CDS_CANDIDATOS: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'IDCANDIDATO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IDCANDIDATO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUMCANDIDATO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CARGOCANDIDATO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'UF'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'UF'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IDELEICAO'
        ParamType = ptInput
      end>
    ProviderName = 'DSP_CANDIDATOS'
    AfterPost = CDS_CANDIDATOSAfterPost
    AfterCancel = CDS_CANDIDATOSAfterCancel
    AfterDelete = CDS_CANDIDATOSAfterDelete
    Left = 328
    Top = 168
    object CDS_CANDIDATOSIDCANDIDATO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDCANDIDATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDS_CANDIDATOSNOMECANDIDATO: TStringField
      FieldName = 'NOMECANDIDATO'
      Required = True
      Size = 255
    end
    object CDS_CANDIDATOSNUMCANDIDATO: TIntegerField
      FieldName = 'NUMCANDIDATO'
      Required = True
    end
    object CDS_CANDIDATOSCARGOCANDIDATO: TStringField
      FieldName = 'CARGOCANDIDATO'
      Required = True
      Size = 255
    end
    object CDS_CANDIDATOSATIVO: TStringField
      FieldName = 'ATIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_CANDIDATOSIDPARTIDO: TIntegerField
      FieldName = 'IDPARTIDO'
      Required = True
    end
    object CDS_CANDIDATOSFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 1
    end
    object CDS_CANDIDATOSIDELEICAO: TIntegerField
      FieldName = 'IDELEICAO'
      Required = True
    end
    object CDS_CANDIDATOSUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
  end
  object DSP_CANDIDATOS: TDataSetProvider
    DataSet = SQLDS_CANDIDATOS
    Left = 296
    Top = 168
  end
  object SQLDS_PARTIDOS: TSQLDataSet
    CommandText = 
      'SELECT '#13#10'P.*'#13#10'FROM'#13#10'PARTIDOS P'#13#10'WHERE'#13#10'(P.IDPARTIDO = :IDPARTIDO' +
      ' OR :IDPARTIDO = 0)'#13#10'AND'#13#10'(P.NUMPARTIDO = :NUMPARTIDO OR :NUMPAR' +
      'TIDO = '#39#39')'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'IDPARTIDO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IDPARTIDO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUMPARTIDO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUMPARTIDO'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 272
    Top = 240
    object SQLDS_PARTIDOSIDPARTIDO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDPARTIDO'
    end
    object SQLDS_PARTIDOSNOMEPARTIDO: TStringField
      FieldName = 'NOMEPARTIDO'
      Required = True
      Size = 255
    end
    object SQLDS_PARTIDOSNUMPARTIDO: TShortintField
      FieldName = 'NUMPARTIDO'
      Required = True
    end
    object SQLDS_PARTIDOSATIVO: TStringField
      FieldName = 'ATIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SQLDS_PARTIDOSLOGO: TBlobField
      FieldName = 'LOGO'
      Size = 1
    end
    object SQLDS_PARTIDOSSIGLA: TStringField
      FieldName = 'SIGLA'
      Required = True
      Size = 10
    end
    object SQLDS_PARTIDOSDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
  end
  object CDS_PARTIDOS: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'IDPARTIDO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IDPARTIDO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUMPARTIDO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUMPARTIDO'
        ParamType = ptInput
      end>
    ProviderName = 'DSP_PARTIDOS'
    AfterPost = CDS_PARTIDOSAfterPost
    AfterCancel = CDS_PARTIDOSAfterCancel
    AfterDelete = CDS_PARTIDOSAfterDelete
    Left = 328
    Top = 240
    object CDS_PARTIDOSIDPARTIDO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDPARTIDO'
    end
    object CDS_PARTIDOSNOMEPARTIDO: TStringField
      FieldName = 'NOMEPARTIDO'
      Required = True
      Size = 255
    end
    object CDS_PARTIDOSNUMPARTIDO: TShortintField
      FieldName = 'NUMPARTIDO'
      Required = True
    end
    object CDS_PARTIDOSATIVO: TStringField
      FieldName = 'ATIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_PARTIDOSLOGO: TBlobField
      FieldName = 'LOGO'
      Size = 1
    end
    object CDS_PARTIDOSSIGLA: TStringField
      FieldName = 'SIGLA'
      Required = True
      Size = 10
    end
    object CDS_PARTIDOSDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
  end
  object DSP_PARTIDOS: TDataSetProvider
    DataSet = SQLDS_PARTIDOS
    Left = 296
    Top = 240
  end
  object SQLDS_ELEICOES: TSQLDataSet
    CommandText = 
      'SELECT '#13#10'E.* '#13#10'FROM ELEICOES E'#13#10'WHERE'#13#10'(E.IDELEICAO = :IDELEICAO' +
      ' OR :IDELEICAO = 0)'#13#10'AND '#13#10'(E.DATAELEICAO = :DATA OR :DATA = '#39#39')'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'IDELEICAO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IDELEICAO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DATA'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 272
    Top = 320
    object SQLDS_ELEICOESIDELEICAO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDELEICAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SQLDS_ELEICOESDESCRICAOELEICAO: TStringField
      FieldName = 'DESCRICAOELEICAO'
      Required = True
      Size = 255
    end
    object SQLDS_ELEICOESDATAELEICAO: TDateField
      FieldName = 'DATAELEICAO'
    end
    object SQLDS_ELEICOESTURNOELEICAO: TShortintField
      FieldName = 'TURNOELEICAO'
      Required = True
    end
    object SQLDS_ELEICOESATIVO: TStringField
      FieldName = 'ATIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object CDS_ELEICOES: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'IDELEICAO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IDELEICAO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DATA'
        ParamType = ptInput
      end>
    ProviderName = 'DSP_ELEICOES'
    AfterPost = CDS_ELEICOESAfterPost
    AfterDelete = CDS_ELEICOESAfterDelete
    Left = 328
    Top = 320
    object CDS_ELEICOESIDELEICAO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDELEICAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDS_ELEICOESDESCRICAOELEICAO: TStringField
      FieldName = 'DESCRICAOELEICAO'
      Required = True
      Size = 255
    end
    object CDS_ELEICOESDATAELEICAO: TDateField
      FieldName = 'DATAELEICAO'
    end
    object CDS_ELEICOESTURNOELEICAO: TShortintField
      FieldName = 'TURNOELEICAO'
      Required = True
    end
    object CDS_ELEICOESATIVO: TStringField
      FieldName = 'ATIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSP_ELEICOES: TDataSetProvider
    DataSet = SQLDS_ELEICOES
    Left = 304
    Top = 320
  end
  object SQLDS_AUX: TSQLDataSet
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection
    Left = 528
    Top = 328
  end
  object CDS_AUX: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    ProviderName = 'DSP_AUX'
    AfterPost = CDS_CANDIDATOSAfterPost
    AfterCancel = CDS_CANDIDATOSAfterCancel
    AfterDelete = CDS_CANDIDATOSAfterDelete
    Left = 584
    Top = 328
  end
  object DSP_AUX: TDataSetProvider
    DataSet = SQLDS_AUX
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 552
    Top = 328
  end
  object SQLDS_RELPARTIDOS: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'P.IDPARTIDO ,'#13#10'P.NOMEPARTIDO,'#13#10'P.SIGLA ,'#13#10'P.NUMPARTIDO,'#13 +
      #10'P.DATACADASTRO,'#13#10'case P.ATIVO'#13#10'when '#39'S'#39' then '#39'ATIVO'#39#13#10'when '#39'N'#39' ' +
      'then '#39'INATIVO'#39#13#10'end as ATIVO'#13#10'FROM PARTIDOS P'#13#10'WHERE '#13#10'(P.SIGLA ' +
      '= :SIGLA OR :SIGLA = '#39#39')'#13#10'AND '#13#10'(P.NOMEPARTIDO LIKE :NOMEPARTIDO' +
      ' OR :NOMEPARTIDO = '#39#39')'#13#10'AND '#13#10'(P.ATIVO = :STATUS OR :STATUS = '#39'T' +
      #39')'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'SIGLA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SIGLA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOMEPARTIDO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOMEPARTIDO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'STATUS'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 528
    Top = 280
    object SQLDS_RELPARTIDOSIDPARTIDO: TIntegerField
      FieldName = 'IDPARTIDO'
      Required = True
    end
    object SQLDS_RELPARTIDOSNOMEPARTIDO: TStringField
      FieldName = 'NOMEPARTIDO'
      Required = True
      Size = 255
    end
    object SQLDS_RELPARTIDOSSIGLA: TStringField
      FieldName = 'SIGLA'
      Required = True
      Size = 10
    end
    object SQLDS_RELPARTIDOSNUMPARTIDO: TShortintField
      FieldName = 'NUMPARTIDO'
      Required = True
    end
    object SQLDS_RELPARTIDOSDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object SQLDS_RELPARTIDOSATIVO: TStringField
      DisplayWidth = 15
      FieldName = 'ATIVO'
      Required = True
      FixedChar = True
      Size = 15
    end
  end
  object CDS_RELPARTIDOS: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'SIGLA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SIGLA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOMEPARTIDO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOMEPARTIDO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'STATUS'
        ParamType = ptInput
      end>
    ProviderName = 'DSP_RELPARTIDOS'
    AfterPost = CDS_CANDIDATOSAfterPost
    AfterCancel = CDS_CANDIDATOSAfterCancel
    AfterDelete = CDS_CANDIDATOSAfterDelete
    Left = 584
    Top = 280
    object CDS_RELPARTIDOSIDPARTIDO: TIntegerField
      FieldName = 'IDPARTIDO'
      Required = True
    end
    object CDS_RELPARTIDOSNOMEPARTIDO: TStringField
      FieldName = 'NOMEPARTIDO'
      Required = True
      Size = 255
    end
    object CDS_RELPARTIDOSSIGLA: TStringField
      FieldName = 'SIGLA'
      Required = True
      Size = 10
    end
    object CDS_RELPARTIDOSNUMPARTIDO: TShortintField
      FieldName = 'NUMPARTIDO'
      Required = True
    end
    object CDS_RELPARTIDOSDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object CDS_RELPARTIDOSATIVO: TStringField
      DisplayWidth = 15
      FieldName = 'ATIVO'
      Required = True
      FixedChar = True
      Size = 15
    end
  end
  object DSP_RELPARTIDOS: TDataSetProvider
    DataSet = SQLDS_RELPARTIDOS
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 552
    Top = 280
  end
end
