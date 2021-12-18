unit DMBD;

interface

uses
  System.SysUtils, System.Classes, Data.DBXMySQL, Data.DBXPool, Data.DB,
  Data.SqlExpr, Data.FMTBcd, Datasnap.Provider, Datasnap.DBClient;

type
  TDM_BD = class(TDataModule)
    SQLConnection: TSQLConnection;
    SQLDS_VOTACOES: TSQLDataSet;
    CDS_VOTACOES: TClientDataSet;
    DSP_VOTACOES: TDataSetProvider;
    SQLDS_VOTACOESIDVOTACAO: TIntegerField;
    SQLDS_VOTACOESIDCANDIDATO: TIntegerField;
    SQLDS_VOTACOESIDELEICAO: TIntegerField;
    SQLDS_VOTACOESQTDVOTOS: TIntegerField;
    SQLDS_VOTACOESATIVO: TStringField;
    CDS_VOTACOESIDVOTACAO: TIntegerField;
    CDS_VOTACOESIDCANDIDATO: TIntegerField;
    CDS_VOTACOESIDELEICAO: TIntegerField;
    CDS_VOTACOESQTDVOTOS: TIntegerField;
    CDS_VOTACOESATIVO: TStringField;
    SQLDS_CANDIDATOS: TSQLDataSet;
    CDS_CANDIDATOS: TClientDataSet;
    DSP_CANDIDATOS: TDataSetProvider;
    SQLDS_PARTIDOS: TSQLDataSet;
    CDS_PARTIDOS: TClientDataSet;
    DSP_PARTIDOS: TDataSetProvider;
    SQLDS_ELEICOES: TSQLDataSet;
    CDS_ELEICOES: TClientDataSet;
    DSP_ELEICOES: TDataSetProvider;
    SQLDS_CANDIDATOSIDCANDIDATO: TIntegerField;
    SQLDS_CANDIDATOSNOMECANDIDATO: TStringField;
    SQLDS_CANDIDATOSNUMCANDIDATO: TIntegerField;
    SQLDS_CANDIDATOSCARGOCANDIDATO: TStringField;
    SQLDS_CANDIDATOSATIVO: TStringField;
    SQLDS_CANDIDATOSIDPARTIDO: TIntegerField;
    SQLDS_CANDIDATOSFOTO: TBlobField;
    CDS_CANDIDATOSIDCANDIDATO: TIntegerField;
    CDS_CANDIDATOSNOMECANDIDATO: TStringField;
    CDS_CANDIDATOSNUMCANDIDATO: TIntegerField;
    CDS_CANDIDATOSCARGOCANDIDATO: TStringField;
    CDS_CANDIDATOSATIVO: TStringField;
    CDS_CANDIDATOSIDPARTIDO: TIntegerField;
    CDS_CANDIDATOSFOTO: TBlobField;
    SQLDS_PARTIDOSIDPARTIDO: TIntegerField;
    SQLDS_PARTIDOSNOMEPARTIDO: TStringField;
    SQLDS_PARTIDOSNUMPARTIDO: TShortintField;
    SQLDS_PARTIDOSATIVO: TStringField;
    SQLDS_PARTIDOSLOGO: TBlobField;
    CDS_PARTIDOSIDPARTIDO: TIntegerField;
    CDS_PARTIDOSNOMEPARTIDO: TStringField;
    CDS_PARTIDOSNUMPARTIDO: TShortintField;
    CDS_PARTIDOSATIVO: TStringField;
    CDS_PARTIDOSLOGO: TBlobField;
    SQLDS_PARTIDOSSIGLA: TStringField;
    CDS_PARTIDOSSIGLA: TStringField;
    SQLDS_CANDIDATOSIDELEICAO: TIntegerField;
    SQLDS_CANDIDATOSUF: TStringField;
    CDS_CANDIDATOSIDELEICAO: TIntegerField;
    CDS_CANDIDATOSUF: TStringField;
    SQLDS_ELEICOESIDELEICAO: TIntegerField;
    SQLDS_ELEICOESDESCRICAOELEICAO: TStringField;
    SQLDS_ELEICOESDATAELEICAO: TDateField;
    SQLDS_ELEICOESTURNOELEICAO: TShortintField;
    SQLDS_ELEICOESATIVO: TStringField;
    CDS_ELEICOESIDELEICAO: TIntegerField;
    CDS_ELEICOESDESCRICAOELEICAO: TStringField;
    CDS_ELEICOESDATAELEICAO: TDateField;
    CDS_ELEICOESTURNOELEICAO: TShortintField;
    CDS_ELEICOESATIVO: TStringField;
    SQLDS_AUX: TSQLDataSet;
    CDS_AUX: TClientDataSet;
    DSP_AUX: TDataSetProvider;
    SQLDS_PARTIDOSDATACADASTRO: TDateField;
    CDS_PARTIDOSDATACADASTRO: TDateField;
    SQLDS_RELPARTIDOS: TSQLDataSet;
    CDS_RELPARTIDOS: TClientDataSet;
    DSP_RELPARTIDOS: TDataSetProvider;
    SQLDS_RELPARTIDOSIDPARTIDO: TIntegerField;
    SQLDS_RELPARTIDOSNOMEPARTIDO: TStringField;
    SQLDS_RELPARTIDOSSIGLA: TStringField;
    SQLDS_RELPARTIDOSNUMPARTIDO: TShortintField;
    SQLDS_RELPARTIDOSDATACADASTRO: TDateField;
    SQLDS_RELPARTIDOSATIVO: TStringField;
    CDS_RELPARTIDOSIDPARTIDO: TIntegerField;
    CDS_RELPARTIDOSNOMEPARTIDO: TStringField;
    CDS_RELPARTIDOSSIGLA: TStringField;
    CDS_RELPARTIDOSNUMPARTIDO: TShortintField;
    CDS_RELPARTIDOSDATACADASTRO: TDateField;
    CDS_RELPARTIDOSATIVO: TStringField;
    SQLDS_RELAPURACAO: TSQLDataSet;
    CDS_RELAPURACAO: TClientDataSet;
    DSP_RELAPURACAO: TDataSetProvider;
    SQLDS_RELAPURACAOIDELEICAO: TIntegerField;
    SQLDS_RELAPURACAODESCRICAOELEICAO: TStringField;
    SQLDS_RELAPURACAOTURNOELEICAO: TShortintField;
    SQLDS_RELAPURACAOIDCANDIDATO: TIntegerField;
    SQLDS_RELAPURACAONOMECANDIDATO: TStringField;
    SQLDS_RELAPURACAOIDPARTIDO: TIntegerField;
    SQLDS_RELAPURACAOSIGLA: TStringField;
    SQLDS_RELAPURACAONUMCANDIDATO: TIntegerField;
    SQLDS_RELAPURACAOCARGOCANDIDATO: TStringField;
    SQLDS_RELAPURACAOUF: TStringField;
    SQLDS_RELAPURACAOQTDVOTOS: TIntegerField;
    CDS_RELAPURACAOIDELEICAO: TIntegerField;
    CDS_RELAPURACAODESCRICAOELEICAO: TStringField;
    CDS_RELAPURACAOTURNOELEICAO: TShortintField;
    CDS_RELAPURACAOIDCANDIDATO: TIntegerField;
    CDS_RELAPURACAONOMECANDIDATO: TStringField;
    CDS_RELAPURACAOIDPARTIDO: TIntegerField;
    CDS_RELAPURACAOSIGLA: TStringField;
    CDS_RELAPURACAONUMCANDIDATO: TIntegerField;
    CDS_RELAPURACAOCARGOCANDIDATO: TStringField;
    CDS_RELAPURACAOUF: TStringField;
    CDS_RELAPURACAOQTDVOTOS: TIntegerField;
    procedure CDS_ELEICOESAfterPost(DataSet: TDataSet);
    procedure CDS_ELEICOESAfterDelete(DataSet: TDataSet);
    procedure CDS_VOTACOESAfterPost(DataSet: TDataSet);
    procedure CDS_CANDIDATOSAfterDelete(DataSet: TDataSet);
    procedure CDS_CANDIDATOSAfterCancel(DataSet: TDataSet);
    procedure CDS_CANDIDATOSAfterPost(DataSet: TDataSet);
    procedure CDS_PARTIDOSAfterCancel(DataSet: TDataSet);
    procedure CDS_PARTIDOSAfterDelete(DataSet: TDataSet);
    procedure CDS_PARTIDOSAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_BD: TDM_BD;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM_BD.CDS_CANDIDATOSAfterCancel(DataSet: TDataSet);
