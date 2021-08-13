unit Urna.View.Legenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzLine, Vcl.StdCtrls, RzLabel,
  Vcl.ExtCtrls, RzPanel;

type
  TFRM_LEGENDA = class(TForm)
    pnlLegenda: TRzPanel;
    lbl: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLine: TRzLine;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_LEGENDA: TFRM_LEGENDA;

implementation

{$R *.dfm}

end.
