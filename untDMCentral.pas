unit untDMCentral;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmCentral = class(TDataModule)
    conecta: TADOConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCentral: TdmCentral;

implementation

{$R *.dfm}

procedure TdmCentral.DataModuleCreate(Sender: TObject);
begin
  conecta.Connected := true;
end;

end.
