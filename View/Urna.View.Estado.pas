unit Urna.View.Estado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzLabel, RzCmboBx,
  Vcl.Mask, RzEdit;

type
  TFRM_ESTADO = class(TForm)
    cbEstado: TRzComboBox;
    lblEstado: TRzLabel;
    edtOk: TRzEdit;
    procedure edtOkEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_ESTADO: TFRM_ESTADO;

implementation

{$R *.dfm}

procedure TFRM_ESTADO.edtOkEnter(Sender: TObject);
begin
   Close;
end;

end.