begin
   DM_BD.CDS_CANDIDATOS.Insert;
end;

procedure TDM_BD.CDS_CANDIDATOSAfterDelete(DataSet: TDataSet);
begin
   DM_BD.CDS_CANDIDATOS.ApplyUpdates(0);
end;

procedure TDM_BD.CDS_CANDIDATOSAfterPost(DataSet: TDataSet);
begin
   DM_BD.CDS_CANDIDATOS.ApplyUpdates(0);
end;

procedure TDM_BD.CDS_ELEICOESAfterDelete(DataSet: TDataSet);
begin
   DM_BD.CDS_ELEICOES.ApplyUpdates(0);
end;

procedure TDM_BD.CDS_ELEICOESAfterPost(DataSet: TDataSet);
begin
   DM_BD.CDS_ELEICOES.ApplyUpdates(0);
end;

procedure TDM_BD.CDS_PARTIDOSAfterCancel(DataSet: TDataSet);
begin
   DM_BD.CDS_PARTIDOS.Insert;
end;

procedure TDM_BD.CDS_PARTIDOSAfterDelete(DataSet: TDataSet);
begin
   DM_BD.CDS_PARTIDOS.ApplyUpdates(0);
end;

procedure TDM_BD.CDS_PARTIDOSAfterPost(DataSet: TDataSet);
begin
   DM_BD.CDS_PARTIDOS.ApplyUpdates(0);
end;

procedure TDM_BD.CDS_VOTACOESAfterPost(DataSet: TDataSet);
begin
   DM_BD.CDS_VOTACOES.ApplyUpdates(0);
end;

end.
