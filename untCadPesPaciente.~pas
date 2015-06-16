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
    edtCpfCod: TDBEdit;
    DBEdit12: TDBEdit;
    qHistorico: TADOQuery;
    dsHistorico: TDataSource;
    gbHistorico: TGroupBox;
    DBGrid1: TDBGrid;
    qHistoricodata: TStringField;
    qHistoricohora: TStringField;
    qPessoascpf: TStringField;
    edtCpf: TMaskEdit;
    qrFicha: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRImage1: TQRImage;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    qPessoascep: TStringField;
    qPessoastelefone: TStringField;
    qPessoascelular: TStringField;
    detail: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText11: TQRDBText;
    qrSubFicha: TQRSubDetail;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel26: TQRLabel;
    QRSysData2: TQRSysData;
    qHistoricopaciente_id: TIntegerField;
    qHistoricomedico: TStringField;
    qHistoricoespecialidade: TStringField;
    qHistoricoconsulta: TStringField;
    qHistoricoreceita: TStringField;
    qHistoricoexame: TStringField;
    QRDBRichText1: TQRDBRichText;
    qCodBar: TQRImage;
    procedure edtCodigoChange(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cbCondicaoChange(Sender: TObject);
    procedure actimprimirExecute(Sender: TObject);
  private
    { Private declarations }
    procedure codBar(codigo : String; Canvas : TCanvas);
    function removString(Valor : String): String;
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
          Parameters.ParamByName('pId').Value := StrToInt(Trim(edtCodigo.Text));
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
var
  id : integer;
begin
  inherited;
  IF edtCodigo.Text = '' THEN
    MessageDlg('Nenhum paciente selecionado',mtInformation,[mbOK],0)
  ELSE
    BEGIN
      id := StrToInt(Trim(edtCodigo.Text));
      WITH qPessoas DO
        BEGIN
          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM pessoas WHERE id = :pId');
          Parameters.ParamByName('pId').Value := id;
          Open;
        END;
      WITH qHistorico DO
        BEGIN
          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM lsHisPaciente WHERE paciente_id = :pId');
          Parameters.ParamByName('pId').Value := id;
          Open;
        END;

      codBar(removString(Trim(edtCpfCod.Text)),qCodBar.Canvas);
      qrFicha.Preview;
    END;

end;

procedure TfrmCadPesPaciente.codBar(codigo: String; Canvas: TCanvas);
const
  digitos : array['0'..'9']
    of string[5]= ('00110', '10001', '01001', '11000', '00101', '10100', '01100',
                   '00011', '10010', '01010');
var
  s : string;
  i, j, x, t : Integer;

begin
  // início do codigo de barras
  s := '000000';

  for i := 1 to length(codigo) div 2 do
    for j := 1 to 5 do
      s := s + Copy(Digitos[codigo[i * 2 - 1]], j, 1) +
        Copy(Digitos[codigo[i * 2]], j, 1);

  // fim do codigo de barras
  s := s + '100';

  { Desenha o codigo de barras dentro do canvas }
  x := 0;
  Canvas.Brush.Color := clWhite;
  Canvas.Pen.Color := clWhite;
  Canvas.Rectangle(0,0, 2000, 79);
  Canvas.Brush.Color := clBlack;
  Canvas.Pen.Color := clBlack;
  // Escrever o código de barras no canvas
  for i := 1 to length(s) do
    begin
        // Definir a espessura da barra
        t := strToInt(s[i]) * 2 + 1;
        // Imprimir apenas barra sim barra não (preto/branco - intercalado);
        if i mod 2 = 1 then
          Canvas.Rectangle(x, 0, x + t, 79);
        // Passar para a próxima barra
        x := x + t;
        end;
end;


function TfrmCadPesPaciente.removString(Valor: String): String;
var
  new : string;
  cont : integer;
begin
  new := '';
  FOR cont := 1 TO length(Valor) DO
    BEGIN
      IF (valor[cont] <> '.') AND (valor[cont] <> '-')
         AND (valor[cont] <> ',') AND (valor[cont] <> '/') THEN
      new := new + valor[cont];
    END;
  removString := new;
end;

end.
