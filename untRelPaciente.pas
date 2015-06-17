unit untRelPaciente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, QuickRpt, ExtCtrls, Mask,
  DBCtrls, QRCtrls, Buttons;

type
  TfrmRelPaciente = class(TForm)
    Panel1: TPanel;
    qRelPaciente: TADOQuery;
    qRelPacientenome: TStringField;
    qRelPacientecpf: TStringField;
    qRelPacienteendereco: TStringField;
    qRelPacientebairro: TStringField;
    qRelPacientecidade: TStringField;
    qRelPacienteestado: TStringField;
    qRelPacientecep: TStringField;
    qRelPacientetelefone: TStringField;
    qRelPacientecelular: TStringField;
    qRelPacientesexo: TStringField;
    Panel2: TPanel;
    btnFechar: TBitBtn;
    btnProsseguir: TBitBtn;
    relatPaciente: TQuickRep;
    PageHeaderBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel9: TQRLabel;
    QRSysData1: TQRSysData;
    procedure btnProsseguiClick(Sender: TObject);
    procedure btnFechaClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnProsseguirClick(Sender: TObject);
//    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPaciente: TfrmRelPaciente;

implementation

uses untDMCentral;

{$R *.dfm}

procedure TfrmRelPaciente.btnProsseguiClick(Sender: TObject);
begin

  {if rgOrder.ItemIndex = 0 then
    begin
      with qRelPaciente do
         begin
            Close;
            SQL.Clear;
            sql.Add('select * from lspacientes');
            sql.Add('order by cep');
            Open;
            qRelPaciente.Open;
            repReceitas.Preview;
          end;
    end
  else if rgOrder.ItemIndex = 1 then
    begin
      with qRelPaciente do
         begin
            Close;
            SQL.Clear;
            sql.Add('select * from lspacientes');
            sql.Add('order by cidade');
            Open;
            qRelPaciente.Open;
            repReceitas.Preview;
          end;
    end
  else if rgOrder.ItemIndex = 2 then
    begin
      with qRelPaciente do
         begin
            Close;
            SQL.Clear;
            sql.Add('select * from lspacientes');
            sql.Add('order by sexo');
            Open;
            qRelPaciente.Open;
            repReceitas.Preview;
          end;
    end
  else if rgOrder.ItemIndex = 3 then
    begin
      with qRelPaciente do
         begin
            Close;
            SQL.Clear;
            sql.Add('select * from lspacientes');
            sql.Add('order by sexo');
            Open;
            qRelPaciente.Open;
            repReceitas.Preview;
          end;
    end
  else }
    begin
      MessageDlg('Nenhuma opção selecionada...' +#13+ 'Selecione uma opção antes de prosseguir!', mtInformation, [mbOK], 0);

    end;

end;

procedure TfrmRelPaciente.btnFechaClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRelPaciente.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRelPaciente.btnProsseguirClick(Sender: TObject);
begin
  qRelPaciente.Open;
  relatPaciente.Preview
end;


end.
