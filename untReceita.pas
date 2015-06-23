unit untReceita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, Buttons, Grids, DBGrids, ExtCtrls,
  QRCtrls, QuickRpt, ADODB;

type
  TfrmReceita = class(TForm)
    GroupBox1: TGroupBox;
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
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    QRImage1: TQRImage;
    QRSysData3: TQRSysData;
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
    QRLabel11: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape1: TQRShape;
    gdReceita: TDBGrid;
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
  {inserindo dados na tabela receita}
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
    end;

  {limpando os campos do formulario}
  edtMedicamento.Clear;
  edtRecomenda.Clear;
  edtQtd.Clear;

  {listando a receita atual}
  with qReceitas do
    begin
      Close;
      sql.Clear;
      sql.Add('select * from receitas where consulta_id = :pConsulta');
      Parameters.ParamByName('pConsulta').Value := StrToInt(edtConsulta.Text);
      Open;
    end;
  dsReceita.DataSet := qReceitas;
  dsReceita.DataSet.Open;
  gdReceita.DataSource := dsReceita;
end;

procedure TfrmReceita.btnImprimirClick(Sender: TObject);
begin
  qLsReceita.Close;
  qLsReceita.SQL.Clear;
  qLsReceita.SQL.Add('select * from lsreceita where consulta_id = :consulta_id');
  qLsReceita.Parameters.ParamByName('consulta_id').Value := StrToInt(edtConsulta.Text);
  qLsReceita.Open;

  //dmCentral.qPaciente.Open;
  qreceitas.Open;
  repReceitas.Preview;
end;

procedure TfrmReceita.btnFecharClick(Sender: TObject);
begin
  close;
end;

{procedure TfrmReceita.verReceita(consulta: Integer);
begin
  WITH qReceitas DO
    BEGIN
      Close;
      SQL.Add('SELECT * FROM receitass');
      SQL.Add('WHERE consulta_id = :pConsulta');
      Parameters.ParamByName('pConsulta').Value := consulta;
      Open;
    END;

end;}

end.
