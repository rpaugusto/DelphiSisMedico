unit untCadPesFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untCadPesqPadrao, DB, ADODB, ActnList, ImgList, ComCtrls,
  ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, DBCtrls, Mask, QRCtrls,
  QuickRpt;

type
  TfrmCadPesFuncionario = class(TfrmCadPesPadrao)
    qFuncionarios: TADOQuery;
    qFuncionariosfuncao: TStringField;
    qFuncionariosconselho: TIntegerField;
    qFuncionariosobservacao: TStringField;
    qFuncionarioslogin: TStringField;
    qFuncionariossenha: TStringField;
    qFuncionariosid: TAutoIncField;
    qFuncionariosnome: TStringField;
    qFuncionariosendereco: TStringField;
    qFuncionariosbairro: TStringField;
    qFuncionarioscidade: TStringField;
    qFuncionariosestado: TStringField;
    qFuncionarioscep: TIntegerField;
    qFuncionariostelefone: TIntegerField;
    qFuncionariosrg: TIntegerField;
    qFuncionariosemail: TStringField;
    qFuncionarioscadastrado: TDateTimeField;
    qFuncionariosatualizado: TDateTimeField;
    qFuncionariossexo: TStringField;
    qFuncionariosespecialidade: TStringField;
    gbPessoal: TGroupBox;
    Label1: TLabel;
    edtId: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    gbContato: TGroupBox;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    gbFuncional: TGroupBox;
    gbAcesso: TGroupBox;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    rgFuncao: TDBRadioGroup;
    gbMedico: TGroupBox;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    DBEdit17: TDBEdit;
    qFuncionarioscelular: TStringField;
    qFuncionarioscpf: TStringField;
    qpFuncionario: TQuickRep;
    PageHeaderBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRImage1: TQRImage;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    Label27: TLabel;
    DBMemo1: TDBMemo;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    procedure rgFuncaoChange(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actimprimirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadPesFuncionario: TfrmCadPesFuncionario;

implementation

uses untDMCentral;

{$R *.dfm}

procedure TfrmCadPesFuncionario.rgFuncaoChange(Sender: TObject);
begin
  inherited;

  IF rgFuncao.ItemIndex <> -1 THEN
      IF rgFuncao.ItemIndex = 1 THEN
        gbMedico.Enabled := True
      ELSE
        gbMedico.Enabled := False;

end;

procedure TfrmCadPesFuncionario.actNovoExecute(Sender: TObject);
begin
  IF qFuncionarios.Active = false THEN
    qFuncionarios.Active := true;

  inherited;

end;

procedure TfrmCadPesFuncionario.SpeedButton1Click(Sender: TObject);
var
  parametro : string;

begin
  inherited;

  


  WITH qFuncionarios DO
    BEGIN
      Close;
      SQL.Add('SELECT * FROM funcionarios ');

      IF cbCondicao.ItemIndex = 1 THEN
        BEGIN
          parametro := (Trim(edtPesquisa.Text) + '%');
          SQL.Add('WHERE nome LIKE :pParametro');
          Parameters.ParamByName('pParametro').Value := parametro;
        END
      ELSE IF cbCondicao.ItemIndex = 2 THEN
        BEGIN
          parametro := (Trim(edtPesquisa.Text));
          SQL.Add('WHERE funcao = :pParametro');
          Parameters.ParamByName('pParametro').Value := parametro;
        END
      ELSE IF cbCondicao.ItemIndex = 3 THEN
        BEGIN
          parametro := (Trim(edtPesquisa.Text)+'%');
          SQL.Add('WHERE especialidade LIKE :pParametro');
          Parameters.ParamByName('pParametro').Value := parametro;
        END;

      Open;
    END;
end;

procedure TfrmCadPesFuncionario.actPesquisarExecute(Sender: TObject);
begin

  inherited;
  qFuncionarios.Close;

end;

procedure TfrmCadPesFuncionario.actimprimirExecute(Sender: TObject);
var
  id : integer;
begin
  inherited;
  id := StrToInt(edtId.Text);
  WITH qFuncionarios DO
    BEGIN
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM funcionarios');
      SQL.Add('WHERE id = :pId');
      Parameters.ParamByName('pId').Value := id;
      Open;
    END;
  qpFuncionario.Preview;
end;

end.
