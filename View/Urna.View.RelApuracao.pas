unit Urna.View.RelApuracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx, RzPanel,
  RzRadGrp, System.Actions, Vcl.ActnList, Data.DB, Vcl.Mask, RzEdit, RzLabel,
  PraButtonStyle, Vcl.ExtCtrls, Vcl.DBCtrls, RLReport;

type
  TFRM_RELAPURACAO = class(TForm)
    pnlOpcoes: TRzPanel;
    btnImprimir: TPraButtonStyle;
    pnlMain: TRzPanel;
    lblCandidato: TRzLabel;
    lblPartido: TRzLabel;
    edtCandidato: TRzEdit;
    edtPartido: TRzEdit;
    chkCargo: TRzCheckGroup;
    lblEleicao: TRzLabel;
    DS_REL: TDataSource;
    ActionList: TActionList;
    ACT_IMPRIMIR: TAction;
    DS_ELEICOES: TDataSource;
    cbEleicao: TDBLookupComboBox;
    RLReport: TRLReport;
    bandTitle: TRLBand;
    RLLabel1: TRLLabel;
    lblTitulo: TRLLabel;
    lblFiltros: TRLLabel;
    bandHeader: TRLBand;
    RLLabel8: TRLLabel;
    bandDetail: TRLBand;
    bandFooter: TRLBand;
    RLLabel10: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    GroupApuracao: TRLGroup;
    procedure ACT_IMPRIMIRExecute(Sender: TObject);
  private
    { Private declarations }
    sFiltro: string;
    procedure ListarEleicoes;
  public
    { Public declarations }
  end;

var
  FRM_RELAPURACAO: TFRM_RELAPURACAO;

implementation

uses
   DMBD;

{$R *.dfm}

procedure TFRM_RELAPURACAO.ACT_IMPRIMIRExecute(Sender: TObject);
var
   sNomeCandidato, sPartido, sCargo: String;

   function PreparaCargos: string;
   var
      sCargo: string;
   begin
      if chkCargo.ItemChecked[0] then
      sCargo := sCargo + '|DEPUTADO FEDERAL|';

      if chkCargo.ItemChecked[1] then
         sCargo := sCargo + '|DEPUTADO ESTADUAL|';

      if chkCargo.ItemChecked[2] then
         sCargo := sCargo + '|SENADOR|';

      if chkCargo.ItemChecked[3] then
         sCargo := sCargo + '|GOVERNADOR|';

      if chkCargo.ItemChecked[4] then
         sCargo := sCargo + '|PRESIDENTE|';

      Result := sCargo;
   end;
begin
   sFiltro        := '';
   sCargo         := '';
   sPartido       := '';
   sNomeCandidato := '';

   if cbEleicao.Text = '' then
   begin
      ShowMessage('Selecione a eleição que deseja apurar');
      cbEleicao.SetFocus;
      Exit;
   end;

   if edtCandidato.Text <> '' then
   begin
      sNomeCandidato := edtCandidato.Text;
      sFiltro := sFiltro + 'Candidato: ' + edtCandidato.Text + ',';
   end;

   sCargo := PreparaCargos;
   if sCargo <> '' then
      sFiltro := sFiltro + 'Cargos: ' + sCargo + ',';

   if edtPartido.Text <> '' then
   begin
      sPartido := edtPartido.Text;
      sFiltro  := sFiltro + 'Partido: ' + edtPartido.Text + ',';
   end;

   DM_BD.CDS_RELAPURACAO.Close;
   DM_BD.CDS_RELAPURACAO.Params.ParamByName('SIGLA').AsString := sPartido;
   DM_BD.CDS_RELAPURACAO.Params.ParamByName('CARGOCANDIDATO').AsString := sCargo;
   DM_BD.CDS_RELAPURACAO.Params.ParamByName('IDELEICAO').AsInteger := DM_BD.CDS_ELEICOESIDELEICAO.AsInteger;
   DM_BD.CDS_RELAPURACAO.Params.ParamByName('NOMECANDIDATO').AsString := sNomeCandidato;
   DM_BD.CDS_RELAPURACAO.Open;

   ShowMessage(IntToStr(DM_BD.CDS_RELAPURACAO.RecordCount));

   RLReport.Preview();
end;

procedure TFRM_RELAPURACAO.ListarEleicoes;
begin
   DM_BD.CDS_ELEICOES.Close;
   DM_BD.CDS_ELEICOES.Params.ParamByName('IDELEICAO').AsInteger := 0;
   DM_BD.CDS_ELEICOES.Params.ParamByName('DATA').AsDateTime := 0;
   DM_BD.CDS_ELEICOES.Open;
end;

end.
