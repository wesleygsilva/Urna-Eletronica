unit Urna.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, RzPanel, PraButtonStyle, Vcl.StdCtrls, RzLabel, RzCommon,
  Vcl.Mask, RzEdit, RzTabs, RzLine, Vcl.Imaging.pngimage, Urna.Enumeradores,
  System.Actions, Vcl.ActnList, Urna.Service, System.StrUtils;

type
  TFRM_URNA = class(TForm)
    pnlUrna: TRzPanel;
    pnlEntrada: TRzPanel;
    pnlUrnaInfo: TRzPanel;
    pnlBotoes: TRzPanel;
    lblUrna: TRzLabel;
    lblEleitoral: TRzLabel;
    btn1: TPraButtonStyle;
    btnBranco: TPraButtonStyle;
    btnCorrige: TPraButtonStyle;
    btnConfirma: TPraButtonStyle;
    btn2: TPraButtonStyle;
    btn3: TPraButtonStyle;
    btn4: TPraButtonStyle;
    btn5: TPraButtonStyle;
    btn6: TPraButtonStyle;
    btn7: TPraButtonStyle;
    btn8: TPraButtonStyle;
    btn9: TPraButtonStyle;
    btn0: TPraButtonStyle;
    pnlRodape: TRzPanel;
    pnl1: TRzPanel;
    pnl2: TRzPanel;
    pnl3: TRzPanel;
    pnl4: TRzPanel;
    pnl5: TRzPanel;
    pnl6: TRzPanel;
    pnl7: TRzPanel;
    pnl8: TRzPanel;
    pgCargos: TRzPageControl;
    tabDepFederal: TRzTabSheet;
    tabDepEstadual: TRzTabSheet;
    tabSenador1: TRzTabSheet;
    tabSenador2: TRzTabSheet;
    tabGovernador: TRzTabSheet;
    tabPresidente: TRzTabSheet;
    lblCargoDepFederal: TRzLabel;
    edtDepFederal1: TRzEdit;
    edtDepFederal2: TRzEdit;
    edtDepFederal3: TRzEdit;
    edtDepFederal4: TRzEdit;
    pnlLegendaDepFederal: TRzPanel;
    pnlPartidoDepFederal: TRzPanel;
    pnlNomeDepFederal: TRzPanel;
    pnlFotoDepFederal: TRzPanel;
    pnlNumeroDepFederal: TRzPanel;
    imgDepFederal: TImage;
    pnlNumeroDepEstadual: TRzPanel;
    lblCargoDepEstadual: TRzLabel;
    edtDepEstadual1: TRzEdit;
    edtDepEstadual2: TRzEdit;
    edtDepEstadual3: TRzEdit;
    edtDepEstadual4: TRzEdit;
    edtDepEstadual5: TRzEdit;
    pnlPartidoDepEstadual: TRzPanel;
    pnlNomeDepEstadual: TRzPanel;
    pnlLegendaDepEstadual: TRzPanel;
    pnlFotoDepEstadual: TRzPanel;
    imgDepEstadual: TImage;
    pnlFotoSenador1: TRzPanel;
    imgSenador1: TImage;
    pnlNumeroSenador1: TRzPanel;
    lblCargoSenador1: TRzLabel;
    edtSenador11: TRzEdit;
    edtSenador12: TRzEdit;
    edtSenador13: TRzEdit;
    pnlPartidoSenador1: TRzPanel;
    pnlNomeSenador1: TRzPanel;
    pnlLegendaSenador1: TRzPanel;
    pnlFotoSenador2: TRzPanel;
    imgSenador2: TImage;
    pnlNumeroSenador2: TRzPanel;
    lblCargoSenador2: TRzLabel;
    edtSenador21: TRzEdit;
    edtSenador22: TRzEdit;
    edtSenador23: TRzEdit;
    pnlPartidoSenador2: TRzPanel;
    pnlNomeSenador2: TRzPanel;
    pnlLegendaSenador2: TRzPanel;
    pnlFotoGovernador: TRzPanel;
    imgGovernador: TImage;
    pnlNumeroGovernador: TRzPanel;
    lblCargoGovernador: TRzLabel;
    edtGovernador1: TRzEdit;
    edtGovernador2: TRzEdit;
    pnlPartidoGovernador: TRzPanel;
    pnlNomeGovernador: TRzPanel;
    pnlLegendaGovernador: TRzPanel;
    pnlFotoPresidente: TRzPanel;
    imgPresidente: TImage;
    pnlNumeroPresidente: TRzPanel;
    lblCargoPresidente: TRzLabel;
    edtPresidente1: TRzEdit;
    edtPresidente2: TRzEdit;
    pnlPartidoPresidente: TRzPanel;
    pnlNomePresidente: TRzPanel;
    pnlLegendaPresidente: TRzPanel;
    imgJusticaEleitoral: TImage;
    ActionList: TActionList;
    ACT_1: TAction;
    ACT_2: TAction;
    ACT_3: TAction;
    ACT_4: TAction;
    ACT_5: TAction;
    ACT_6: TAction;
    ACT_7: TAction;
    ACT_8: TAction;
    ACT_9: TAction;
    ACT_0: TAction;
    ACT_BRANCO: TAction;
    ACT_CORRIGE: TAction;
    ACT_CONFIRMA: TAction;
    pnlTopPageControl: TRzPanel;
    ACT_CADASTRARELEICAO: TAction;
    ACT_CADCANDIDATO: TAction;
    procedure FormShow(Sender: TObject);
    procedure ACT_1Execute(Sender: TObject);
    procedure ACT_2Execute(Sender: TObject);
    procedure ACT_3Execute(Sender: TObject);
    procedure ACT_4Execute(Sender: TObject);
    procedure ACT_5Execute(Sender: TObject);
    procedure ACT_6Execute(Sender: TObject);
    procedure ACT_7Execute(Sender: TObject);
    procedure ACT_8Execute(Sender: TObject);
    procedure ACT_9Execute(Sender: TObject);
    procedure ACT_0Execute(Sender: TObject);
    procedure ACT_BRANCOExecute(Sender: TObject);
    procedure ACT_CORRIGEExecute(Sender: TObject);
    procedure ACT_CONFIRMAExecute(Sender: TObject);
    procedure edtDepFederal2Exit(Sender: TObject);
    procedure edtDepEstadual2Exit(Sender: TObject);
    procedure edtSenador12Exit(Sender: TObject);
    procedure edtGovernador2Exit(Sender: TObject);
    procedure edtPresidente2Exit(Sender: TObject);
    procedure edtSenador22Exit(Sender: TObject);
    procedure edtDepEstadual5Exit(Sender: TObject);
    procedure edtSenador13Exit(Sender: TObject);
    procedure edtSenador23Exit(Sender: TObject);
    procedure edtDepFederal4Exit(Sender: TObject);
    procedure ACT_CADASTRARELEICAOExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ACT_CADCANDIDATOExecute(Sender: TObject);
  private
    { Private declarations }
    sUf: String;
    procedure IniciarUrnaEletronica(TipoEleicao: TTipoEleicao);
    procedure InserirNumeroDepFederal(Numero: Integer);
    procedure InserirNumeroDepEstadual(Numero: Integer);
    procedure InserirNumeroSenador1(Numero: Integer);
    procedure InserirNumeroSenador2(Numero: Integer);
    procedure InserirNumeroGovernador(Numero: Integer);
    procedure InserirNumeroPresidente(Numero: Integer);
    procedure LimparCampos;
    procedure LimparDepFederal;
    procedure LimparDepEstadual;
    procedure LimparSenador1;
    procedure LimparSenador2;
    procedure LimparGovernador;
    procedure LimparPresidente;
    procedure LimparPartido;
    procedure LimparCandidato;
    procedure LimparLegenda;
    procedure ListarPartido;
    procedure ListarCandidato;
    procedure ExibirLegenda(TipoCargo: TTipoCargo);
    procedure IniciarVotacao(UF: string);
    function ValidarDataEleicao: Boolean;
    function SelecionaEstado: String;
  public
    { Public declarations }
  end;

