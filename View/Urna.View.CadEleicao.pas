unit Urna.View.CadEleicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzLabel, Vcl.Mask, RzEdit,
  RzDBEdit, Vcl.Imaging.pngimage, PraButtonStyle, RzButton, RzRadChk, RzDBChk,
  Data.DB;

type
  TFRM_CADELEICAO = class(TForm)
    edtCodigo: TRzDBEdit;
    lblCodigo: TRzLabel;
    lblDescricao: TRzLabel;
    lblData: TRzLabel;
    edtTurno: TRzDBEdit;
    RzLabel3: TRzLabel;
    edtDescricao: TRzDBEdit;
    dtEleicao: TRzDBDateTimeEdit;
    chkAtivo: TRzDBCheckBox;
    btnSalvar: TPraButtonStyle;
    btnCancelar: TPraButtonStyle;
    DataSource: TDataSource;
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_CADELEICAO: TFRM_CADELEICAO;

implementation

uses
   DMBD;

{$R *.dfm}

procedure TFRM_CADELEICAO.btnCancelarClick(Sender: TObject);
begin
   DM_BD.CDS_ELEICOES.Insert;
end;

procedure TFRM_CADELEICAO.btnSalvarClick(Sender: TObject);
begin
   try
      DM_BD.CDS_ELEICOES.Post;
      ShowMessage('Eleição Cadastrada Com Sucesso!');
      DM_BD.CDS_ELEICOES.Insert;
   except
      on E: Exception do
      begin
         raise Exception.Create('Falha ao cadastrar eleição: ' + E.Message);
      end;

   end;
end;

procedure TFRM_CADELEICAO.FormCreate(Sender: TObject);
begin
   DM_BD.CDS_ELEICOES.Close;
   DM_BD.CDS_ELEICOES.ParamByName('IDELEICAO').AsInteger := -1;
   DM_BD.CDS_ELEICOES.Open;

   DM_BD.CDS_ELEICOES.Insert;
end;

end.
