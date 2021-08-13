unit Urna.Service;

interface

uses
   Urna.Interfaces, Urna.Dto, DMBD, System.Classes, System.SysUtils,
  Vcl.ExtCtrls, Data.DB, Vcl.Imaging.jpeg, Urna.Enumeradores;

type
   TEleicoesService = class(TInterfacedObject, IEleicoes)
   private
      procedure CarregarImagemCandidato(Img: TImage);

   public
      constructor create;
      destructor destroy; override;
      class function New: IEleicoes;

      //Metodos da Interface
      function ListarPartido(iNumero: Integer): String;
      function ListarCandidato(iNumero: Integer; Cargo: TTipoCargo; Img: TImage = nil; sUF: String = ''): string;
      function IniciarVotacao(sUF: String): Boolean;
      function ValidarDataEleicao: Boolean;
      procedure EfetivarVoto;
   end;

implementation

uses
  Vcl.Imaging.pngimage;


{ TEleicoesService }

procedure TEleicoesService.CarregarImagemCandidato(Img: TImage);
var
   Stm: TStream;
   Jpg: TJPEGImage;
begin
   if TBlobField(DM_BD.CDS_CANDIDATOSFOTO).BlobSize > 0 then
   begin
      Stm := TMemoryStream.Create;
      Jpg := TJpegImage.Create;
      try
         TBlobField(DM_BD.CDS_CANDIDATOSFOTO).SaveToStream(Stm);
         Stm.Position := 0;
         Jpg.LoadFromStream(Stm);
         try
            Img.Picture.Assign(Jpg);
         except
            Img.Picture.Assign(nil);
         end;
      finally
         Stm.Free;
         Jpg.Free;
      end;
   end
   else
      Img.Picture.Assign(nil);
end;

constructor TEleicoesService.create;
begin

end;

destructor TEleicoesService.destroy;
begin

  inherited;
end;

procedure TEleicoesService.EfetivarVoto;
begin
   if DM_BD.CDS_CANDIDATOSIDCANDIDATO.AsInteger <> 0 then
   begin
      DM_BD.CDS_VOTACOES.Close;
      DM_BD.CDS_VOTACOES.ParamByName('IDVOTACAO').AsInteger    := 0;
      DM_BD.CDS_VOTACOES.ParamByName('IDCANDIDATO').AsInteger  := DM_BD.CDS_CANDIDATOSIDCANDIDATO.AsInteger;
      DM_BD.CDS_VOTACOES.ParamByName('IDELEICAO').AsInteger    := DM_BD.CDS_ELEICOESIDELEICAO.AsInteger;
      DM_BD.CDS_VOTACOES.Open;

      if not DM_BD.CDS_VOTACOES.IsEmpty then
         DM_BD.CDS_VOTACOES.Edit
      else
         DM_BD.CDS_VOTACOES.Insert;

      DM_BD.CDS_VOTACOESIDCANDIDATO.AsInteger   := DM_BD.CDS_CANDIDATOSIDCANDIDATO.AsInteger;
      DM_BD.CDS_VOTACOESIDELEICAO.AsInteger     := DM_BD.CDS_ELEICOESIDELEICAO.AsInteger;
      DM_BD.CDS_VOTACOESQTDVOTOS.AsInteger      := DM_BD.CDS_VOTACOESQTDVOTOS.AsInteger + 1;
      DM_BD.CDS_VOTACOESATIVO.AsString          := 'S';
      DM_BD.CDS_VOTACOES.Post;
   end;
end;

function TEleicoesService.IniciarVotacao(sUF: String): Boolean;
begin
   DM_BD.CDS_VOTACOES.Close;
   DM_BD.CDS_VOTACOES.ParamByName('IDVOTACAO').AsInteger := -1;
   DM_BD.CDS_VOTACOES.Open;

   DM_BD.CDS_VOTACOES.Insert;
end;

function TEleicoesService.ListarCandidato(iNumero: Integer; Cargo: TTipoCargo; Img: TImage = nil; sUF: String = ''): string;
begin
   try
      Result := '';

      DM_BD.CDS_CANDIDATOS.Close;
      DM_BD.CDS_CANDIDATOS.ParamByName('IDCANDIDATO').AsInteger := 0;
      DM_BD.CDS_CANDIDATOS.ParamByName('NUMCANDIDATO').AsInteger := iNumero;
      DM_BD.CDS_CANDIDATOS.ParamByName('CARGOCANDIDATO').asString := Cargo.Descricao;
      DM_BD.CDS_CANDIDATOS.ParamByName('UF').asString := sUF;
      DM_BD.CDS_CANDIDATOS.Open;

      if not DM_BD.CDS_CANDIDATOS.IsEmpty then
      begin
         CarregarImagemCandidato(Img);
         Result := DM_BD.CDS_CANDIDATOSNOMECANDIDATO.AsString;
      end;

   Except
      on E: Exception do
      begin
         raise Exception.Create('Falha ao carregar Candidato: ' + E.Message);
      end;
   end;
end;

function TEleicoesService.ListarPartido(iNumero: Integer): String;
begin
   try
      Result := '';

      DM_BD.CDS_PARTIDOS.Close;
      DM_BD.CDS_PARTIDOS.ParamByName('IDPARTIDO').AsInteger := 0;
      DM_BD.CDS_PARTIDOS.ParamByName('NUMPARTIDO').AsInteger := iNumero;
      DM_BD.CDS_PARTIDOS.Open;

      if not DM_BD.CDS_PARTIDOS.IsEmpty then
      begin
         Result := DM_BD.CDS_PARTIDOSNOMEPARTIDO.AsString + ' (' + DM_BD.CDS_PARTIDOSSIGLA.AsString + ')';
      end;
   Except
      on E: Exception do
      begin
         raise Exception.Create('Falha ao carregar partido: ' + E.Message);
      end;
   end;
end;

class function TEleicoesService.New: IEleicoes;
begin
   Result := Self.create;
end;

function TEleicoesService.ValidarDataEleicao: Boolean;
begin
   DM_BD.CDS_ELEICOES.Close;
   DM_BD.CDS_ELEICOES.ParamByName('IDELEICAO').AsInteger := 0;
   DM_BD.CDS_ELEICOES.ParamByName('DATA').AsDateTime := Date;
   DM_BD.CDS_ELEICOES.open;

   Result := not DM_BD.CDS_ELEICOES.IsEmpty;
end;

end.
