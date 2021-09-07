unit Urna.View.CadCandidato;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzCmboBx, Vcl.ExtCtrls, RzButton,
  RzRadChk, RzDBChk, Vcl.StdCtrls, RzDBCmbo, Vcl.Mask, RzEdit, RzDBEdit,
  RzLabel, RzPanel, PraButtonStyle, Data.DB, System.Actions, Vcl.ActnList,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg;

type
  TFRM_CADCANDIDATO = class(TForm)
    pnlOpcoes: TRzPanel;
    pnlMain: TRzPanel;
    lblCodigo: TRzLabel;
    lblNome: TRzLabel;
    edtCodigo: TRzDBEdit;
    edtNome: TRzDBEdit;
    edtNumero: TRzDBEdit;
    lblNumero: TRzLabel;
    cbCargo: TRzDBComboBox;
    lblCargo: TRzLabel;
    chkAtivo: TRzDBCheckBox;
    imgFoto: TImage;
    cbPartido: TRzDBComboBox;
    lblPartido: TRzLabel;
    lblUF: TRzLabel;
    btnCarregarFoto: TPraButtonStyle;
    DS_CAD: TDataSource;
    cbEstado: TRzDBComboBox;
    btnIncluir: TPraButtonStyle;
    btnSalvar: TPraButtonStyle;
    btnPesquisar: TPraButtonStyle;
    btnCancelar: TPraButtonStyle;
    ActionList: TActionList;
    ACT_INCLUIR: TAction;
    ACT_SALVAR: TAction;
    ACT_CANCELAR: TAction;
    ACT_PESQUISAR: TAction;
    ACT_CARREGARFOTO: TAction;
    cbEleicao: TRzDBComboBox;
    lblEleicao: TRzLabel;
    OpenDialog: TOpenDialog;
    procedure ACT_INCLUIRExecute(Sender: TObject);
    procedure ACT_SALVARExecute(Sender: TObject);
    procedure ACT_CANCELARExecute(Sender: TObject);
    procedure ACT_CARREGARFOTOExecute(Sender: TObject);
    procedure ACT_PESQUISARExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure MontarComboPartidos;
    procedure MontarComboEleicoes;
    procedure CarregarFoto;
  public
    { Public declarations }
  end;

var
  FRM_CADCANDIDATO: TFRM_CADCANDIDATO;

implementation

uses
   DMBD, Urna.View.Pesquisar, Urna.Enumeradores, Urna.Consts;

{$R *.dfm}

procedure TFRM_CADCANDIDATO.ACT_CANCELARExecute(Sender: TObject);
begin

   imgFoto.Picture.LoadFromFile(IMG_SEM_FOTO);
end;

procedure TFRM_CADCANDIDATO.ACT_CARREGARFOTOExecute(Sender: TObject);
begin
   CarregarFoto;
end;

procedure TFRM_CADCANDIDATO.ACT_INCLUIRExecute(Sender: TObject);
begin
   DM_BD.CDS_CANDIDATOS.Close;
   DM_BD.CDS_CANDIDATOS.Params.ParamByName('IDCANDIDATO').AsInteger     := -1;
   DM_BD.CDS_CANDIDATOS.Params.ParamByName('NUMCANDIDATO').AsInteger    := -1;
   DM_BD.CDS_CANDIDATOS.Params.ParamByName('CARGOCANDIDATO').AsString   := '';
   DM_BD.CDS_CANDIDATOS.Params.ParamByName('UF').AsString               := '';
   DM_BD.CDS_CANDIDATOS.Params.ParamByName('IDELEICAO').AsInteger       := -1;
   DM_BD.CDS_CANDIDATOS.Open;

   MontarComboPartidos;
   MontarComboEleicoes;

   imgFoto.Picture.LoadFromFile(IMG_SEM_FOTO);

   DM_BD.CDS_CANDIDATOS.Insert;
   edtNome.SetFocus;
