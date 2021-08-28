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
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure DesativarEleicoes;
  public
    { Public declarations }
  end;

var
  FRM_ESTADO: TFRM_ESTADO;

implementation

uses
   Urna.Service;

{$R *.dfm}

procedure TFRM_ESTADO.DesativarEleicoes;
begin
   TEleicoesService.New.DesativarEleicoes;
end;

procedure TFRM_ESTADO.edtOkEnter(Sender: TObject);
begin
   Close;
end;

procedure TFRM_ESTADO.FormShow(Sender: TObject);
begin
   DesativarEleicoes;
end;

end.
