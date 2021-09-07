unit Urna.Enumeradores;

interface

type
   TTipoEleicao = (tpFederal, tpMunicipal);

   TTipoCargo = (tpDepFederal, tpDepEstadual, tpSenador1, tpSenador2, tpGovernador, tpPresidente, tpNenhum);

   TTipoCargoHelper = record helper for TTipoCargo
      function Descricao: string;
   end;

   TTipoPesquisa = (tpCandidato, tpEleicao);

implementation

{ TTipoCargoHelper }

function TTipoCargoHelper.Descricao: string;
begin
   case Self of
      tpDepFederal:  Result := 'DEPUTADO FEDERAL';
      tpDepEstadual: Result := 'DEPUTADO ESTADUAL';
      tpSenador1:    Result := 'SENADOR';
      tpSenador2:    Result := 'SENADOR';
      tpGovernador:  Result := 'GOVERNADOR';
      tpPresidente:  Result := 'PRESIDENTE';
      tpNenhum:      Result := '';
   end;
end;

end.