var
  FRM_URNA: TFRM_URNA;

implementation

uses
  Urna.View.Legenda, Urna.View.Candidato, Urna.View.Partido, System.Math, Urna.View.CadEleicao, Urna.View.Estado, Urna.View.CadCandidato;

{$R *.dfm}

procedure TFRM_URNA.ACT_0Execute(Sender: TObject);
begin
   InserirNumeroDepFederal(0);
   InserirNumeroDepEstadual(0);
   InserirNumeroSenador1(0);
   InserirNumeroSenador2(0);
   InserirNumeroGovernador(0);
   InserirNumeroPresidente(0);
end;

procedure TFRM_URNA.ACT_1Execute(Sender: TObject);
begin
   if pgCargos.ActivePage = tabDepFederal then
   begin
      InserirNumeroDepFederal(1);
      exit;
   end;

   if pgCargos.ActivePage = tabDepEstadual then
   begin
      InserirNumeroDepEstadual(1);
      exit;
   end;

   if pgCargos.ActivePage = tabSenador1 then
   begin
      InserirNumeroSenador1(1);
      exit;
   end;

   if pgCargos.ActivePage = tabSenador2 then
   begin
      InserirNumeroSenador2(1);
      exit;
   end;

   if pgCargos.ActivePage = tabGovernador then
   begin
      InserirNumeroGovernador(1);
      exit;
   end;

   if pgCargos.ActivePage = tabPresidente then
   begin
      InserirNumeroPresidente(1);
      exit;
   end;
