unit untReceita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, Buttons, Grids, DBGrids, ExtCtrls,
  QRCtrls, QuickRpt, ADODB;

type
  TfrmReceita = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    btnGravar: TBitBtn;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    edtConsulta: TEdit;
    edtMedicamento: TEdit;
    edtQtd: TEdit;
    edtRecomenda: TEdit;
    repReceitas: TQuickRep;
    PageHeaderBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText3: TQRDBText;
    QRImage1: TQRImage;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel7: TQRLabel;
    dsReceita: TDataSource;
    qReceitas: TADOQuery;
    qReceitasid: TAutoIncField;
    qReceitasmedicamento: TStringField;
    qReceitasrecomendacao: TStringField;
    qReceitasqtde: TIntegerField;
    qReceitasconsulta_id: TIntegerField;
    qLsReceita: TADOQuery;
    qLsReceitaid: TIntegerField;
    qLsReceitamedicamento: TStringField;
    qLsReceitarecomendacao: TStringField;
    qLsReceitaqtde: TIntegerField;
    qLsReceitaconsulta_id: TIntegerField;
    qLsReceitapaciente: TStringField;
    qLsReceitamedico: TStringField;
    qLsReceitacrm: TIntegerField;
    qLsReceitaconsulta: TIntegerField;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReceita: TfrmReceita;
  consulta : integer;
  acao :  integer;

implementation

uses untDMCentral, UnitConsulta;

{$R *.dfm}

procedure TfrmReceita.FormCreate(Sender: TObject);
begin
  //consulta := StrToInt(frmConsulta.lbConsulta);
end;

procedure TfrmReceita.btnGravarClick(Sender: TObject);
begin
  with qReceitas do
    begin
    close;
    sql.Clear;
    sql.Add('insert into receitas (medicamento, recomendacao, qtde, Consulta_id)');
    sql.Add('values (:pMedicamento, :pRecomendacao, :pQtde, :pConsulta_id)');
    Parameters.ParamByName('pMedicamento').Value := edtMedicamento.Text;
    Parameters.ParamByName('pRecomendacao').Value := edtRecomenda.Text;
    Parameters.ParamByName('pQtde').Value := StrToInt(edtQtd.Text);
    Parameters.ParamByName('pConsulta_id').Value := StrToInt(edtConsulta.Text);

    ExecSQL;
    edtMedicamento.Clear;
    edtRecomenda.Clear;
    edtQtd.Clear;
  end;
  with qReceitas do
    begin
    Close;
    sql.Clear;
    sql.Add('(select * from receitas)');

    Open;
  end;

end;

procedure TfrmReceita.btnImprimirClick(Sender: TObject);
begin
  qLsReceita.Close;
  qLsReceita.SQL.Clear;
  qLsReceita.SQL.Add('select * from lsreceita where consulta_id = :consulta_id');
  qLsReceita.Parameters.ParamByName('consulta_id').Value := qReceitas.FieldByName('consulta_id').AsInteger;
  qLsReceita.Open;

  //dmCentral.qPaciente.Open;
  qreceitas.Open;
  repReceitas.Preview;
end;

procedure TfrmReceita.btnFecharClick(Sender: TObject);
begin
  close;
end;

end.