end;

procedure TFRM_CADCANDIDATO.ACT_PESQUISARExecute(Sender: TObject);
var
   Foto: TJpegImage;
   Stm: TStream;
begin
   Application.CreateForm(TFRM_PESQUISAR, FRM_PESQUISAR);
   Stm  := TMemoryStream.Create;
   Foto :=  TJpegImage.Create;
   try
      FRM_PESQUISAR.TipoPesquisa := tpCandidato;
      FRM_PESQUISAR.ShowModal;

      if not DM_BD.CDS_CANDIDATOS.IsEmpty then
      begin
         TBlobField(DM_BD.CDS_CANDIDATOSFOTO).SaveToStream(Stm);
         Stm.Position := 0;
         Foto.LoadFromStream(Stm);

         try
            imgFoto.Picture.Assign(Foto);
         except
            imgFoto.Picture.LoadFromFile(IMG_SEM_FOTO);
         end;

         DM_BD.CDS_CANDIDATOS.Edit;
      end;

   finally
      FRM_PESQUISAR.Free;
      Stm.Free;
   end;
end;

procedure TFRM_CADCANDIDATO.ACT_SALVARExecute(Sender: TObject);
begin
   DM_BD.CDS_CANDIDATOS.Post;
   ShowMessage('Comando Executado com Sucesso!');
   imgFoto.Picture.LoadFromFile(IMG_SEM_FOTO);
   ACT_INCLUIR.Execute;
end;

procedure TFRM_CADCANDIDATO.CarregarFoto;
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

            DM_BD.CDS_CANDIDATOSFOTO.LoadFromStream(loMemoryStream);
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

procedure TFRM_CADCANDIDATO.FormShow(Sender: TObject);
begin
   ACT_INCLUIR.Execute;
end;

procedure TFRM_CADCANDIDATO.MontarComboEleicoes;
begin
   cbEleicao.Clear;

   DM_BD.CDS_ELEICOES.Close;
   DM_BD.CDS_ELEICOES.ParamByName('IDELEICAO').AsInteger := 0;
   DM_BD.CDS_ELEICOES.ParamByName('DATA').AsString  := '';
   DM_BD.CDS_ELEICOES.Open;

   DM_BD.CDS_ELEICOES.Filtered := False;
   DM_BD.CDS_ELEICOES.Filter := 'ATIVO = ''S'' ';
   DM_BD.CDS_ELEICOES.Filtered := True;

   try
      while not DM_BD.CDS_ELEICOES.eof do
      begin
         cbEleicao.Items.Add(DM_BD.CDS_ELEICOESDESCRICAOELEICAO.AsString);
         cbEleicao.Values.Add(DM_BD.CDS_ELEICOESIDELEICAO.AsString);

         DM_BD.CDS_ELEICOES.Next;
      end;
   finally
      DM_BD.CDS_ELEICOES.Filtered := False;
      DM_BD.CDS_ELEICOES.Filter := '';
      DM_BD.CDS_ELEICOES.Filtered := True;
   end;

end;

procedure TFRM_CADCANDIDATO.MontarComboPartidos;
begin
   cbPartido.Clear;

   DM_BD.CDS_PARTIDOS.Close;
   DM_BD.CDS_PARTIDOS.Params.ParamByName('IDPARTIDO').AsInteger := 0;
   DM_BD.CDS_PARTIDOS.Params.ParamByName('NUMPARTIDO').AsString := '';
   DM_BD.CDS_PARTIDOS.Open;

   while not DM_BD.CDS_PARTIDOS.eof do
   begin
      cbPartido.Items.Add(DM_BD.CDS_PARTIDOSNOMEPARTIDO.AsString);
      cbPartido.Values.Add(DM_BD.CDS_PARTIDOSIDPARTIDO.AsString);

      DM_BD.CDS_PARTIDOS.Next;
   end;
end;

end.
