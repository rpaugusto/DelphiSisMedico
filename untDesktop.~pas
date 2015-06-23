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
    edtAgendaId: TDBEdit;
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
    qDesktopHora: TStringField;
    qDesktopid: TAutoIncField;
    qDesktopNome: TStringField;
    qDesktopStatus: TStringField;
    BitBtn1: TBitBtn;
    actAtualizaAgenda: TAction;
    gdTeste: TDBGrid;
    BitBtn2: TBitBtn;
    actAtender: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Sair1Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actPacienteExecute(Sender: TObject);
    procedure actFuncionarioExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actMontAgendaExecute(Sender: TObject);
    procedure actRelFuncionarioExecute(Sender: TObject);
    procedure actRelPacienteExecute(Sender: TObject);
    procedure actAgendamentoExecute(Sender: TObject);
    procedure actAtualizaAgendaExecute(Sender: TObject);
    procedure actPlanoExecute(Sender: TObject);
    procedure grdAgendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gdTesteDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure gdTesteCellClick(Column: TColumn);
    procedure gdTesteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
  private
    function isMedico(crm: integer): Boolean;
    { Private declarations }
  public
    { Public declarations }
    procedure verAgenda(crm : integer);
  end;

var
  frmDesktop: TfrmDesktop;
  vcrm : integer;

implementation

uses untDMCentral, untCadPesFuncionario, untCadPesPaciente, UnitConsulta,
  Math, untMontaAgenda, untRelFuncionario, untRelPaciente, unitAgendar,
  unitCadPlano;

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
  //qDesktop.Open;
  {IF (Trim(sbDesktop.Panels[1].Text) <> '' ) THEN
    BEGIN
      pnAgenda.Visible := True;
      qDesktop.Open;
    END;}

end;

function TfrmDesktop.isMedico(crm: integer): Boolean;
begin

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

procedure TfrmDesktop.verAgenda(crm: integer);
begin
  vcrm := crm;
  WITH qDesktop DO
    BEGIN
      close;
      SQL.Clear;
      SQL.Add('EXEC BUSCAAGENDA @datainicio = :pDataIni, @datafim = :pDataFim, @conselho = :pCrm');
      Parameters.ParamByName('pCrm').Value := crm;
      Parameters.ParamByName('pDataIni').Value := (DateToStr(NOW) + ' 00:00');
      Parameters.ParamByName('pDataFim').Value := (DateToStr(NOW) + ' 23:59');
      Open;
    END;

  pnAgenda.Visible := true;

end;

procedure TfrmDesktop.actAtualizaAgendaExecute(Sender: TObject);
begin
  verAgenda(vcrm);
end;

procedure TfrmDesktop.actPlanoExecute(Sender: TObject);
begin
  TRY
    Application.CreateForm(TfrmCadPlano,frmCadPlano);
    frmCadPlano.ShowModal;
  FINALLY
    FreeAndNil(frmCadPlano);
  END;
end;

procedure TfrmDesktop.grdAgendaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {IMPEDINDO CTRL+DEL / SHIT+CTRL+DEL / DEL}
  if (ssCtrl in Shift) and (Key = VK_DELETE) then Key := 0;
end;

procedure TfrmDesktop.gdTesteDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  {COLORINDO A LINHA COM O VALOR DO STATUS}
   if AnsiUpperCase(qDesktop.FieldByName('Status').Value) = 'LIVRE' then
      gdTeste.Canvas.Brush.Color := clMoneyGreen;
   if AnsiUpperCase(qDesktop.FieldByName('Status').Value) = 'ATENDIDO' then
      gdTeste.Canvas.Brush.Color := clRed;
   if AnsiUpperCase(qDesktop.FieldByName('Status').Value) = 'AGENDADO' then
      gdTeste.Canvas.Brush.Color := clOlive;

   gdTeste.Canvas.FillRect(Rect);
   gdTeste.DefaultDrawDataCell(Rect,Field,State);

end;

procedure TfrmDesktop.gdTesteCellClick(Column: TColumn);
begin
  {ATIVANDO O BOTÃO CONFORME VALOR DO STATUS}
  if AnsiUpperCase(qDesktop.FieldByName('Status').Value) = 'AGENDADO' then
      BitBtn2.Enabled := true
  else
      BitBtn2.Enabled := false;

end;

procedure TfrmDesktop.gdTesteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {IMPEDINDO CTRL+DEL / SHIT+CTRL+DEL / DEL}
  if (ssCtrl in Shift) and (Key = VK_DELETE) then Key := 0;
end;

procedure TfrmDesktop.BitBtn2Click(Sender: TObject);
begin
TRY
    try
      Application.CreateForm(TfrmConsulta, frmConsulta);
      frmConsulta.edtConsulta.Text := edtAgendaId.text;
      WITH qIdentifica DO
        BEGIN
        close;
        SQL.Clear;
        SQL.Add('INSERT INTO consultas (agenda_id) VALUES (:pConsulta)');
        Parameters.ParamByName('pConsulta').Value := StrToInt(edtAgendaId.Text);
        ExecSQL;

        END;
      frmConsulta.ShowModal;
    except
      on e: Exception do
      begin
        MessageDlg('Consulta já Realizada !',mtInformation, [mbOK],0);
      end;
    end;
  FINALLY
    FreeAndNil(frmConsulta);
  END;
end;

end.
