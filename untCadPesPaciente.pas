unit untCadPesPaciente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untCadPesqPadrao, ExtCtrls, DBCtrls, Mask, StdCtrls, DB, ADODB,
  ActnList, ImgList, ComCtrls, Grids, DBGrids, Buttons, QRCtrls, QuickRpt;

type
  TfrmCadPesPaciente = class(TfrmCadPesPadrao)
    qPessoas: TADOQuery;
    qPessoasid: TAutoIncField;
    qPessoasnome: TStringField;
    qPessoasendereco: TStringField;
    qPessoasbairro: TStringField;
    qPessoascidade: TStringField;
    qPessoasestado: TStringField;
    qPessoasrg: TIntegerField;
    qPessoasemail: TStringField;
    qPessoascadastrado: TDateTimeField;
    qPessoasatualizado: TDateTimeField;
    qPessoassexo: TStringField;
    gbPessoal: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtCodigo: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    gbContato: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    qHistorico: TADOQuery;
    dsHistorico: TDataSource;
    gbHistorico: TGroupBox;
    DBGrid1: TDBGrid;
    qHistoricodata: TStringField;
    qHistoricohora: TStringField;
    qHistoriconome: TStringField;
    qPessoascpf: TStringField;
    edtCpf: TMaskEdit;
    qRep: TADOQuery;
    qRepid: TIntegerField;
    qRepnome: TStringField;
    qRependereco: TStringField;
    qRepbairro: TStringField;
    qRepcidade: TStringField;
    qRepestado: TStringField;
    qRepcep: TStringField;
    qReptelefone: TStringField;
    qRepcelular: TStringField;
    qRepcpf: TStringField;
    qReprg: TIntegerField;
    qRepemail: TStringField;
    qRepcadastrado: TDateTimeField;
    qRepatualizado: TDateTimeField;
    qRepsexo: TStringField;
    qRepdata: TStringField;
    qRephora: TStringField;
    qRepmedico: TStringField;
    qRepconsulta: TStringField;
    qrFicha: TQuickRep;
    PageHeaderBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRImage1: TQRImage;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    qPessoascep: TStringField;
    qPessoastelefone: TStringField;
    qPessoascelular: TStringField;
    procedure edtCodigoChange(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cbCondicaoChange(Sender: TObject);
    procedure actimprimirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadPesPaciente: TfrmCadPesPaciente;

implementation

uses untDMCentral;

{$R *.dfm}

procedure TfrmCadPesPaciente.edtCodigoChange(Sender: TObject);
begin
  inherited;
  IF (Trim(edtCodigo.Text) <> '') THEN
    BEGIN
      WITH qHistorico DO
        BEGIN
          Close;
          Parameters.ParamByName('pPaciente').Value := StrToInt(Trim(edtCodigo.Text));
          Open;
        END;
    END;
end;

procedure TfrmCadPesPaciente.actNovoExecute(Sender: TObject);
begin
  qPessoas.Open;
  qHistorico.Close;
  inherited;

end;

procedure TfrmCadPesPaciente.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  qPessoas.Close;
  qHistorico.Close;
end;

procedure TfrmCadPesPaciente.SpeedButton1Click(Sender: TObject);
begin
  inherited;

  IF (cbCondicao.ItemIndex = 1) THEN
    BEGIN
      WITH qPessoas DO
        BEGIN
          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM pessoas');
          sql.Add('WHERE nome LIKE :pPesquisa');
          Parameters.ParamByName('pPesquisa').Value := (edtPesquisa.Text + '%');
          Open;
        END;
    END
  ELSE IF (cbCondicao.ItemIndex = 2) THEN
    BEGIN
      edtPesquisa.Text := edtCpf.Text;
      WITH qPessoas DO
        BEGIN
          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM pessoas');
          sql.Add('WHERE cpf = :pPesquisa');
          Parameters.ParamByName('pPesquisa').Value := edtPesquisa.Text;
          Open;
        END;
    END
  ELSE
    BEGIN
      WITH qPessoas DO
        BEGIN
          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM pessoas');
          Open;
        END;
    END;

   edtPesquisa.Clear;
   edtCpf.Clear;
   edtCpf.Visible := false;
    
end;

procedure TfrmCadPesPaciente.cbCondicaoChange(Sender: TObject);
begin
  inherited;
  IF (cbCondicao.ItemIndex = 2) THEN
    BEGIN
      edtCpf.Visible := true;
    END
end;

procedure TfrmCadPesPaciente.actimprimirExecute(Sender: TObject);
begin
  inherited;
  IF edtCodigo.Text = '' THEN
    MessageDlg('Nenhum paciente selecionado',mtInformation,[mbOK],0)
  ELSE
    BEGIN
      WITH qRep DO
        BEGIN
          Close;
          Parameters.ParamByName('pId').Value := StrToInt(Trim(edtCodigo.Text));
          Open;
        END;
        qrFicha.Preview;
    END;

end;

end.
