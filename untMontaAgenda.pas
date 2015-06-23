unit untMontaAgenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, Buttons, StdCtrls, DBCtrls, ExtCtrls, DB, ADODB, DBGrids,
  Grids, ComCtrls;

type
  TfrmMontaAgenda = class(TForm)
    Panel1: TPanel;
    gbFuncionario: TGroupBox;
    gbHoraTrabalho: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    gbHtIni: TGroupBox;
    edtHoraIni: TMaskEdit;
    gbBtn: TGroupBox;
    gbHtFim: TGroupBox;
    edtHoraFim: TMaskEdit;
    gbHtTmp: TGroupBox;
    edtHoraTmp: TMaskEdit;
    gbAgenda: TGroupBox;
    sbAgenda: TStatusBar;
    btnMontar: TSpeedButton;
    btnGravar: TSpeedButton;
    btnAtualiza: TSpeedButton;
    btnFechar: TSpeedButton;
    gbMes: TGroupBox;
    dtMes: TDateTimePicker;
    sgAgenda: TStringGrid;
    lbAgenda: TListBox;
    dbLisMedico: TDBGrid;
    dsAgenda: TDataSource;
    qAgenda: TADOQuery;
    edtCrm: TEdit;
    edtMedico: TEdit;
    procedure dbLisMedicoDblClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnMontarClick(Sender: TObject);
    procedure dtMesChange(Sender: TObject);
    procedure btnAtualizaClick(Sender: TObject);
    function ExistAgenda(dataIni : String; dataFim : String; crm : Integer ): Boolean;
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure sgAgendaDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sgAgendaClick(Sender: TObject);
    procedure sgAgendaDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMontaAgenda: TfrmMontaAgenda;
  id, col, lin : integer;
  mes : TDateTime;

implementation

uses untDMCentral, DateUtils;

{$R *.dfm}

procedure TfrmMontaAgenda.dbLisMedicoDblClick(Sender: TObject);
begin
  edtCrm.Text := IntToStr(qAgenda.Fields[0].AsInteger);
  edtMedico.Text := qAgenda.Fields[1].AsString;
  id := qAgenda.Fields[3].AsInteger;
  //edtCrm.Enabled := false;
  //edtMedico.Enabled := false;
  dbLisMedico.Visible := false;
end;

procedure TfrmMontaAgenda.SpeedButton2Click(Sender: TObject);
begin
  //IF (edtCrm.Text = '' ) THEN
   // BEGIN
      IF (edtMedico.Text = '' ) THEN
        BEGIN
          WITH qAgenda DO
            BEGIN
              Close;
              SQL.Clear;
              SQL.Add('exec buscaFunc @nome = :pNome');
              Parameters.ParamByName('pNome').Value := '';
              Open;
            END;
        END
      ELSE
        BEGIN
          WITH qAgenda DO
            BEGIN
              Close;
              SQL.Clear;
              SQL.Add('exec buscaFunc @nome = :pNome');
              Parameters.ParamByName('pNome').Value := edtMedico.Text;
              Open;
            END;
        END;
    //END
  {ELSE
    BEGIN
      WITH qAgenda DO
        BEGIN
          Close;
          SQL.Clear;
          SQL.Add('SELECT id, conselho, nome FROM funcionarios');
          SQL.Add('WHERE funcao = :pFuncao');
          SQL.Add('AND crm = :pCRM');
          Parameters.ParamByName('pCrm').Value := StrToInt(edtCrm.Text);
          Parameters.ParamByName('pFuncao').Value := 'MEDICA (O)';
          Open;
        END;
    END;}

  dbLisMedico.Visible := true;

end;

procedure TfrmMontaAgenda.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmMontaAgenda.btnMontarClick(Sender: TObject);
var
  hIni, hFim, hInt, dia : TDateTime;
  i, x, y : integer;
  diaini, diafim :  String;

