unit untRelFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, Mask, DBCtrls, QRCtrls, QuickRpt,
  Buttons;

type
  TfrmRelFuncionario = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnFechar: TBitBtn;
    btnProsseguir: TBitBtn;
    qRelFuncionario: TADOQuery;
    relatFuncionario: TQuickRep;
    PageHeaderBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText8: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel10: TQRLabel;
    qRelFuncionarioid: TAutoIncField;
    qRelFuncionarionome: TStringField;
    qRelFuncionariofuncao: TStringField;
    qRelFuncionarioconselho: TIntegerField;
    qRelFuncionariocelular: TStringField;
    qRelFuncionarioestado: TStringField;
    qRelFuncionariocadastrado: TDateTimeField;
    qRelFuncionariotelefone: TStringField;
    procedure btnFecharClick(Sender: TObject);
    procedure btnProsseguirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelFuncionario: TfrmRelFuncionario;

implementation

uses untDMCentral;

{$R *.dfm}

procedure TfrmRelFuncionario.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRelFuncionario.btnProsseguirClick(Sender: TObject);
begin
  qRelFuncionario.Open;
  relatFuncionario.Preview;

end;

end.
