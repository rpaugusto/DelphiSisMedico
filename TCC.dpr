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
  untMontaAgenda in 'untMontaAgenda.pas' {frmMontaAgenda};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmCentral, dmCentral);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.
