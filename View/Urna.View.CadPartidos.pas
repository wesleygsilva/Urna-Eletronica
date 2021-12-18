unit Urna.View.CadPartidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, RzRadChk, RzDBChk,
  Vcl.StdCtrls, Vcl.Mask, RzEdit, RzDBEdit, PraButtonStyle,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, RzLabel, RzPanel, Data.DB, System.Actions,
  Vcl.ActnList, Vcl.Imaging.jpeg, RzDBLbl;

type
  TFRM_CADPARTIDO = class(TForm)
    pnlMain: TRzPanel;
    lblCodigo: TRzLabel;
    lblNome: TRzLabel;
    lblSigla: TRzLabel;
    lblNumero: TRzLabel;
    imgFoto: TImage;
    btnCarregarFoto: TPraButtonStyle;
    edtCodigo: TRzDBEdit;
    edtNome: TRzDBEdit;
    edtSigla: TRzDBEdit;
    chkAtivo: TRzDBCheckBox;
    pnlOpcoes: TRzPanel;
    btnIncluir: TPraButtonStyle;
    btnSalvar: TPraButtonStyle;
    btnPesquisar: TPraButtonStyle;
    btnCancelar: TPraButtonStyle;
    edtNumero: TRzDBEdit;
    ActionList: TActionList;
    ACT_INCLUIR: TAction;
    ACT_SALVAR: TAction;
    ACT_CANCELAR: TAction;
    ACT_PESQUISAR: TAction;
    ACT_CARREGARFOTO: TAction;
    DS_CAD: TDataSource;
    OpenDialog: TOpenDialog;
    lblDataCriacao: TRzLabel;
    lbDataCriacao: TRzDBLabel;
    procedure ACT_CARREGARFOTOExecute(Sender: TObject);
    procedure ACT_INCLUIRExecute(Sender: TObject);
    procedure ACT_SALVARExecute(Sender: TObject);
    procedure ACT_CANCELARExecute(Sender: TObject);
    procedure ACT_PESQUISARExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure CarregarFoto;
  public
    { Public declarations }
  end;

var
  FRM_CADPARTIDO: TFRM_CADPARTIDO;

implementation

uses
   DMBD, Urna.Consts, Urna.View.Pesquisar, Urna.Enumeradores;

{$R *.dfm}

procedure TFRM_CADPARTIDO.ACT_CANCELARExecute(Sender: TObject);
begin
   DM_BD.CDS_PARTIDOS.Cancel;
   imgFoto.Picture.LoadFromFile(IMG_SEM_FOTO);
   edtNumero.SetFocus;
end;

procedure TFRM_CADPARTIDO.ACT_CARREGARFOTOExecute(Sender: TObject);
begin
   try
      CarregarFoto;
   Except
      on E: exception do
      begin
         showMessage('Formato de arquivo inválido: Formatos aceito: .png');
      end;

   end;
end;

procedure TFRM_CADPARTIDO.ACT_INCLUIRExecute(Sender: TObject);
begin
   DM_BD.CDS_PARTIDOS.Close;
   DM_BD.CDS_PARTIDOS.Params.ParamByName('IDPARTIDO').AsInteger  := -1;
   DM_BD.CDS_PARTIDOS.Params.ParamByName('NUMPARTIDO').AsInteger := -1;
   DM_BD.CDS_PARTIDOS.Open;

   imgFoto.Picture.LoadFromFile(IMG_SEM_FOTO);

   DM_BD.CDS_PARTIDOS.Insert;
   edtNumero.SetFocus;
end;

procedure TFRM_CADPARTIDO.ACT_PESQUISARExecute(Sender: TObject);
var
   Foto: TpngImage;
   Stm: TStream;
begin
   Application.CreateForm(TFRM_PESQUISAR, FRM_PESQUISAR);
   Stm  := TMemoryStream.Create;
   Foto :=  TpngImage.Create;
   try
      FRM_PESQUISAR.TipoPesquisa := tpPartido;
      FRM_PESQUISAR.ShowModal;

      if not DM_BD.CDS_PARTIDOS.IsEmpty then
      begin
         TBlobField(DM_BD.CDS_PARTIDOSLOGO).SaveToStream(Stm);
         Stm.Position := 0;
         Foto.LoadFromStream(Stm);

         try
            imgFoto.Picture.Assign(Foto);
         except
            imgFoto.Picture.LoadFromFile(IMG_SEM_FOTO);
         end;

         DM_BD.CDS_PARTIDOS.Edit;
      end;

   finally
      FRM_PESQUISAR.Free;
      Stm.Free;
      Foto.Free;
   end;
end;

procedure TFRM_CADPARTIDO.ACT_SALVARExecute(Sender: TObject);
begin
   DM_BD.CDS_PARTIDOS.Post;
   ShowMessage('Comando Executado com Sucesso!');
   imgFoto.Picture.LoadFromFile(IMG_SEM_FOTO);
   DM_BD.CDS_PARTIDOS.Insert;
   edtNumero.SetFocus;
end;

procedure TFRM_CADPARTIDO.CarregarFoto;
var
   sFileName: String;
   loMemoryStream: TMemoryStream;
begin
   try
   if OpenDialog.Execute then
   begin
      sFileName := OpenDialog.FileName;

      if FileExists(sFileName) then
      begin
         loMemoryStream := TMemoryStream.Create;
         try
            loMemoryStream.LoadFromFile(sFileName);

            imgFoto.Picture.LoadFromFile(sFileName);

            DM_BD.CDS_PARTIDOSLOGO.LoadFromStream(loMemoryStream);
         finally
            loMemoryStream.Free;
         end;
      end;
   end;
   except
      on E: Exception do
      begin
         ShowMessage('Falha ao inserir foto: ' + sLineBreak +
                     E.Message);
      end;
   end;
end;

procedure TFRM_CADPARTIDO.FormShow(Sender: TObject);
begin
   ACT_INCLUIR.Execute;
end;

end.
