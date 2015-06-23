unit UNT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons, XPMan, DB, ADODB, ComCtrls;

type
  TfrmLogin = class(TForm)
    btnLogin: TBitBtn;
    btnCancel: TBitBtn;
    logImage: TImage;
    edtUsuario: TEdit;
    edtSenha: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    qUsuario: TADOQuery;
    sbLogin: TStatusBar;
    procedure Button1Click(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    function loginValido(const usuario, senha: String): Boolean;
    function isConectado : Boolean;
    procedure btnLoginClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;
  codigo : integer;
  crm : integer;
  nome : string;

implementation

uses untDMCentral, untDesktop;

{$R *.dfm}
procedure TfrmLogin.Button1Click(Sender: TObject);
begin
CLOSE;
end;

procedure TfrmLogin.btnCancelClick(Sender: TObject);
begin
 close;
end;

function TfrmLogin.loginValido(const usuario, senha: String): Boolean;
begin
  WITH qusuario DO
    BEGIN
      Close;
      Parameters.ParamByName('plogin').Value := Trim(usuario);
      Parameters.ParamByName('pSenha').Value := senha;
      Open;
      codigo :=  Fields[4].AsInteger;
      crm := Fields[5].AsInteger;
      nome := Fields[3].AsString;
      Result :=  (Fields[0].AsInteger > 0);
    END;
end;

procedure TfrmLogin.btnLoginClick(Sender: TObject);
begin

  IF (edtUsuario.Text = '') THEN //verificando se o campo esta vazio
    BEGIN
      MessageDlg('O Campo "USUARIO" deve ser preenchido', mtWarning, [mbOk],0);
      IF edtUsuario.CanFocus THEN
        edtUsuario.SetFocus;
      EXIT;
    END;
  IF (edtSenha.Text = '') THEN //verificando se o campo esta vazio
    BEGIN
      MessageDlg('O Campo "SENHA" deve ser preenchido', mtWarning, [mbOk],0);
      IF edtSenha.CanFocus THEN
        edtSenha.SetFocus;
      EXIT;
    END;


  IF loginValido(edtUsuario.Text, edtSenha.Text) THEN  //validando o login e senha
    BEGIN
      //
      TRY
        Application.CreateForm(TfrmDesktop, frmdesktop);
        frmDesktop.sbDesktop.Panels[1].Text := IntToStr(codigo);
        frmDesktop.sbDesktop.Panels[2].Text := nome;
        frmDesktop.verAgenda(crm);
        FreeAndNil(frmLogin); //finaliza o frmLogim
        frmDesktop.ShowModal; //carregando o frmDesktop
      FINALLY
        FreeAndNil(frmDesktop);
      END;
    END
  ELSE
    MessageDlg('Erro ao tentar logar, verifique Usuario e Senha',mtError,[mbOK],0);


end;

function TfrmLogin.isConectado: Boolean;
begin
  IF (dmCentral.conecta.connected) THEN
    Result := true
  ELSE
    Result := False;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  IF isConectado THEN
    sbLogin.Panels[0].Text := 'Conectado'
  ELSE
    sbLogin.Panels[0].Text := 'Erro de Conexão';
end;

end.