end;

procedure TFRM_URNA.ACT_2Execute(Sender: TObject);
begin
   if pgCargos.ActivePage = tabDepFederal then
   begin
      InserirNumeroDepFederal(2);
      exit;
   end;

   if pgCargos.ActivePage = tabDepEstadual then
   begin
      InserirNumeroDepEstadual(2);
      exit;
   end;

   if pgCargos.ActivePage = tabSenador1 then
   begin
      InserirNumeroSenador1(2);
      exit;
   end;

   if pgCargos.ActivePage = tabSenador2 then
   begin
      InserirNumeroSenador2(2);
      exit;
   end;

   if pgCargos.ActivePage = tabGovernador then
   begin
      InserirNumeroGovernador(2);
      exit;
   end;

   if pgCargos.ActivePage = tabPresidente then
   begin
      InserirNumeroPresidente(2);
      exit;
   end;
end;

procedure TFRM_URNA.ACT_3Execute(Sender: TObject);
begin
   if pgCargos.ActivePage = tabDepFederal then
   begin
      InserirNumeroDepFederal(3);
      exit;
   end;

   if pgCargos.ActivePage = tabDepEstadual then
   begin
      InserirNumeroDepEstadual(3);
      exit;
   end;

   if pgCargos.ActivePage = tabSenador1 then
   begin
      InserirNumeroSenador1(3);
      exit;
   end;

   if pgCargos.ActivePage = tabSenador2 then
   begin
      InserirNumeroSenador2(3);
      exit;
   end;

   if pgCargos.ActivePage = tabGovernador then
   begin
      InserirNumeroGovernador(3);
      exit;
   end;

   if pgCargos.ActivePage = tabPresidente then
   begin
      InserirNumeroPresidente(3);
      exit;
   end;
end;

procedure TFRM_URNA.ACT_4Execute(Sender: TObject);
begin
   if pgCargos.ActivePage = tabDepFederal then
   begin
      InserirNumeroDepFederal(4);
      exit;
   end;

   if pgCargos.ActivePage = tabDepEstadual then
   begin
      InserirNumeroDepEstadual(4);
      exit;
   end;

   if pgCargos.ActivePage = tabSenador1 then
   begin
      InserirNumeroSenador1(4);
      exit;
   end;

   if pgCargos.ActivePage = tabSenador2 then
   begin
      InserirNumeroSenador2(4);
      exit;
   end;

   if pgCargos.ActivePage = tabGovernador then
   begin
      InserirNumeroGovernador(4);
      exit;
   end;

   if pgCargos.ActivePage = tabPresidente then
   begin
      InserirNumeroPresidente(4);
      exit;
   end;
end;

procedure TFRM_URNA.ACT_5Execute(Sender: TObject);
begin
   if pgCargos.ActivePage = tabDepFederal then
   begin
      InserirNumeroDepFederal(5);
      exit;
   end;

   if pgCargos.ActivePage = tabDepEstadual then
   begin
      InserirNumeroDepEstadual(5);
      exit;
   end;

   if pgCargos.ActivePage = tabSenador1 then
   begin
      InserirNumeroSenador1(5);
      exit;
   end;

   if pgCargos.ActivePage = tabSenador2 then
   begin
      InserirNumeroSenador2(5);
      exit;
   end;

   if pgCargos.ActivePage = tabGovernador then
   begin
      InserirNumeroGovernador(5);
      exit;
   end;

   if pgCargos.ActivePage = tabPresidente then
   begin
      InserirNumeroPresidente(5);
      exit;
   end;
end;

procedure TFRM_URNA.ACT_6Execute(Sender: TObject);
begin
   if pgCargos.ActivePage = tabDepFederal then
   begin
      InserirNumeroDepFederal(6);
      exit;
   end;

   if pgCargos.ActivePage = tabDepEstadual then
   begin
      InserirNumeroDepEstadual(6);
      exit;
   end;

   if pgCargos.ActivePage = tabSenador1 then
   begin
      InserirNumeroSenador1(6);
      exit;
   end;

   if pgCargos.ActivePage = tabSenador2 then
   begin
      InserirNumeroSenador2(6);
      exit;
   end;

   if pgCargos.ActivePage = tabGovernador then
   begin
      InserirNumeroGovernador(6);
      exit;
   end;

   if pgCargos.ActivePage = tabPresidente then
   begin
      InserirNumeroPresidente(6);
      exit;
   end;
