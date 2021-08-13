unit Urna.View.Candidato;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzLabel, Vcl.ExtCtrls,
  RzPanel;

type
  TFRM_NOMECANDIDATO = class(TForm)
    pnlNomeCandidato: TRzPanel;
    lblInfoNomeDepFederal: TRzLabel;
    lblNomeCandidato: TRzLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_NOMECANDIDATO: TFRM_NOMECANDIDATO;

implementation

{$R *.dfm}

end.
