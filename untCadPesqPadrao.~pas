unit untCadPesqPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ImgList, ExtCtrls, Grids, DBGrids, Buttons, StdCtrls,
  ComCtrls, XPMan, DB;

type
  TfrmCadPesPadrao = class(TForm)
    pgPadrao: TPageControl;
    tbPesquisa: TTabSheet;
    tbCadastro: TTabSheet;
    gbCondicao: TGroupBox;
    gbValor: TGroupBox;
    StatusBar1: TStatusBar;
    cbCondicao: TComboBox;
    edtPesquisa: TEdit;
    SpeedButton1: TSpeedButton;
    dbgResultado: TDBGrid;
    pMenu: TPanel;
    btnNovo: TSpeedButton;
    btnEditar: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnCancel: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnImprimir: TSpeedButton;
    btnBusca: TSpeedButton;
    btnSair: TSpeedButton;
    ilPadrao: TImageList;
    actPadrao: TActionList;
    actNovo: TAction;
    actEditar: TAction;
    actSalvar: TAction;
    actCancelar: TAction;
    actExcluir: TAction;
    actimprimir: TAction;
    actPesquisar: TAction;
    actFechar: TAction;
    dspadrao: TDataSource;
    procedure actFecharExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actimprimirExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure dspadraoStateChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ativaBotao(Ativa : Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadPesPadrao: TfrmCadPesPadrao;

implementation

uses untDMCentral;

{$R *.dfm}

procedure TfrmCadPesPadrao.actFecharExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmCadPesPadrao.actNovoExecute(Sender: TObject);
begin
  //
  dspadrao.DataSet.Append;
end;

procedure TfrmCadPesPadrao.actEditarExecute(Sender: TObject);
begin
  //
  dspadrao.DataSet.Edit;
end;

procedure TfrmCadPesPadrao.actSalvarExecute(Sender: TObject);
begin
  //
  dspadrao.DataSet.Post;
end;

procedure TfrmCadPesPadrao.actCancelarExecute(Sender: TObject);
begin
  //
  dspadrao.DataSet.Cancel;
end;

procedure TfrmCadPesPadrao.actExcluirExecute(Sender: TObject);
begin
  //
  dspadrao.DataSet.Delete;
end;

procedure TfrmCadPesPadrao.actimprimirExecute(Sender: TObject);
begin
  // imprimir ficha

end;

procedure TfrmCadPesPadrao.actPesquisarExecute(Sender: TObject);
begin
  pgPadrao.TabIndex := 0;
end;

procedure TfrmCadPesPadrao.dspadraoStateChange(Sender: TObject);
begin

  btnSalvar.Enabled := (Sender as TDataSource).State in [dsEdit, dsInsert]; // ativando o botão SALVAR
  btnCancel.Enabled := btnSalvar.Enabled; // ativado conforme botão salvar
  // ativa o botão EDITAR se o DataSet não for vazio e o botao NOVO estiver ativo
  btnEditar.Enabled :=  (btnNovo.Enabled) and not  ((Sender as  TDataSource).DataSet.IsEmpty);
  btnExcluir.Enabled := btnEditar.Enabled; // ativa o botão EXCLUIR conforme botão EDITAR
  btnImprimir.Enabled := btnEditar.Enabled; // ativa o botão IMPRMIR conforme botão EDITAR


end;

procedure TfrmCadPesPadrao.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if btnSalvar.Enabled then
    begin
      CanClose := False;
      MessageDlg('Salve ou cancele a operação atual antes de fechar a janela!',
                  mtInformation,[mbOK], 0 );
    end;

end;

procedure TfrmCadPesPadrao.ativaBotao(Ativa: Boolean);
begin
//  btnNovo.Enabled := not Ativa;
end;

end.