begin
  diaini :=  (DateToStr(mes)+' '+edtHoraIni.Text);
  diafim :=  (DateToStr(mes)+' '+edtHoraFim.Text);
  hIni := StrToTime('00:00');
  hFim := StrToTime('00:00');
  hInt := StrToTime('00:00');

IF (ExistAgenda(diaini, diafim, StrToInt(edtCrm.Text))) THEN
  MessageDlg('Medico já possui agenda para esta mês!',mtInformation,[mbOK],1)
ELSE
  BEGIN
  {ATRIBUIR VALORES PARA CRIAR O STRINGgRID}
  hIni := StrToTime(edtHoraIni.Text);
  hFim := StrToTime(edtHoraFim.Text);
  hInt := StrToTime(edtHoraTmp.Text);

  {CRIA AS LINHAS}
  i := 0;
  WHILE (hIni < hFim) DO
    BEGIN
      i := i+1;
      hIni := hIni + hInt;
    END;
  sgAgenda.RowCount := i+1;

  {CRIA AS COLUNAS}
  sgAgenda.ColCount := DaysInMonth(mes) +1;

  {PREPARANDO GRID PARA RECEBER HORA E DATA}
  sgAgenda.Cells[0,0] := ('H / D');

  {ESCREVENDO A AGENDA}
  dia :=  mes;
  hIni :=  StrToTime(edtHoraIni.Text);
  FOR x := 1 TO (DaysInMonth(mes)) DO
    BEGIN
      // TITULO DA COLUNA
      sgAgenda.Cells[x,0] := FormatDateTime('dd',dia);
      // ESCREVENDO NAS LINHAS
      FOR y := 1 TO i DO
        BEGIN
          //TITULO DA LINHA
          sgAgenda.Cells[0,y] := FormatDateTime('HH:mm', hIni);
          //VERIFICANDO SE SABADO OU DOMINGO
          IF (DayOfWeek(dia) = 1) THEN
            sgAgenda.Cells[x,y] := 'DOM'
          ELSE IF (DayOfWeek(dia) = 7) THEN
            sgAgenda.Cells[x,y] := 'SAB'
          ELSE
            sgAgenda.Cells[x,y] := 'LIV';
          //ADD TEMPO NA HORA
          hIni := hIni + hInt;
        END;
      dia := IncDay(dia,1);
    END;

  btnGravar.Enabled := true;
  sbAgenda.Panels[1].Text := 'Agenda criada com sucesso!';
  END;
end;

procedure TfrmMontaAgenda.dtMesChange(Sender: TObject);
begin
  mes := StrToDate('1/'+IntToStr(MonthOf(dtMes.date))+'/'+IntToStr(YearOf(dtMes.date)));
end;

procedure TfrmMontaAgenda.btnAtualizaClick(Sender: TObject);
begin
  MessageDlg('Funcionalidade não contratada! versão DEMO',mtInformation,[mbOK],1);
end;

function TfrmMontaAgenda.ExistAgenda(dataIni, dataFim: String;
  crm: Integer): Boolean;
begin

  WITH qAgenda DO
    BEGIN
      Close;
      SQL.Clear;
      SQL.Add('SELECT COUNT(a.datahora), f.id FROM agenda a');
      SQL.Add('INNER JOIN funcionarios f ON f.id = a.funcionario_id');
      SQL.Add('WHERE f.conselho = :pcrm AND a.datahora BETWEEN :pini AND :pfim');
      SQL.Add('GROUP BY f.id');
      Parameters.ParamByName('pini').Value := dataIni;
      Parameters.ParamByName('pfim').Value := dataFim;
      Parameters.ParamByName('pcrm').Value := crm;
      Open;
      Result := (Fields[0].AsInteger > 0);
    END

end;

procedure TfrmMontaAgenda.FormCreate(Sender: TObject);
begin

  sgAgenda.ColCount := 0;
  sgAgenda.RowCount := 0;

  mes := StrToDate('1/'+ intToStr(MonthOf(Now())) + '/' + IntToStr(YearOf(Now())) );
  dtMes.Date := Now();