end;

procedure TFRM_URNA.ACT_7Execute(Sender: TObject);
begin
   if pgCargos.ActivePage = tabDepFederal then
   begin
      InserirNumeroDepFederal(7);
      exit;
   end;

   if pgCargos.ActivePage = tabDepEstadual then
   begin
      InserirNumeroDepEstadual(7);
      exit;
   end;

   if pgCargos.ActivePage = tabSenador1 then
   begin
      InserirNumeroSenador1(7);
      exit;
   end;

   if pgCargos.ActivePage = tabSenador2 then
   begin
      InserirNumeroSenador2(7);
      exit;
   end;

   if pgCargos.ActivePage = tabGovernador then
   begin
      InserirNumeroGovernador(7);
      exit;
   end;

   if pgCargos.ActivePage = tabPresidente then
   begin
      InserirNumeroPresidente(7);
      exit;
   end;
end;

procedure TFRM_URNA.ACT_8Execute(Sender: TObject);
begin
   if pgCargos.ActivePage = tabDepFederal then
   begin
      InserirNumeroDepFederal(8);
      exit;
   end;

   if pgCargos.ActivePage = tabDepEstadual then
   begin
      InserirNumeroDepEstadual(8);
      exit;
   end;

   if pgCargos.ActivePage = tabSenador1 then
   begin
      InserirNumeroSenador1(8);
      exit;
   end;

   if pgCargos.ActivePage = tabSenador2 then
   begin
      InserirNumeroSenador2(8);
      exit;
   end;

   if pgCargos.ActivePage = tabGovernador then
   begin
      InserirNumeroGovernador(8);
      exit;
   end;

   if pgCargos.ActivePage = tabPresidente then
   begin
      InserirNumeroPresidente(8);
      exit;
   end;
end;

procedure TFRM_URNA.ACT_9Execute(Sender: TObject);
begin
   if pgCargos.ActivePage = tabDepFederal then
   begin
      InserirNumeroDepFederal(9);
      exit;
   end;

   if pgCargos.ActivePage = tabDepEstadual then
   begin
      InserirNumeroDepEstadual(9);
      exit;
   end;

   if pgCargos.ActivePage = tabSenador1 then
   begin
      InserirNumeroSenador1(9);
      exit;
   end;

   if pgCargos.ActivePage = tabSenador2 then
   begin
      InserirNumeroSenador2(9);
      exit;
   end;

   if pgCargos.ActivePage = tabGovernador then
   begin
      InserirNumeroGovernador(9);
      exit;
   end;

   if pgCargos.ActivePage = tabPresidente then
   begin
      InserirNumeroPresidente(9);
      exit;
   end;
end;

procedure TFRM_URNA.ACT_BRANCOExecute(Sender: TObject);
begin
   ShowMessage('OK, Voto Branco');
end;

procedure TFRM_URNA.ACT_CADASTRARELEICAOExecute(Sender: TObject);
begin
   Application.CreateForm(TFRM_CADELEICAO, FRM_CADELEICAO);
   try
      FRM_CADELEICAO.ShowModal;
   finally
      FRM_CADELEICAO.Free;
   end;
end;

procedure TFRM_URNA.ACT_CADCANDIDATOExecute(Sender: TObject);
begin
   Application.CreateForm(TFRM_CADCANDIDATO, FRM_CADCANDIDATO);
   try
      FRM_CADCANDIDATO.ShowModal;
   finally
      FRM_CADCANDIDATO.Free;
   end;
end;

