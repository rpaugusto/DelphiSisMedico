unit untDesktop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, ImgList, ComCtrls, ToolWin, Menus, DB,
  ADODB, ActnList;

type
  TfrmDesktop = class(TForm)
    MainMenu1: TMainMenu;
    sbDesktop: TStatusBar;
    Cadastro1: TMenuItem;
    Agenda1: TMenuItem;
    Relatrio1: TMenuItem;
    Sobre1: TMenuItem;
    Sair1: TMenuItem;
    ToolBar1: TToolBar;
    btnCadPaciente: TToolButton;
    btnAgenda: TToolButton;
    ImageList1: TImageList;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    dsDesktop: TDataSource;
    Pacientes1: TMenuItem;
    Funcionrios1: TMenuItem;
    PlanosdeSade1: TMenuItem;
    btnSair: TToolButton;
    actDesktop: TActionList;
    actPaciente: TAction;
    actFuncionario: TAction;
    actPlano: TAction;
    actAgendamento: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Sair1Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actPacienteExecute(Sender: TObject);
    procedure actFuncionarioExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDesktop: TfrmDesktop;

implementation

uses untDMCentral, untCadPesFuncionario, untCadPesPaciente;

{$R *.dfm}

procedure TfrmDesktop.FormCreate(Sender: TObject);
begin
  {with dmCentral.qAgenda do
    begin
      Close;
      SQL.Clear;
      sql.Add('SELECT * FROM agenda');
    end;

  dsDesktop.DataSet.Open;}

end;

procedure TfrmDesktop.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TfrmDesktop.Sair1Click(Sender: TObject);
begin
  if Application.MessageBox('DESEJA FINALIZAR O SISTEMA?','CONFIRME',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = IDYES then
   Application.Terminate;

  end;

procedure TfrmDesktop.btnSairClick(Sender: TObject);
begin
   if Application.MessageBox('DESEJA FINALIZAR O SISTEMA?','CONFIRME',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = IDYES then
   Application.Terminate;

  
end;

procedure TfrmDesktop.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Application.MessageBox('DESEJA FINALIZAR O SISTEMA?','CONFIRME',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = IDYES then
   Application.Terminate;

end;

procedure TfrmDesktop.actPacienteExecute(Sender: TObject);
begin
  TRY
    Application.CreateForm(TfrmCadPesPaciente, frmCadPesPaciente);
    frmCadPesPaciente.ShowModal;
  FINALLY
    FreeAndNil(frmCadPesPaciente);
  END;
end;

procedure TfrmDesktop.actFuncionarioExecute(Sender: TObject);
begin

  TRY
    Application.CreateForm(TfrmCadPesFuncionario, frmCadPesFuncionario);
    frmCadPesFuncionario.ShowModal;
  FINALLY
    FreeAndNil(frmCadPesFuncionario);
  END;

end;

end.
