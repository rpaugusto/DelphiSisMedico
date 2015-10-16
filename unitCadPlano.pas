unit unitCadPlano;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untCadPesqPadrao, DB, ActnList, ImgList, ComCtrls, ExtCtrls,
  Grids, DBGrids, StdCtrls, Buttons, Mask, DBCtrls, ADODB, QRCtrls,
  QuickRpt;

type
  TfrmCadPlano = class(TfrmCadPesPadrao)
    qPlano: TADOQuery;
    qPlanoid: TAutoIncField;
    qPlanoplano: TStringField;
    qPlanovalor: TBCDField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actimprimirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadPlano: TfrmCadPlano;

implementation

uses untDMCentral;

{$R *.dfm}

procedure TfrmCadPlano.SpeedButton1Click(Sender: TObject);
begin
  qPlano.Close;
  qPlano.open;
  inherited;

end;

procedure TfrmCadPlano.actNovoExecute(Sender: TObject);
begin
  qPlano.open;
  inherited;
                   
end;

procedure TfrmCadPlano.actimprimirExecute(Sender: TObject);
begin
  inherited;
  qPlano.Close;
  qPlano.Open;
  QuickRep1.Preview;
end;

end.
