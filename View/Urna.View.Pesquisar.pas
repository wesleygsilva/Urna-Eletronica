unit Urna.View.Pesquisar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, PraButtonStyle, Vcl.StdCtrls,
  RzLabel, Vcl.Mask, RzEdit, RzDBEdit, Vcl.Grids, Vcl.DBGrids, RzDBGrid,
  System.Actions, Vcl.ActnList, Urna.Enumeradores, Vcl.ExtCtrls, RzPanel;

type
  TFRM_PESQUISAR = class(TForm)
    gdResultado: TRzDBGrid;
    edtFiltro: TRzEdit;
    lblFiltro: TRzLabel;
    btnPesquisar: TPraButtonStyle;
    DS_PESQ: TDataSource;
    ActionList: TActionList;
    ACT_PESQUISAR: TAction;
    pnlMain: TRzPanel;
    pnlOpcoes: TRzPanel;
    lblLegenda: TRzLabel;
    procedure ACT_PESQUISARExecute(Sender: TObject);
    procedure gdResultadoDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure PesquisarCandidato;
    procedure RedefinirGrid;
    procedure AbrirCandidato;
  public
     TipoPesquisa: TTipoPesquisa;
    { Public declarations }
  end;

var
  FRM_PESQUISAR: TFRM_PESQUISAR;

implementation

uses
   DMBD, Base.ExecutorSQL, Urna.SQL, Urna.Service;

{$R *.dfm}

procedure TFRM_PESQUISAR.AbrirCandidato;
begin
   DM_BD.CDS_CANDIDATOS.Close;
   DM_BD.CDS_CANDIDATOS.ParamByName('IDCANDIDATO').AsInteger   := gdResultado.Fields[0].Value;
   DM_BD.CDS_CANDIDATOS.ParamByName('NUMCANDIDATO').AsInteger  := gdResultado.Fields[2].Value;
   DM_BD.CDS_CANDIDATOS.ParamByName('CARGOCANDIDATO').AsString := gdResultado.Fields[3].Value;
   DM_BD.CDS_CANDIDATOS.ParamByName('UF').AsString             := gdResultado.Fields[5].Value;
   DM_BD.CDS_CANDIDATOS.ParamByName('IDELEICAO').AsInteger     := gdResultado.Fields[6].Value;
   DM_BD.CDS_CANDIDATOS.Open;
end;

procedure TFRM_PESQUISAR.ACT_PESQUISARExecute(Sender: TObject);
begin
   case TipoPesquisa of
      tpCandidato: PesquisarCandidato;
      tpEleicao: ;
   end;
end;

procedure TFRM_PESQUISAR.FormCreate(Sender: TObject);
begin
   DM_BD.CDS_AUX.Close;
end;

procedure TFRM_PESQUISAR.gdResultadoDblClick(Sender: TObject);
begin
   case TipoPesquisa of
      tpCandidato: AbrirCandidato;
      tpEleicao: ;
   end;

   Close;
end;

procedure TFRM_PESQUISAR.PesquisarCandidato;
begin
   TEleicoesService.New.Pesquisar(tpCandidato, edtFiltro.Text);
   RedefinirGrid;
end;

procedure TFRM_PESQUISAR.RedefinirGrid;
begin
   case TipoPesquisa of
      tpCandidato:
      begin
         gdResultado.Columns[0].Width := 30;
         gdResultado.Columns[1].Width := 200;
         gdResultado.Columns[2].Width := 60;
         gdResultado.Columns[3].Width := 150;
         gdResultado.Columns[4].Width := 100;
         gdResultado.Columns[5].Width := 30;
         gdResultado.Columns[6].Visible := False;
      end;

      tpEleicao: ;
   end;
end;

end.
