unit UnitConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ComCtrls, Buttons, ExtCtrls, xpman, DB, Mask,
  ADODB;

type
  TfrmConsulta = class(TForm)
    pnConsulta: TPanel;
    pnHistorico: TPanel;
    GroupBox1: TGroupBox;
    StatusBar1: TStatusBar;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    btnReceita: TSpeedButton;
    GroupBox4: TGroupBox;
    btnExame: TSpeedButton;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    DBListBox1: TDBListBox;
    btnPesquisa: TSpeedButton;
    GroupBox7: TGroupBox;
    mDiagOutro: TDBMemo;
    dsHistorico: TDataSource;
    GroupBox8: TGroupBox;
    btnFinaliza: TSpeedButton;
    qHistorico: TADOQuery;
    qConsulta: TADOQuery;
    qHistoricoid: TAutoIncField;
    qHistoricodata: TStringField;
    qHistoricodiagnostico: TStringField;
    edtConsulta: TEdit;
    edtNome: TEdit;
    edtProntuario: TEdit;
    mDiagnostico: TMemo;
    procedure btnFinalizaClick(Sender: TObject);
    procedure btnReceitaClick(Sender: TObject);
    procedure edtConsultaChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    procedure IdPaciente(consulta : integer);
  public
    { Public declarations }
  end;

var
  frmConsulta: TfrmConsulta;
  codigo : integer;
  nome : String;

implementation

uses untDMCentral;

{$R *.dfm}

procedure TfrmConsulta.btnFinalizaClick(Sender: TObject);
begin

  with qConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO consultas (diagnostico, agenda_id) ');
      SQL.Add('VALUES (:pDiagnostico, :pConsulta) ');
      Parameters.ParamByName('pDiagnostico').Value := mDiagnostico.Lines.Text;
      Parameters.ParamByName('pConsulta').Value := StrToInt(edtConsulta.Text);
      ExecSQL;
    end;

    Close;
    
end;

procedure TfrmConsulta.btnReceitaClick(Sender: TObject);

begin

  {frmRceita := TFrmReceita.Create(Self);
  frmRceita.consulta := 1;
  frmRceita.ShowModal;}


end;

procedure TfrmConsulta.edtConsultaChange(Sender: TObject);
begin
  IF (edtConsulta.Text <> '') THEN
    BEGIN
      WITH qConsulta DO
        BEGIN
          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM agenda');
          Parameters.ParamByName('pConsulta').Value := StrToInt(edtConsulta.Text);
          Open;
          edtProntuario.Text :=  IntToStr(Fields[4].AsInteger);
          edtNome.Text := Fields[3].AsString;
        END
    END
end;

procedure TfrmConsulta.IdPaciente(consulta: integer);
var
  prontuario : integer;
  paciente : String;
begin
  WITH qConsulta DO
    BEGIN
      Close;
      SQL.Add('SELECT p.id, p.nome FROM agenda a');
      SQL.Add('INNER JOIN pessoas p ON p.id = a.paciente_id');
      SQL.Add('WHERE a.id = :pConsulta');
      Parameters.ParamByName('pConsulta').Value := StrToInt(edtConsulta.Text);
      Open;
      prontuario :=  Fields[0].AsInteger;
      paciente := Fields[1].AsString;
    END;

    edtProntuario.Text := IntToStr(prontuario);
    edtNome.Text := paciente;
    
end;

procedure TfrmConsulta.FormActivate(Sender: TObject);
begin
  IdPaciente(StrToInt(Trim(edtConsulta.Text)));
end;

end.