end;

procedure TfrmMontaAgenda.btnGravarClick(Sender: TObject);
var
  dia : TDate;
  x, y : integer;
begin
  dia :=  mes;
  FOR x := 1 TO sgAgenda.ColCount DO
    BEGIN
      FOR y := 1 TO sgAgenda.RowCount DO
        BEGIN
          IF (sgAgenda.Cells[x,y] = 'LIV') THEN
            BEGIN
              lbAgenda.Items.Add(DateToStr(dia) + ' - ' + (sgAgenda.Cells[0,y]) + ' - LIVRE');
              WITH qAgenda DO
                BEGIN
                  Close;
                  SQL.Clear;
                  SQL.Add('INSERT INTO agenda (estado, funcionario_id, datahora)');
                  SQL.Add('VALUES (:pStatus, :pMedico, :pDiaHora)');
                  Parameters.ParamByName('pStatus').Value := 'LIVRE';
                  Parameters.ParamByName('pMedico').Value := id;
                  Parameters.ParamByName('pDiaHora').Value := (DateToStr(dia) + ' ' + (sgAgenda.Cells[0,y]));
                  ExecSQL;
                END;
            END;
        END;
      dia := IncDay(dia,1);
    END;
  MessageDlg('Agenda gravada com sucesso!',mtInformation,[mbOK],1);
  btnGravar.Enabled := false;
  sgAgenda.ColCount := 0;
  sgAgenda.RowCount := 0;
  edtCrm.Text := '';
  edtMedico.Text := '';
end;

procedure TfrmMontaAgenda.sgAgendaDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  {COLORIR O SGAGENDA}
  IF sgAgenda.Cells[ACol,ARow] = 'BLOQ' THEN
    BEGIN
      sgAgenda.Canvas.Brush.Color := clMenuHighlight;
      sgAgenda.Canvas.FillRect(rect);
      sgAgenda.Canvas.TextOut(Rect.Left+2,Rect.Top+2,sgAgenda.Cells[ACol, ARow]);
    END
  ELSE IF sgAgenda.Cells[ACol,ARow] = 'LIV' THEN
    BEGIN
      sgAgenda.Canvas.Brush.Color := clMoneyGreen;
      sgAgenda.Canvas.FillRect(rect);
      sgAgenda.Canvas.TextOut(Rect.Left+2,Rect.Top+2,sgAgenda.Cells[ACol, ARow]);
    END;

end;

procedure TfrmMontaAgenda.sgAgendaClick(Sender: TObject);
var
  pt : TPoint;
begin
  {capturando a posição do mouse ao clicar no sg}
  GetCursorPos(pt);
  pt := sgAgenda.ScreenToClient(pt);
  if (PtInRect(sgAgenda.ClientRect, pt)) then
    sgAgenda.MouseToCell(pt.X, pt.Y, col, lin)
  else
    begin
      col := -1;
      lin := -1;
    end;

    if (col <> 0) and (lin <> 0) then
      sgAgenda.Cells[col,lin] := 'BLOQ'
    else if (col <> 0) and (lin <> 0) then
      sgAgenda.Cells[col,lin] := 'LIV';


end;

procedure TfrmMontaAgenda.sgAgendaDblClick(Sender: TObject);
var
  pt : TPoint;
begin
  {capturando a posição do mouse ao clicar no sg}
  GetCursorPos(pt);
  pt := sgAgenda.ScreenToClient(pt);
  if (PtInRect(sgAgenda.ClientRect, pt)) then
    sgAgenda.MouseToCell(pt.X, pt.Y, col, lin)
  else
    begin
      col := -1;
      lin := -1;
    end;

    if (col <> 0) and (lin <> 0) then
      sgAgenda.Cells[col,lin] := 'LIV';


end;



end.
