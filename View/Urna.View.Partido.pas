unit Urna.View.Partido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzLabel, Vcl.ExtCtrls,
  RzPanel;

type
  TFRM_PARTIDO = class(TForm)
    pnlPartido: TRzPanel;
    lblPartidoDepFederal: TRzLabel;
    lblNomePartido: TRzLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_PARTIDO: TFRM_PARTIDO;

implementation

{$R *.dfm}

end.