procedure TFRM_URNA.ACT_CONFIRMAExecute(Sender: TObject);
begin
   if pgCargos.ActivePage = tabDepFederal then
   begin
      //Efetivar Voto
      TEleicoesService.New.EfetivarVoto(tpDepFederal);
      pgCargos.ActivePage := tabDepEstadual;
      edtDepEstadual1.SetFocus;
      exit;
   end;

   if pgCargos.ActivePage = tabDepEstadual then
   begin
      //Efetivar Voto
      TEleicoesService.New.EfetivarVoto(tpDepEstadual);
      pgCargos.ActivePage := tabSenador1;
      edtSenador11.SetFocus;
      exit;
   end;

   if pgCargos.ActivePage = tabSenador1 then
   begin
      //Efetivar Voto
      TEleicoesService.New.EfetivarVoto(tpSenador1);
      pgCargos.ActivePage := tabSenador2;
      edtSenador21.SetFocus;
      exit;
   end;

   if pgCargos.ActivePage = tabSenador2 then
   begin
      //Efetivar Voto
      TEleicoesService.New.EfetivarVoto(tpSenador2);
      pgCargos.ActivePage := tabGovernador;
      edtGovernador1.SetFocus;
      exit;
   end;

   if pgCargos.ActivePage = tabGovernador then
   begin
      //Efetivar Voto
      TEleicoesService.New.EfetivarVoto(tpGovernador);
      pgCargos.ActivePage := tabPresidente;
      edtPresidente1.SetFocus;
      exit;
   end;

   if pgCargos.ActivePage = tabPresidente then
   begin
      TEleicoesService.New.EfetivarVoto(tpPresidente);
      ShowMessage('Votação encerrada!');
      LimparCampos;
      pgCargos.ActivePage := tabDepFederal;
   end;
end;

procedure TFRM_URNA.ACT_CORRIGEExecute(Sender: TObject);
begin
   LimparCampos;
end;

procedure TFRM_URNA.edtDepEstadual2Exit(Sender: TObject);
begin
   ListarPartido;
end;

procedure TFRM_URNA.edtDepEstadual5Exit(Sender: TObject);
begin
   ListarCandidato;
   ExibirLegenda(tpDepEstadual);
end;

procedure TFRM_URNA.edtDepFederal2Exit(Sender: TObject);
begin
   ListarPartido;
end;

procedure TFRM_URNA.edtDepFederal4Exit(Sender: TObject);
begin
   ListarCandidato;
   ExibirLegenda(tpDepFederal);
end;

procedure TFRM_URNA.edtGovernador2Exit(Sender: TObject);
begin
   ListarPartido;
   ListarCandidato;
   ExibirLegenda(tpGovernador);
end;

procedure TFRM_URNA.edtPresidente2Exit(Sender: TObject);
begin
   ListarPartido;
   ListarCandidato;
   ExibirLegenda(tpPresidente);
end;

procedure TFRM_URNA.edtSenador12Exit(Sender: TObject);
begin
   ListarPartido;
end;

procedure TFRM_URNA.edtSenador13Exit(Sender: TObject);
begin
   ListarCandidato;
   ExibirLegenda(tpSenador1);
end;

procedure TFRM_URNA.edtSenador22Exit(Sender: TObject);
begin
   ListarPartido;
end;

procedure TFRM_URNA.edtSenador23Exit(Sender: TObject);
begin
   ListarCandidato;
   ExibirLegenda(tpSenador2);
end;

procedure TFRM_URNA.ExibirLegenda(TipoCargo: TTipoCargo);
begin
   case TipoCargo of
      tpDepFederal:  FRM_LEGENDA.Parent := pnlLegendaDepFederal;
      tpDepEstadual: FRM_LEGENDA.Parent := pnlLegendaDepEstadual;
      tpSenador1:    FRM_LEGENDA.Parent := pnlLegendaSenador1;
      tpSenador2:    FRM_LEGENDA.Parent := pnlLegendaSenador2;
      tpGovernador:  FRM_LEGENDA.Parent := pnlLegendaGovernador;
      tpPresidente:  FRM_LEGENDA.Parent := pnlLegendaPresidente;
   end;

   FRM_LEGENDA.Show;
end;

procedure TFRM_URNA.FormCreate(Sender: TObject);
begin
   sUf := '';
end;

procedure TFRM_URNA.FormShow(Sender: TObject);
begin
   SelecionaEstado;

   if ValidarDataEleicao then
      IniciarUrnaEletronica(tpFederal)
   else
   begin
      ShowMessage('Nenhuma eleição para o dia de hoje!' + sLineBreak +
                  'Cadastre uma nova eleição para continuar');
      ACT_CADASTRARELEICAO.Execute;
   end;
end;

procedure TFRM_URNA.IniciarUrnaEletronica(TipoEleicao: TTipoEleicao);
begin
   if TipoEleicao = tpFederal then
   begin
      pgCargos.ActivePage := tabDepFederal;
      edtDepFederal1.SetFocus;
   end;
end;

procedure TFRM_URNA.IniciarVotacao(UF: string);
begin
   TEleicoesService.New.IniciarVotacao(UF);
end;

