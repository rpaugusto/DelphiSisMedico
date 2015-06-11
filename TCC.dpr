program TCC;

uses
  Forms,
  UNT in 'UNT.pas' {frmLogin},
  untDMCentral in '..\TCC\PROGAMA\IMG\untDMCentral.pas' {dmCentral: TDataModule},
  untCadPesqPadrao in 'untCadPesqPadrao.pas' {frmCadPesPadrao},
  untDesktop in 'untDesktop.pas' {frmDesktop},
  untCadPesFuncionario in 'untCadPesFuncionario.pas' {frmCadPesFuncionario},
  untCadPesPaciente in 'untCadPesPaciente.pas' {frmCadPesPaciente};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmCentral, dmCentral);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.
