unit untProntuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Mask, DBCtrls, StdCtrls, Grids, DBGrids, Buttons, ADODB,
  QuickRpt, QRCtrls, ExtCtrls;

type
  TfrmFchConsulta = class(TForm)
    Panel1: TPanel;
    qrProntuario: TQuickRep;
    PageHeaderBand1: TQRBand;
    detCoonsulta: TQRBand;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    qConsulta: TADOQuery;
    qReceita: TADOQuery;
    qExame: TADOQuery;
    qPaciente: TADOQuery;
    GroupBox1: TGroupBox;
    edtNome: TEdit;
    SpeedButton1: TSpeedButton;
    dbgPaciente: TDBGrid;
    GroupBox2: TGroupBox;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    btnEmitir: TSpeedButton;
    dsPaciente: TDataSource;
    Label1: TLabel;
    QRDBText3: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel6: TQRLabel;
    procedure dbgPacienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dbgPacienteDblClick(Sender: TObject);
    procedure btnEmitirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure geraProntuario(agenda_id : integer);
  end;

var
  frmFchConsulta: TfrmFchConsulta;
  consulta : integer;

implementation

uses untDMCentral;

{$R *.dfm}

procedure TfrmFchConsulta.dbgPacienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  {IMPEDINDO CTRL+DEL / SHIT+CTRL+DEL / DEL}
  if (ssCtrl in Shift) and (Key = VK_DELETE) then Key := 0;
end;

procedure TfrmFchConsulta.SpeedButton1Click(Sender: TObject);
begin
  {localizanod o paciente}
  WITH qPaciente DO
    BEGIN
      Close;
      Parameters.ParamByName('pNOme').Value := (edtNome.Text + '%');
      Open;
      edtNome.Text := Fields[0].AsString;
      consulta :=  Fields[2].AsInteger;
    END;

  dbgPaciente.Visible := true;
end;

procedure TfrmFchConsulta.dbgPacienteDblClick(Sender: TObject);
begin
    dbgPaciente.Visible := false;
    btnEmitir.Enabled := true;
end;

procedure TfrmFchConsulta.btnEmitirClick(Sender: TObject);
begin
  geraProntuario(consulta);
end;

procedure TfrmFchConsulta.geraProntuario(agenda_id : integer);
begin
  {carega o paramentro para a consulta}
  WITH qConsulta DO
    BEGIN
      Close;
      Parameters.ParamByName('pId').Value := agenda_id;
      Open;
    END;

  WITH qReceita DO
    BEGIN
      Close;
      Parameters.ParamByName('pId').Value := agenda_id;
      Open;
    END;
    
  WITH qExame DO
    BEGIN
      Close;
      Parameters.ParamByName('pId').Value := agenda_id;
      Open;
    END;

  {abre o relatorio}
  qrProntuario.Preview;

end;

end.