procedure TFRM_URNA.InserirNumeroDepEstadual(Numero: Integer);
begin
   if pgCargos.ActivePage = tabDepEstadual then
   begin
      if edtDepEstadual1.Text = '' then
      begin
         edtDepEstadual1.Text := IntToStr(Numero);
         edtDepEstadual2.SetFocus;
      end
      else if edtDepEstadual2.Text = '' then
      begin
         edtDepEstadual2.Text := IntToStr(Numero);
         edtDepEstadual3.SetFocus;
      end
      else if edtDepEstadual3.Text = '' then
      begin
         edtDepEstadual3.Text := IntToStr(Numero);
         edtDepEstadual4.SetFocus;
      end
      else if edtDepEstadual4.Text = '' then
      begin
         edtDepEstadual4.Text := IntToStr(Numero);
         edtDepEstadual5.SetFocus;
      end
      else if edtDepEstadual5.Text = '' then
      begin
         edtDepEstadual5.Text := IntToStr(Numero);
         btnConfirma.SetFocus;
      end;
   end;
end;

procedure TFRM_URNA.InserirNumeroDepFederal(Numero: Integer);
begin
   if pgCargos.ActivePage = tabDepFederal then
   begin
      if edtDepFederal1.Text = '' then
      begin
         edtDepFederal1.Text := IntToStr(Numero);
         edtDepFederal2.SetFocus;
      end
      else if edtDepFederal2.Text = '' then
      begin
         edtDepFederal2.Text := IntToStr(Numero);
         edtDepFederal3.SetFocus;
      end
      else if edtDepFederal3.Text = '' then
      begin
         edtDepFederal3.Text := IntToStr(Numero);
         edtDepFederal4.SetFocus;
      end
      else if edtDepFederal4.Text = '' then
      begin
         edtDepFederal4.Text := IntToStr(Numero);
         btnConfirma.SetFocus;
      end;
   end;
end;

procedure TFRM_URNA.InserirNumeroGovernador(Numero: Integer);
begin
   if pgCargos.ActivePage = tabGovernador then
   begin
      if edtGovernador1.Text = '' then
      begin
         edtGovernador1.Text := IntToStr(Numero);
         edtGovernador2.SetFocus;
      end
      else if edtGovernador2.Text = '' then
      begin
         edtGovernador2.Text := IntToStr(Numero);
         btnConfirma.SetFocus;
      end;
   end;
end;

procedure TFRM_URNA.InserirNumeroPresidente(Numero: Integer);
begin
   if pgCargos.ActivePage = tabPresidente then
   begin
      if edtPresidente1.Text = '' then
      begin
         edtPresidente1.Text := IntToStr(Numero);
         edtPresidente2.SetFocus;
      end
      else if edtPresidente2.Text = '' then
      begin
         edtPresidente2.Text := IntToStr(Numero);
         btnConfirma.SetFocus;
      end;
   end;
end;

procedure TFRM_URNA.InserirNumeroSenador1(Numero: Integer);
begin
   if pgCargos.ActivePage = tabSenador1 then
   begin
      if edtSenador11.Text = '' then
      begin
         edtSenador11.Text := IntToStr(Numero);
         edtSenador12.SetFocus;
      end
      else if edtSenador12.Text = '' then
      begin
         edtSenador12.Text := IntToStr(Numero);
         edtSenador13.SetFocus;
      end
      else if edtSenador13.Text = '' then
      begin
         edtSenador13.Text := IntToStr(Numero);
         btnConfirma.SetFocus;
      end;
   end;
end;

procedure TFRM_URNA.InserirNumeroSenador2(Numero: Integer);
begin
   if pgCargos.ActivePage = tabSenador2 then
   begin
      if edtSenador21.Text = '' then
      begin
         edtSenador21.Text := IntToStr(Numero);
         edtSenador22.SetFocus;
      end
      else if edtSenador22.Text = '' then
      begin
         edtSenador22.Text := IntToStr(Numero);
         edtSenador23.SetFocus;
      end
      else if edtSenador23.Text = '' then
      begin
         edtSenador23.Text := IntToStr(Numero);
         btnConfirma.SetFocus;
      end;
   end;
end;

procedure TFRM_URNA.LimparCampos;
begin
   LimparDepFederal;
   LimparDepEstadual;
   LimparSenador1;
   LimparSenador2;
   LimparGovernador;
   LimparPresidente;
   LimparPartido;
   LimparCandidato;
   LimparLegenda;
end;

procedure TFRM_URNA.LimparCandidato;
begin
   imgDepFederal.Picture.Assign(nil);
   imgDepEstadual.Picture.Assign(nil);
   imgSenador1.Picture.Assign(nil);
   imgSenador2.Picture.Assign(nil);
   imgGovernador.Picture.Assign(nil);
   imgPresidente.Picture.Assign(nil);
   FRM_NOMECANDIDATO.Hide;
