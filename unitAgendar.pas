unit unitAgendar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, DB, ADODB, Mask, DBCtrls,
  Buttons, ExtCtrls;

type
  TfrmAgendar = class(TForm)
    dsBuscaAg: TDataSource;
    QBuscaAgenda: TADOQuery;
    lsAgenda: TDBGrid;
    GroupBox1: TGroupBox;
    btnMedico: TBitBtn;
    dsfuncionario: TDataSource;
    qFuncionario: TADOQuery;
    qPaciente: TADOQuery;
    dsPaciente: TDataSource;
    GroupBox2: TGroupBox;
    btnPaciente: TSpeedButton;
    edtCrm: TDBEdit;
    edtProntuario: TDBEdit;
    edtMedico: TEdit;
    gLsMedico: TDBGrid;
    gLsPaciente: TDBGrid;
    edtPaciente: TEdit;
    edtIdAgenda: TDBEdit;
    GroupBox3: TGroupBox;
    QBuscaAgendaHora: TStringField;
    QBuscaAgendaid: TAutoIncField;
    QBuscaAgendaNome: TStringField;
    QBuscaAgendaStatus: TStringField;
    edtPlano: TEdit;
    edtIdPlano: TDBEdit;
    qPlano: TADOQuery;
    dsPlano: TDataSource;
    glsPlano: TDBGrid;
    qPlanoid: TAutoIncField;
    qPlanoplano: TStringField;
    qAgendarPac: TADOQuery;
    dsAgendarPac: TDataSource;
    qCancelarAg: TADOQuery;
    btnBuscaPlano: TSpeedButton;
    btnBuscarAgenda: TButton;
    dtCalendario: TDateTimePicker;
    btnAgendar: TBitBtn;
    btnCancelar: TBitBtn;
    btnFechar: TBitBtn;
    qPacienteid: TAutoIncField;
    qPacientenome: TStringField;
    qPacientecpf: TStringField;
    procedure btnBuscarAgendaClick(Sender: TObject);
    procedure btnMedicoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gLsMedicoCellClick(Column: TColumn);
    procedure btnPacienteClick(Sender: TObject);
    procedure gLsPacienteCellClick(Column: TColumn);
    procedure BitBtn1Click(Sender: TObject);
    procedure glsPlanoCellClick(Column: TColumn);
    procedure btnAgendarClick(Sender: TObject);
    procedure verAgenda (crm : integer);
    procedure btnBuscaPlanoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure lsAgendaCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAgendar: TfrmAgendar;

implementation

uses untDMCentral, DateUtils;

{$R *.dfm}

procedure TfrmAgendar.btnBuscarAgendaClick(Sender: TObject);
var
  data : String;
  crm : integer;
begin
  data:= DateToStr(dtCalendario.Date);
  crm := StrToInt(edtCrm.Text);
  {with qBuscaAgenda do
    begin
      close;
        Parameters.ParamByName('pCrm').Value := crm;
        Parameters.ParamByName('pDataInicio').Value := (data + ' 00:00');
        Parameters.ParamByName('pDataFim').Value:= (data + ' 23:59');
      open;
  end;}
  verAgenda(crm);

end;

procedure TfrmAgendar.btnMedicoClick(Sender: TObject);
begin
     with qFuncionario do
      begin
        Close;
        SQL.Clear;
        SQL.Add('exec buscaFunc @nome = :pNome');
        Parameters.ParamByName('pNome').Value := edtMedico.Text + '%';
        Open;
      end;
     gLsMedico.Visible := true;
end;

procedure TfrmAgendar.FormCreate(Sender: TObject);
begin
  qFuncionario.Open;
  qPaciente.Open;
end;

procedure TfrmAgendar.gLsMedicoCellClick(Column: TColumn);
begin
    edtMedico.Text := gLsMedico.SelectedField.AsString;
    gLsMedico.Visible := false;
    btnBuscarAgenda.Enabled := true;
end;

procedure TfrmAgendar.btnPacienteClick(Sender: TObject);
begin
   with qPaciente do
      begin
        Close;
          Parameters.ParamByName('pNomePaciente').Value := edtPaciente.Text + '%';
        Open;

  gLsPaciente.Visible := true;

end;

end;


procedure TfrmAgendar.gLsPacienteCellClick(Column: TColumn);
begin
  edtPaciente.Text := gLsPaciente.SelectedField.AsString;
  gLsPaciente.Visible := false;
end;

procedure TfrmAgendar.BitBtn1Click(Sender: TObject);
begin
  With qPlano do
    begin
      close;
      SQL.Clear;
      SQL.Add('select id, plano from planos');
      SQL.Add('where plano LIKE :pPlano');
      Parameters.ParamByName('pPlano').Value := edtPlano.Text + '%';
      open;
      glsPlano.Visible := true

    end;
end;

procedure TfrmAgendar.glsPlanoCellClick(Column: TColumn);
begin
  edtPlano.Text := glsPlano.SelectedField.AsString;
  glsPlano.Visible := false;
end;

procedure TfrmAgendar.btnAgendarClick(Sender: TObject);
var
  res : boolean;
begin
  With qAgendarPac do
    begin
      Close;
      SQL.Clear;
      SQL.Add('exec agendarPac @paciente_id = :pPaciente_id,');
      SQL.Add('@plano_id = :pPlano_id, @agenda_id = :pAgenda_id');
      Parameters.ParamByName('pPaciente_id').Value :=  StrToInt(edtProntuario.Text);
      Parameters.ParamByName('pPlano_id').Value := StrToInt(edtIdPlano.Text);
      Parameters.ParamByName('pAgenda_id').Value := StrToInt(edtIdAgenda.Text);
      execsql;

  end;
    verAgenda(StrToInt(edtCrm.text));
 
end;



procedure TfrmAgendar.verAgenda(crm: integer);
var
  data : String;
begin
  data:= DateToStr(dtCalendario.Date);
  //crm := StrToInt(edtCrm.Text);
  with qBuscaAgenda do
    begin
      close;
        sql.Clear;
        sql.Add('exec buscaAgenda @conselho = :pCrm');
        sql.Add('@datainicio = :pdatainicio, @datafim = :Pdatafim');
        Parameters.ParamByName('pCrm').Value := crm;
        Parameters.ParamByName('pDataInicio').Value := (data + ' 00:00');
        Parameters.ParamByName('pDataFim').Value:= (data + ' 23:59');
      open;
  end;
end;

procedure TfrmAgendar.btnBuscaPlanoClick(Sender: TObject);
begin
  With qPlano do
    begin
      close;
      SQL.Clear;
      SQL.Add('select id, plano from planos');
      SQL.Add('where plano LIKE :pPlano');
      Parameters.ParamByName('pPlano').Value := edtPlano.Text + '%';
      open;
      glsPlano.Visible := true

    end;
end;


procedure TfrmAgendar.btnCancelarClick(Sender: TObject);
begin
   if Application.MessageBox('Tem certeza que deseja cancelar?', 
   'Confirmação', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
  With qCancelarAg do
    begin
      Close;
      SQL.Clear;
      SQL.Add('exec cancelaAgenda @agenda_id = :pAgenda_id');
      Parameters.ParamByName('pAgenda_id').Value := StrToInt(edtIdAgenda.Text);
      execsql;

    end;
  verAgenda(StrToInt(edtCrm.text));
  end;
end;

procedure TfrmAgendar.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmAgendar.lsAgendaCellClick(Column: TColumn);
begin
  btnAgendar.Enabled := true;
  btnCancelar.Enabled := true;
end;

end.
