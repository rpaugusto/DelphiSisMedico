unit untDMCentral;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmCentral = class(TDataModule)
    conecta: TADOConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCentral: TdmCentral;

implementation

{$R *.dfm}

end.
