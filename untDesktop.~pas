unit untDesktop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, ImgList, ComCtrls, ToolWin, Menus, DB,
  ADODB, ActnList, StdCtrls, Mask, DBCtrls, Buttons;

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
    pnAgenda: TPanel;
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
    qDesktop: TADOQuery;
    qDesktophora: TStringField;
    qDesktopnome: TStringField;
    qDesktopestado: TStringField;
    qDesktopid: TAutoIncField;
    edtAgendaId: TDBEdit;
    btnAtender: TBitBtn;
    qIdentifica: TADOQuery;
    actMontAgenda: TAction;
    MontarAgenda1: TMenuItem;
    ToolButton1: TToolButton;
    Infomrao1: TMenuItem;
    Agendar1: TMenuItem;
    actRelFuncionario: TAction;
    actRelPaciente: TAction;
    ListadePacientes1: TMenuItem;
    ListadeFuncionarios1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Sair1Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actPacienteExecute(Sender: TObject);
    procedure actFuncionarioExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAtenderClick(Sender: TObject);
    function isMedico (id : integer) : Boolean;
    procedure FormActivate(Sender: TObject);
    procedure actMontAgendaExecute(Sender: TObject);
    procedure actRelFuncionarioExecute(Sender: TObject);
    procedure actRelPacienteExecute(Sender: TObject);
    procedure actAgendamentoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDesktop: TfrmDesktop;
  crm : integer;

implementation

uses untDMCentral, untCadPesFuncionario, untCadPesPaciente, UnitConsulta,
  Math, untMontaAgenda, untRelFuncionario, untRelPaciente, unitAgendar;

{$R *.dfm}

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

procedure TfrmDesktop.FormCreate(Sender: TObject);
begin
  sbDesktop.Panels[0].Text := DateToStr(NOW);
  qDesktop.Open;
  {IF (Trim(sbDesktop.Panels[1].Text) <> '' ) THEN
    BEGIN
      pnAgenda.Visible := True;
      qDesktop.Open;
    END;}

end;

procedure TfrmDesktop.btnAtenderClick(Sender: TObject);
begin
  TRY
    Application.CreateForm(TfrmConsulta, frmConsulta);
    frmConsulta.edtConsulta.Text := edtAgendaId.text;
    frmConsulta.ShowModal;
  FINALLY
    FreeAndNil(frmConsulta);
  END;


end;

function TfrmDesktop.isMedico(id: integer): Boolean;
begin
  WITH qIdentifica DO
    BEGIN
      Close;
      SQL.Clear;
      SQL.Add('SELECT COUNT(*), conselho FROM funcionarios');
      SQL.Add('WHERE id = :pId and funcao = :pFuncao');
      SQL.Add('GROUP BY conselho');
      Parameters.ParamByName('pId').Value := id;
      Parameters.ParamByName('pFuncao').Value := ('MED%');
      Open;
      crm := (Fields[1].AsInteger);
      Result :=  (Fields[0].AsInteger > 0);
    END;
end;

procedure TfrmDesktop.FormActivate(Sender: TObject);
begin
  IF (isMedico(StrToInt(sbDesktop.Panels[1].Text))) THEN
    WITH qDesktop DO
      BEGIN
        close;
        Parameters.ParamByName('pCrm').Value := crm;
        Open;
      END;
    pnAgenda.Visible := True;

end;

procedure TfrmDesktop.actMontAgendaExecute(Sender: TObject);
begin
  TRY
    Application.CreateForm(TfrmMontaAgenda, frmMontaAgenda);
    frmMontaAgenda.ShowModal;
  FINALLY
    FreeAndNil(frmMontaAgenda);
  END;
end;

procedure TfrmDesktop.actRelFuncionarioExecute(Sender: TObject);
begin
  TRY
    Application.CreateForm(TfrmRelFuncionario, frmRelFuncionario);
    frmRelFuncionario.ShowModal;
  FINALLY
    FreeAndNil(frmRelFuncionario);
  END;
end;

procedure TfrmDesktop.actRelPacienteExecute(Sender: TObject);
begin
  TRY
    Application.CreateForm(TfrmRelPaciente, frmRelPaciente);
    frmRelPaciente.ShowModal;
  FINALLY
    FreeAndNil(frmRelPaciente);
  END;
end;

procedure TfrmDesktop.actAgendamentoExecute(Sender: TObject);
begin
  TRY
    Application.CreateForm(TfrmAgendar, frmAgendar);
    frmAgendar.ShowModal;
  FINALLY
    FreeAndNil(frmAgendar);
  END;
end;

end.
