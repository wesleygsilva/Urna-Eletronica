unit Urna.Service;

interface

uses
   Urna.Interfaces, Urna.Dto, DMBD, System.Classes, System.SysUtils,
  Vcl.ExtCtrls, Data.DB, Vcl.Imaging.jpeg, Urna.Enumeradores;

type
   TEleicoesService = class(TInterfacedObject, IEleicoes)
   private
      procedure CarregarImagemCandidato(Img: TImage);
      procedure GravarCandidatoNulo(Cargo: TTipoCargo);
      procedure GravarVotacao;
      procedure PesquisarCandidato(sTexto: String);
      procedure PesquisarPartido(sTexto: string);
   public
      constructor create;
      destructor destroy; override;
      class function New: IEleicoes;

      //Metodos da Interface
      function ListarPartido(iNumero: Integer): String;
      function ListarCandidato(iNumero: Integer; Cargo: TTipoCargo; Img: TImage = nil; sUF: String = ''): string;
      function IniciarVotacao(sUF: String): Boolean;
      function ValidarDataEleicao: Boolean;
      procedure EfetivarVoto(Cargo: TTipoCargo);
      procedure DesativarEleicoes;
      procedure Pesquisar(TipoPesquisa: TTipoPesquisa; sTexto: string);
   end;

implementation

uses
  Vcl.Imaging.pngimage, Base.ExecutorSQL, Urna.SQL;


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

procedure TEleicoesService.DesativarEleicoes;
var
   sql: TExecutorSql;
begin
   sql := TExecutorSql.create(DM_BD.SQLConnection);
   try
      sql.ExecutarSQL(SQL_DESATIVARELEICOES);
   finally
      sql.Free;
   end;
end;

destructor TEleicoesService.destroy;
begin

  inherited;
end;

procedure TEleicoesService.EfetivarVoto(Cargo: TTipoCargo);
begin
   if ValidarDataEleicao then
   begin
      if DM_BD.CDS_CANDIDATOSIDCANDIDATO.AsInteger <> 0 then
         GravarVotacao
      else
         GravarCandidatoNulo(Cargo);
   end;
end;

procedure TEleicoesService.GravarCandidatoNulo(Cargo: TTipoCargo);
var
   sql: TExecutorSql;

   function RetornarSQLComParametros: string;
   begin
      Result := StringReplace(SQL_RETORNARCANDIDATONULO, ':CARGOCANDIDATO', QuotedStr(Cargo.Descricao), [rfReplaceAll]);
   end;

   function InserirCandidatoNulo: String;
   var
      sSql: string;
   begin
      sSql := SQL_INSERECANDIDATONULO;
      sSql := StringReplace(sSql, ':CARGOCANDIDATONULO', QuotedStr(Cargo.Descricao + ' NULO'), [rfReplaceAll]);
      sSql := StringReplace(sSql, ':CARGOCANDIDATO', QuotedStr(Cargo.Descricao), [rfReplaceAll]);
      sSql := StringReplace(sSql, ':IDELEICAO', DM_BD.CDS_ELEICOESIDELEICAO.AsString, [rfReplaceAll]);
      Result := sSql;
   end;
begin
   sql := TExecutorSql.create(DM_BD.SQLConnection);
   try
      sql.ExecutarSQL(RetornarSQLComParametros);

      if not sql.IsEmpty then
      begin
         DM_BD.CDS_CANDIDATOS.Close;
         DM_BD.CDS_CANDIDATOS.ParamByName('IDCANDIDATO').AsInteger   := sql.FieldByName('IDCANDIDATO').AsInteger;
         DM_BD.CDS_CANDIDATOS.ParamByName('NUMCANDIDATO').AsInteger  := 0;
         DM_BD.CDS_CANDIDATOS.ParamByName('CARGOCANDIDATO').AsString := Cargo.Descricao;
         DM_BD.CDS_CANDIDATOS.ParamByName('UF').AsString             := '';
         DM_BD.CDS_CANDIDATOS.ParamByName('IDELEICAO').AsInteger   := DM_BD.CDS_ELEICOESIDELEICAO.AsInteger;
         DM_BD.CDS_CANDIDATOS.Open;

         GravarVotacao;
      end
      else
      begin
         sql.ExecutarSQL(InserirCandidatoNulo);

         DM_BD.CDS_CANDIDATOS.Close;
         DM_BD.CDS_CANDIDATOS.ParamByName('IDCANDIDATO').AsInteger   := 0;
         DM_BD.CDS_CANDIDATOS.ParamByName('NUMCANDIDATO').AsInteger  := 0;
         DM_BD.CDS_CANDIDATOS.ParamByName('CARGOCANDIDATO').AsString := Cargo.Descricao;
         DM_BD.CDS_CANDIDATOS.ParamByName('UF').AsString             := '';
         DM_BD.CDS_CANDIDATOS.ParamByName('IDELEICAO').AsInteger   := DM_BD.CDS_ELEICOESIDELEICAO.AsInteger;
         DM_BD.CDS_CANDIDATOS.Open;

         GravarVotacao;
      end;
   finally
      sql.Free;
   end;
end;

procedure TEleicoesService.GravarVotacao;
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
      DM_BD.CDS_CANDIDATOS.ParamByName('IDELEICAO').AsInteger := DM_BD.CDS_ELEICOESIDELEICAO.AsInteger;
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

procedure TEleicoesService.Pesquisar(TipoPesquisa: TTipoPesquisa; sTexto: string);
begin
   case TipoPesquisa of
      tpCandidato:   PesquisarCandidato(sTexto);
      tpEleicao: ;
      tpPartido:     PesquisarPartido(sTexto);
   end;
end;

procedure TEleicoesService.PesquisarCandidato(sTexto: String);
   function RetornarSqlComParametros: String;
   begin
      Result := StringReplace(SQL_PESQUISARCANDIDATOS, ':NOME', QuotedStr('%'+ sTexto +'%'), [rfReplaceAll]);
   end;
begin
   DM_BD.CDS_AUX.Close;
   DM_BD.CDS_AUX.CommandText := RetornarSqlComParametros;
   DM_BD.CDS_AUX.Open;
end;

procedure TEleicoesService.PesquisarPartido(sTexto: string);
   function RetornarSqlComParametros: String;
   begin
      Result := StringReplace(SQL_PESQUISARPARTIDOS, ':NOME', QuotedStr('%'+ sTexto +'%'), [rfReplaceAll]);
   end;
begin
   DM_BD.CDS_AUX.Close;
   DM_BD.CDS_AUX.CommandText := RetornarSqlComParametros;
   DM_BD.CDS_AUX.Open;
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