end;

procedure TFRM_URNA.LimparDepEstadual;
begin
   edtDepEstadual1.Text := '';
   edtDepEstadual2.Text := '';
   edtDepEstadual3.Text := '';
   edtDepEstadual4.Text := '';
   edtDepEstadual5.Text := '';
end;

procedure TFRM_URNA.LimparDepFederal;
begin
   edtDepFederal1.Text := '';
   edtDepFederal2.Text := '';
   edtDepFederal3.Text := '';
   edtDepFederal4.Text := '';
end;

procedure TFRM_URNA.LimparGovernador;
begin
   edtGovernador1.Text := '';
   edtGovernador2.Text := '';
end;

procedure TFRM_URNA.LimparLegenda;
begin
   FRM_LEGENDA.Hide;
end;

procedure TFRM_URNA.LimparPartido;
begin
   FRM_PARTIDO.Hide;
end;

procedure TFRM_URNA.LimparPresidente;
begin
   edtPresidente1.Text := '';
   edtPresidente2.Text := '';
end;

procedure TFRM_URNA.LimparSenador1;
begin
   edtSenador11.Text := '';
   edtSenador12.Text := '';
   edtSenador13.Text := '';
end;

procedure TFRM_URNA.LimparSenador2;
begin
   edtSenador21.Text := '';
   edtSenador22.Text := '';
   edtSenador23.Text := '';
end;

procedure TFRM_URNA.ListarCandidato;
var
   iNumero: Integer;
   sCandidato: String;
begin
   if pgCargos.ActivePage = tabDepFederal then
   begin
      iNumero  := StrToInt(edtDepFederal1.Text +
                           edtDepFederal2.Text +
                           edtDepFederal3.Text +
                           edtDepFederal4.Text);

      sCandidato := TEleicoesService.New.ListarCandidato(iNumero, tpDepFederal, imgDepFederal, sUF);

      FRM_NOMECANDIDATO.Parent := pnlNomeDepFederal;
      FRM_NOMECANDIDATO.lblNomeCandidato.Caption := ifThen(sCandidato = '', 'NÃO ENCONTRADO', sCandidato);
      FRM_NOMECANDIDATO.Show;
   end;

   if pgCargos.ActivePage = tabDepEstadual then
   begin
      iNumero  := StrToInt(edtDepEstadual1.Text +
                           edtDepEstadual2.Text +
                           edtDepEstadual3.Text +
                           edtDepEstadual4.Text +
                           edtDepEstadual5.Text);

      sCandidato := TEleicoesService.New.ListarCandidato(iNumero, tpDepEstadual, imgDepEstadual, sUF);

      FRM_NOMECANDIDATO.Parent := pnlNomeDepEstadual;
      FRM_NOMECANDIDATO.lblNomeCandidato.Caption := ifThen(sCandidato = '', 'NÃO ENCONTRADO', sCandidato);
      FRM_NOMECANDIDATO.Show;
   end;

   if pgCargos.ActivePage = tabSenador1 then
   begin
      iNumero  := StrToInt(edtSenador11.Text +
                           edtSenador12.Text +
                           edtSenador13.Text);

      sCandidato := TEleicoesService.New.ListarCandidato(iNumero, tpSenador1, imgSenador1, sUF);

      FRM_NOMECANDIDATO.Parent := pnlNomeSenador1;
      FRM_NOMECANDIDATO.lblNomeCandidato.Caption := ifThen(sCandidato = '', 'NÃO ENCONTRADO', sCandidato);
      FRM_NOMECANDIDATO.Show;
   end;

   if pgCargos.ActivePage = tabSenador2 then
   begin
      iNumero  := StrToInt(edtSenador21.Text +
                           edtSenador22.Text +
                           edtSenador23.Text);

      sCandidato := TEleicoesService.New.ListarCandidato(iNumero, tpSenador2, imgSenador2, sUF);

      FRM_NOMECANDIDATO.Parent := pnlNomeSenador2;
      FRM_NOMECANDIDATO.lblNomeCandidato.Caption := ifThen(sCandidato = '', 'NÃO ENCONTRADO', sCandidato);
      FRM_NOMECANDIDATO.Show;
   end;

   if pgCargos.ActivePage = tabGovernador then
   begin
      iNumero  := StrToInt(edtGovernador1.Text +
                           edtGovernador2.Text);

      sCandidato := TEleicoesService.New.ListarCandidato(iNumero, tpGovernador, imgGovernador, sUF);

      FRM_NOMECANDIDATO.Parent := pnlNomeGovernador;
      FRM_NOMECANDIDATO.lblNomeCandidato.Caption := ifThen(sCandidato = '', 'NÃO ENCONTRADO', sCandidato);
      FRM_NOMECANDIDATO.Show;
   end;

   if pgCargos.ActivePage = tabPresidente then
   begin
      iNumero  := StrToInt(edtPresidente1.Text +
                           edtPresidente2.Text);

      sCandidato := TEleicoesService.New.ListarCandidato(iNumero, tpPresidente, imgPresidente);

      FRM_NOMECANDIDATO.Parent := pnlNomePresidente;
      FRM_NOMECANDIDATO.lblNomeCandidato.Caption := ifThen(sCandidato = '', 'NÃO ENCONTRADO', sCandidato);
      FRM_NOMECANDIDATO.Show;
   end;
