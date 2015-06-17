unit untExame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Buttons, Mask, DBCtrls, QRCtrls,
  QuickRpt, ExtCtrls, ADODB, ImgList;

type
  TfrmExame = class(TForm)
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBGrid1: TDBGrid;
    dsExame: TDataSource;
    qExame: TADOQuery;
    edtExame: TEdit;
    edtConsulta: TEdit;
    Panel2: TPanel;
    repExame: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRImage1: TQRImage;
    QRSysData3: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExame: TfrmExame;

implementation

uses untDMCentral, UnitConsulta;

{$R *.dfm}

procedure TfrmExame.BitBtn1Click(Sender: TObject);
begin
  with qExame do
    begin
    close;
    sql.Clear;
    sql.Add('insert into exames (exame, consulta_id)');
    sql.Add('values (:pExame, :pConsulta_id)');
    Parameters.ParamByName('pExame').Value:= edtExame.Text;
    Parameters.ParamByName('pConsulta_id').Value := StrToInt(edtConsulta.Text);

    ExecSQL;
  end;
  with qExame do
    begin
    Close;
    sql.Clear;
    sql.Add('(select * from exames)');

    Open;
  end;

end;

procedure TfrmExame.BitBtn2Click(Sender: TObject);
begin;
  //dmCentral.qPaciente.Open;
  qExame.Open;
  repExame.Preview;
end;

procedure TfrmExame.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

end.
