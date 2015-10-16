program TCC;

uses
  Forms,
  untCadPesqPadrao in 'untCadPesqPadrao.pas' {frmCadPesPadrao},
  untDesktop in 'untDesktop.pas' {frmDesktop},
  untCadPesFuncionario in 'untCadPesFuncionario.pas' {frmCadPesFuncionario},
  untCadPesPaciente in 'untCadPesPaciente.pas' {frmCadPesPaciente},
  untDMCentral in 'untDMCentral.pas' {dmCentral: TDataModule},
  UNT in 'UNT.pas' {frmLogin},
  UnitConsulta in 'UnitConsulta.pas' {frmConsulta},
  untMontaAgenda in 'untMontaAgenda.pas' {frmMontaAgenda},
  unitAgendar in 'unitAgendar.pas' {frmAgendar},
  untReceita in 'untReceita.pas' {frmReceita},
  untRelFuncionario in 'untRelFuncionario.pas' {frmRelFuncionario},
  untRelPaciente in 'untRelPaciente.pas' {frmRelPaciente},
  untExame in 'untExame.pas' {frmExame},
  unitCadPlano in 'unitCadPlano.pas' {frmCadPlano};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmCentral, dmCentral);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.
