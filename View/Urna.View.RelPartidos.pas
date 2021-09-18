unit Urna.View.RelPartidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PraButtonStyle, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzDBEdit, RzLabel, Vcl.ExtCtrls, RzPanel, RLReport, RzRadGrp,
  System.Actions, Vcl.ActnList, Data.DB;

type
  TFRM_RELPARTIDOS = class(TForm)
    RLReport: TRLReport;
    pnlMain: TRzPanel;
    lblNome: TRzLabel;
    lblSigla: TRzLabel;
    edtNome: TRzEdit;
    edtSigla: TRzEdit;
    pnlOpcoes: TRzPanel;
    btnImprimir: TPraButtonStyle;
    rgStatus: TRzRadioGroup;
    DS_REL: TDataSource;
    ACT_IMPRIMIR: TAction;
    bandTitle: TRLBand;
    lblTitulo: TRLLabel;
    lblFiltros: TRLLabel;
    bandHeader: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    bandDetail: TRLBand;
    edtCodigo: TRLDBText;
    edtPartido: TRLDBText;
    edtDBSigla: TRLDBText;
    edtNumero: TRLDBText;
    edtStatus: TRLDBText;
    edtCadastro: TRLDBText;
    RLLabel8: TRLLabel;
    bandFooter: TRLBand;
    ActionList: TActionList;
    RLLabel10: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBResult1: TRLDBResult;
    procedure ACT_IMPRIMIRExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblFiltrosBeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
  private
    { Private declarations }
    sFiltro: string;
  public
    { Public declarations }
  end;

var
  FRM_RELPARTIDOS: TFRM_RELPARTIDOS;

implementation

uses
   DMBD;

{$R *.dfm}

procedure TFRM_RELPARTIDOS.ACT_IMPRIMIRExecute(Sender: TObject);
var
   sStatus: String;
begin
   sFiltro := '';

   if rgStatus.ItemIndex = 0 then
   begin
      sFiltro := 'Status: Todos;';
      sStatus := 'T'
   end
   else if rgStatus.ItemIndex = 1 then
   begin
      sFiltro := 'Status: Ativo;';
      sStatus := 'S'
   end
   else
   begin
      sFiltro := 'Status: Inativo;';
      sStatus := 'N';
   end;

   if edtSigla.Text <> '' then
   begin
      sFiltro := sFiltro + 'Sigla: ' + edtSigla.Text;
   end;

   DM_BD.CDS_RELPARTIDOS.Close;
   DM_BD.CDS_RELPARTIDOS.Params.ParamByName('SIGLA').AsString := edtSigla.Text;
   DM_BD.CDS_RELPARTIDOS.Params.ParamByName('NOMEPARTIDO').AsString := edtNome.Text;
   DM_BD.CDS_RELPARTIDOS.Params.ParamByName('STATUS').AsString := sStatus;
   DM_BD.CDS_RELPARTIDOS.Open;

   RLReport.Preview();
end;

procedure TFRM_RELPARTIDOS.FormShow(Sender: TObject);
begin
   rgStatus.ItemIndex := 0;
   edtSigla.SetFocus;
end;

procedure TFRM_RELPARTIDOS.lblFiltrosBeforePrint(Sender: TObject;
  var AText: string; var PrintIt: Boolean);
begin
   if sFiltro <> '' then
      AText := sFiltro;
end;

end.
