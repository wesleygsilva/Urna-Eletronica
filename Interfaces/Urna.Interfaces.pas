unit Urna.Interfaces;

interface

uses
   Urna.Dto, Vcl.ExtCtrls, Urna.Enumeradores;

type
   IEleicoes = interface
   ['{4B360226-4A28-471B-A9B4-98401965B42D}']
      function ListarPartido(iNumero: Integer): String;
      function ListarCandidato(iNumero: Integer; Cargo: TTipoCargo; Img: TImage = nil; sUF: String = ''): string;
      function IniciarVotacao(sUF: String): Boolean;
      function ValidarDataEleicao: Boolean;
      procedure EfetivarVoto(Cargo: TTipoCargo);
      procedure DesativarEleicoes;
   end;

implementation

end.
