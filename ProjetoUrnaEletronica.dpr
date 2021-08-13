program ProjetoUrnaEletronica;

uses
  Vcl.Forms,
  Urna.View.Principal in 'View\Urna.View.Principal.pas' {FRM_URNA},
  Urna.View.Legenda in 'View\Urna.View.Legenda.pas' {FRM_LEGENDA},
  Urna.View.Partido in 'View\Urna.View.Partido.pas' {FRM_PARTIDO},
  Urna.View.Candidato in 'View\Urna.View.Candidato.pas' {FRM_NOMECANDIDATO},
  Urna.Enumeradores in 'Enumeradores\Urna.Enumeradores.pas',
  DMBD in 'Model\DMBD.pas' {DM_BD: TDataModule},
  Urna.Entity.Votacoes in 'Entity\Urna.Entity.Votacoes.pas',
  Urna.Service in 'Service\Urna.Service.pas',
  Urna.Interfaces in 'Interfaces\Urna.Interfaces.pas',
  Urna.Dto in 'Dto\Urna.Dto.pas',
  Urna.View.CadEleicao in 'View\Urna.View.CadEleicao.pas' {FRM_CADELEICAO},
  Urna.View.Estado in 'View\Urna.View.Estado.pas' {FRM_ESTADO},
  Base.ExecutorSQL in '..\Base\Executor\Base.ExecutorSQL.pas',
  Urna.SQL in 'SQL\Urna.SQL.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRM_URNA, FRM_URNA);
  Application.CreateForm(TFRM_LEGENDA, FRM_LEGENDA);
  Application.CreateForm(TFRM_PARTIDO, FRM_PARTIDO);
  Application.CreateForm(TFRM_NOMECANDIDATO, FRM_NOMECANDIDATO);
  Application.CreateForm(TDM_BD, DM_BD);
  Application.CreateForm(TFRM_CADELEICAO, FRM_CADELEICAO);
  Application.CreateForm(TFRM_ESTADO, FRM_ESTADO);
  Application.Run;
end.
