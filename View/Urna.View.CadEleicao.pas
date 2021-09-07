unit Urna.View.CadEleicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzLabel, Vcl.Mask, RzEdit,
  RzDBEdit, Vcl.Imaging.pngimage, PraButtonStyle, RzButton, RzRadChk, RzDBChk,
  Data.DB, RzCmboBx, RzDBCmbo, System.Actions, Vcl.ActnList, Vcl.ExtCtrls,
  RzPanel;

type
  TFRM_CADELEICAO = class(TForm)
    edtCodigo: TRzDBEdit;
    lblCodigo: TRzLabel;
    lblDescricao: TRzLabel;
    lblData: TRzLabel;
    lblTurno: TRzLabel;
    edtDescricao: TRzDBEdit;
    dtEleicao: TRzDBDateTimeEdit;
    chkAtivo: TRzDBCheckBox;
    DataSource: TDataSource;
    cbTurno: TRzDBComboBox;
    ActionList: TActionList;
    ACT_SALVAR: TAction;
    ACT_FECHAR: TAction;
    btnSalvar: TPraButtonStyle;
    btnCancelar: TPraButtonStyle;
    pnlMain: TRzPanel;
    RzPanel1: TRzPanel;
    procedure FormCreate(Sender: TObject);
    procedure ACT_SALVARExecute(Sender: TObject);
    procedure ACT_FECHARExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbTurnoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure PrepararInsert;
    function ValidarCampos: Boolean;
  public
    { Public declarations }
  end;

var
  FRM_CADELEICAO: TFRM_CADELEICAO;

implementation

uses
   DMBD, Urna.Service;

{$R *.dfm}

procedure TFRM_CADELEICAO.ACT_FECHARExecute(Sender: TObject);
begin
   Close;
end;

procedure TFRM_CADELEICAO.ACT_SALVARExecute(Sender: TObject);
begin
   try
      if ValidarCampos then
      begin
         DM_BD.CDS_ELEICOES.Post;
         ShowMessage('Eleição Cadastrada Com Sucesso!');
         PrepararInsert;
      end;
   except
      on E: Exception do
      begin
         raise Exception.Create('Falha ao cadastrar eleição: ' + E.Message);
      end;

   end;
end;

procedure TFRM_CADELEICAO.cbTurnoKeyPress(Sender: TObject; var Key: Char);
begin
   Key := #0;
end;

procedure TFRM_CADELEICAO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if not TEleicoesService.New.ValidarDataEleicao then
      Application.Terminate;
end;

procedure TFRM_CADELEICAO.FormCreate(Sender: TObject);
begin
   DM_BD.CDS_ELEICOES.Close;
   DM_BD.CDS_ELEICOES.ParamByName('IDELEICAO').AsInteger := -1;
   DM_BD.CDS_ELEICOES.Open;

   PrepararInsert;
end;

procedure TFRM_CADELEICAO.FormShow(Sender: TObject);
begin
   edtDescricao.SetFocus;
end;

procedure TFRM_CADELEICAO.PrepararInsert;
begin
   DM_BD.CDS_ELEICOES.Insert;
end;

function TFRM_CADELEICAO.ValidarCampos: Boolean;
begin
   Result := True;

   if edtDescricao.Text = '' then
   begin
      ShowMessage('Informe a Descrição');
      Result := False;
      exit;
   end;

   if cbTurno.Text = '' then
   begin
      ShowMessage('Informe o Turno');
      Result := False;
      exit;
   end;

   if dtEleicao.date = 0 then
   begin
      ShowMessage('Informe a Data da Eleição');
      Result := False;
      exit;
   end;

end;

end.