end;

procedure TFRM_URNA.ListarPartido;
var
   iNumero: Integer;
   sPartido: String;
begin
   if pgCargos.ActivePage = tabDepFederal then
   begin
      iNumero  := StrToInt(edtDepFederal1.Text + edtDepFederal2.Text);
      sPartido := TEleicoesService.New.ListarPartido(iNumero);

      FRM_PARTIDO.Parent := pnlPartidoDepFederal;
      FRM_PARTIDO.lblNomePartido.Caption := ifThen(sPartido = '', 'NÃO ENCONTRADO', sPartido);
      FRM_PARTIDO.Show;
   end;

   if pgCargos.ActivePage = tabDepEstadual then
   begin
      iNumero  := StrToInt(edtDepEstadual1.Text + edtDepEstadual2.Text);
      sPartido := TEleicoesService.New.ListarPartido(iNumero);

      FRM_PARTIDO.Parent := pnlPartidoDepEstadual;
      FRM_PARTIDO.lblNomePartido.Caption := ifThen(sPartido = '', 'NÃO ENCONTRADO', sPartido);
      FRM_PARTIDO.Show;
   end;

   if pgCargos.ActivePage = tabSenador1 then
   begin
      iNumero  := StrToInt(edtSenador11.Text + edtSenador12.Text);
      sPartido := TEleicoesService.New.ListarPartido(iNumero);

      FRM_PARTIDO.Parent := pnlPartidoSenador1;
      FRM_PARTIDO.lblNomePartido.Caption := ifThen(sPartido = '', 'NÃO ENCONTRADO', sPartido);
      FRM_PARTIDO.Show;
   end;

   if pgCargos.ActivePage = tabSenador2 then
   begin
      iNumero  := StrToInt(edtSenador21.Text + edtSenador22.Text);
      sPartido := TEleicoesService.New.ListarPartido(iNumero);

      FRM_PARTIDO.Parent := pnlPartidoSenador2;
      FRM_PARTIDO.lblNomePartido.Caption := ifThen(sPartido = '', 'NÃO ENCONTRADO', sPartido);
      FRM_PARTIDO.Show;
   end;

   if pgCargos.ActivePage = tabGovernador then
   begin
      iNumero  := StrToInt(edtGovernador1.Text + edtGovernador2.Text);
      sPartido := TEleicoesService.New.ListarPartido(iNumero);

      FRM_PARTIDO.Parent := pnlPartidoGovernador;
      FRM_PARTIDO.lblNomePartido.Caption := ifThen(sPartido = '', 'NÃO ENCONTRADO', sPartido);
      FRM_PARTIDO.Show;
   end;

   if pgCargos.ActivePage = tabPresidente then
   begin
      iNumero  := StrToInt(edtPresidente1.Text + edtPresidente2.Text);
      sPartido := TEleicoesService.New.ListarPartido(iNumero);

      FRM_PARTIDO.Parent := pnlPartidoPresidente;
      FRM_PARTIDO.lblNomePartido.Caption := ifThen(sPartido = '', 'NÃO ENCONTRADO', sPartido);
      FRM_PARTIDO.Show;
   end;
end;

function TFRM_URNA.SelecionaEstado: String;
begin
   Application.CreateForm(TFRM_ESTADO, FRM_ESTADO);
   try
      FRM_ESTADO.ShowModal;
      sUf := FRM_ESTADO.cbEstado.Text;
      IniciarVotacao(sUf);
   finally
      FRM_ESTADO.free;
   end;
end;

function TFRM_URNA.ValidarDataEleicao: Boolean;
begin
   Result := TEleicoesService.New.ValidarDataEleicao;
end;

end.

