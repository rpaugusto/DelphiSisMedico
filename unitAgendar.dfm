object frmAgendar: TfrmAgendar
  Left = 142
  Top = 152
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Agenda'
  ClientHeight = 516
  ClientWidth = 720
  Color = clWindow
  Ctl3D = False
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  object lsAgenda: TDBGrid
    Left = 8
    Top = 264
    Width = 709
    Height = 248
    DataSource = dsBuscaAg
    Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnCellClick = lsAgendaCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Hora'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Status'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Caption = 'Paciente'
        Width = 488
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 707
    Height = 109
    Caption = 'MEDICO: '
    TabOrder = 1
    object btnMedico: TBitBtn
      Left = 655
      Top = 54
      Width = 45
      Height = 45
      TabOrder = 0
      OnClick = btnMedicoClick
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFF4E7DB
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FFFFFFFFFFFFFFFFFFF6F2F29A706B6C2E28753B35C8B0AEF4E7DB000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000FFFFFFF6F2F28855506C2E286C2E286C2E28753B35000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FFFFFFF6F2F28855506C2E286C2E286C2E286C2E286C2E28000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF6F2F28855506C2E286C2E286C2E286C2E286C2E289A706B000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFF6F2F2C8B0AE9A706B91625E91625E91625EB59693E3D8D7F6
        F2F28855506C2E286C2E286C2E286C2E286C2E28885550F6F2F2000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFB59693753B356C2E286C2E286C2E286C2E286C2E286C2E286C2E2875
        3B356C2E286C2E286C2E286C2E286C2E28885550F6F2F2FFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F2
        F291625E6C2E286C2E286C2E28885550A37D79B5969391625E6C2E286C2E286C
        2E286C2E286C2E286C2E286C2E28885550F6F2F2FFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA37D
        796C2E286C2E28885550DACBC9FFFFFFFFFFFFFFFFFFFFFFFFF6F2F2AD8A866C
        2E286C2E286C2E286C2E28885550F6F2F2FFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1BDBC6C2E
        286C2E289A706BF6F2F2FFFFFFF9F2E9F2E5D3F2E5D3F6EBDEFDFCF9FFFFFFC8
        B0AE6C2E286C2E28753B35F6F2F2FFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8855506C2E
        287E4843F6F2F2FFFFFFEEDBC3E6CBA7E6CBA7E6CBA7E6CBA7E9D2B2FAF5EEFF
        FFFFAD8A866C2E286C2E28E3D8D7FFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDE5E46C2E286C2E
        28C8B0AEFFFFFFF1E2CEE6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E9D2B2FD
        FCF9F6F2F26C2E286C2E28B59693FFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1BDBC6C2E286C2E
        28EDE5E4FFFFFFE6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7F6
        EBDEFFFFFF91625E6C2E2891625EFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB596936C2E286C2E
        28FFFFFFF9F2E9E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7F2
        E5D3FFFFFFB596936C2E2891625EFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB596936C2E286C2E
        28FFFFFFFAF5EEE6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7F2
        E5D3FFFFFFA37D796C2E2891625EFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDACBC96C2E286C2E
        28E3D8D7FFFFFFE9D2B2E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7F9
        F2E9FFFFFF8855506C2E289A706BFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F2F26C2E286C2E
        28A37D79FFFFFFF7EFE3E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7EEDBC3FF
        FFFFDACBC96C2E286C2E28BEA3A1FFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA37D796C2E
        286C2E28E3D8D7FFFFFFF7EFE3E9D2B2E6CBA7E6CBA7E6CBA7F1E2CEFFFFFFF6
        F2F28855506C2E28753B35F6F2F2FFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDE5E4753B
        356C2E28753B35E3D8D7FFFFFFFFFFFFFAF5EEF9F2E9FFFFFFFFFFFFF6F2F29A
        706B6C2E286C2E28B59693FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8B0
        AE6C2E286C2E286C2E28A37D79E3D8D7FFFFFFFFFFFFEDE5E4C8B0AE7E48436C
        2E286C2E2891625EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFC8B0AE753B356C2E286C2E286C2E286C2E286C2E286C2E286C2E286C2E286C
        2E28A37D79F6F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFEDE5E4A37D796C2E286C2E286C2E286C2E286C2E286C2E28885550D1
        BDBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF6F2F2DACBC9B59693B59693D1BDBCEDE5E4FFFFFFFF
        FFFFF4E7DB000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E7DB000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E7DB
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F4E7DB000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF4E7DB000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF4E7DB000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF4E7DB000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7F300
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF4E7DB0000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E7DB0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E7DB0000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
    end
    object edtMedico: TEdit
      Left = 8
      Top = 65
      Width = 633
      Height = 23
      TabOrder = 1
    end
    object btnBuscarAgenda: TButton
      Left = 240
      Top = 18
      Width = 143
      Height = 33
      Caption = 'Buscar Agenda'
      Enabled = False
      TabOrder = 2
      OnClick = btnBuscarAgendaClick
    end
    object dtCalendario: TDateTimePicker
      Left = 8
      Top = 18
      Width = 228
      Height = 31
      Date = 42119.434309548610000000
      Time = 42119.434309548610000000
      TabOrder = 3
    end
    object btnAgendar: TBitBtn
      Left = 395
      Top = 18
      Width = 100
      Height = 33
      Caption = 'AGENDAR'
      Enabled = False
      TabOrder = 4
      OnClick = btnAgendarClick
    end
    object btnCancelar: TBitBtn
      Left = 498
      Top = 18
      Width = 100
      Height = 33
      Caption = 'CANCELAR'
      Enabled = False
      TabOrder = 5
      OnClick = btnCancelarClick
    end
    object btnFechar: TBitBtn
      Left = 601
      Top = 18
      Width = 100
      Height = 33
      Caption = 'FECHAR'
      TabOrder = 6
      OnClick = btnFecharClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 119
    Width = 707
    Height = 69
    Caption = 'PACIENTE: '
    TabOrder = 2
    object btnPaciente: TSpeedButton
      Left = 656
      Top = 16
      Width = 45
      Height = 45
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFF4E7DB
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FFFFFFFFFFFFFFFFFFF6F2F29A706B6C2E28753B35C8B0AEF4E7DB000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000FFFFFFF6F2F28855506C2E286C2E286C2E28753B35000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FFFFFFF6F2F28855506C2E286C2E286C2E286C2E286C2E28000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF6F2F28855506C2E286C2E286C2E286C2E286C2E289A706B000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFF6F2F2C8B0AE9A706B91625E91625E91625EB59693E3D8D7F6
        F2F28855506C2E286C2E286C2E286C2E286C2E28885550F6F2F2000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFB59693753B356C2E286C2E286C2E286C2E286C2E286C2E286C2E2875
        3B356C2E286C2E286C2E286C2E286C2E28885550F6F2F2FFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F2
        F291625E6C2E286C2E286C2E28885550A37D79B5969391625E6C2E286C2E286C
        2E286C2E286C2E286C2E286C2E28885550F6F2F2FFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA37D
        796C2E286C2E28885550DACBC9FFFFFFFFFFFFFFFFFFFFFFFFF6F2F2AD8A866C
        2E286C2E286C2E286C2E28885550F6F2F2FFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1BDBC6C2E
        286C2E289A706BF6F2F2FFFFFFF9F2E9F2E5D3F2E5D3F6EBDEFDFCF9FFFFFFC8
        B0AE6C2E286C2E28753B35F6F2F2FFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8855506C2E
        287E4843F6F2F2FFFFFFEEDBC3E6CBA7E6CBA7E6CBA7E6CBA7E9D2B2FAF5EEFF
        FFFFAD8A866C2E286C2E28E3D8D7FFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDE5E46C2E286C2E
        28C8B0AEFFFFFFF1E2CEE6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E9D2B2FD
        FCF9F6F2F26C2E286C2E28B59693FFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1BDBC6C2E286C2E
        28EDE5E4FFFFFFE6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7F6
        EBDEFFFFFF91625E6C2E2891625EFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB596936C2E286C2E
        28FFFFFFF9F2E9E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7F2
        E5D3FFFFFFB596936C2E2891625EFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB596936C2E286C2E
        28FFFFFFFAF5EEE6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7F2
        E5D3FFFFFFA37D796C2E2891625EFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDACBC96C2E286C2E
        28E3D8D7FFFFFFE9D2B2E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7F9
        F2E9FFFFFF8855506C2E289A706BFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F2F26C2E286C2E
        28A37D79FFFFFFF7EFE3E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7EEDBC3FF
        FFFFDACBC96C2E286C2E28BEA3A1FFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA37D796C2E
        286C2E28E3D8D7FFFFFFF7EFE3E9D2B2E6CBA7E6CBA7E6CBA7F1E2CEFFFFFFF6
        F2F28855506C2E28753B35F6F2F2FFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDE5E4753B
        356C2E28753B35E3D8D7FFFFFFFFFFFFFAF5EEF9F2E9FFFFFFFFFFFFF6F2F29A
        706B6C2E286C2E28B59693FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8B0
        AE6C2E286C2E286C2E28A37D79E3D8D7FFFFFFFFFFFFEDE5E4C8B0AE7E48436C
        2E286C2E2891625EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFC8B0AE753B356C2E286C2E286C2E286C2E286C2E286C2E286C2E286C2E286C
        2E28A37D79F6F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFEDE5E4A37D796C2E286C2E286C2E286C2E286C2E286C2E28885550D1
        BDBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF6F2F2DACBC9B59693B59693D1BDBCEDE5E4FFFFFFFF
        FFFFF4E7DB000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E7DB000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E7DB
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F4E7DB000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF4E7DB000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF4E7DB000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF4E7DB000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7F300
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF4E7DB0000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E7DB0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E7DB0000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = btnPacienteClick
    end
    object edtPaciente: TEdit
      Left = 8
      Top = 27
      Width = 633
      Height = 23
      TabOrder = 0
    end
  end
  object edtCrm: TDBEdit
    Left = 840
    Top = 264
    Width = 121
    Height = 23
    DataField = 'conselho'
    DataSource = dsfuncionario
    TabOrder = 3
    Visible = False
  end
  object edtProntuario: TDBEdit
    Left = 840
    Top = 296
    Width = 121
    Height = 23
    DataField = 'id'
    DataSource = dsPaciente
    TabOrder = 4
    Visible = False
  end
  object edtIdAgenda: TDBEdit
    Left = 840
    Top = 328
    Width = 121
    Height = 23
    DataField = 'id'
    DataSource = dsBuscaAg
    TabOrder = 7
    Visible = False
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 192
    Width = 709
    Height = 69
    Caption = 'PLANO '
    TabOrder = 8
    object btnBuscaPlano: TSpeedButton
      Left = 650
      Top = 12
      Width = 45
      Height = 45
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFF4E7DB
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FFFFFFFFFFFFFFFFFFF6F2F29A706B6C2E28753B35C8B0AEF4E7DB000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000FFFFFFF6F2F28855506C2E286C2E286C2E28753B35000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FFFFFFF6F2F28855506C2E286C2E286C2E286C2E286C2E28000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF6F2F28855506C2E286C2E286C2E286C2E286C2E289A706B000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFF6F2F2C8B0AE9A706B91625E91625E91625EB59693E3D8D7F6
        F2F28855506C2E286C2E286C2E286C2E286C2E28885550F6F2F2000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFB59693753B356C2E286C2E286C2E286C2E286C2E286C2E286C2E2875
        3B356C2E286C2E286C2E286C2E286C2E28885550F6F2F2FFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F2
        F291625E6C2E286C2E286C2E28885550A37D79B5969391625E6C2E286C2E286C
        2E286C2E286C2E286C2E286C2E28885550F6F2F2FFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA37D
        796C2E286C2E28885550DACBC9FFFFFFFFFFFFFFFFFFFFFFFFF6F2F2AD8A866C
        2E286C2E286C2E286C2E28885550F6F2F2FFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1BDBC6C2E
        286C2E289A706BF6F2F2FFFFFFF9F2E9F2E5D3F2E5D3F6EBDEFDFCF9FFFFFFC8
        B0AE6C2E286C2E28753B35F6F2F2FFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8855506C2E
        287E4843F6F2F2FFFFFFEEDBC3E6CBA7E6CBA7E6CBA7E6CBA7E9D2B2FAF5EEFF
        FFFFAD8A866C2E286C2E28E3D8D7FFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDE5E46C2E286C2E
        28C8B0AEFFFFFFF1E2CEE6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E9D2B2FD
        FCF9F6F2F26C2E286C2E28B59693FFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1BDBC6C2E286C2E
        28EDE5E4FFFFFFE6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7F6
        EBDEFFFFFF91625E6C2E2891625EFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB596936C2E286C2E
        28FFFFFFF9F2E9E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7F2
        E5D3FFFFFFB596936C2E2891625EFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB596936C2E286C2E
        28FFFFFFFAF5EEE6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7F2
        E5D3FFFFFFA37D796C2E2891625EFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDACBC96C2E286C2E
        28E3D8D7FFFFFFE9D2B2E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7F9
        F2E9FFFFFF8855506C2E289A706BFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F2F26C2E286C2E
        28A37D79FFFFFFF7EFE3E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7E6CBA7EEDBC3FF
        FFFFDACBC96C2E286C2E28BEA3A1FFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA37D796C2E
        286C2E28E3D8D7FFFFFFF7EFE3E9D2B2E6CBA7E6CBA7E6CBA7F1E2CEFFFFFFF6
        F2F28855506C2E28753B35F6F2F2FFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDE5E4753B
        356C2E28753B35E3D8D7FFFFFFFFFFFFFAF5EEF9F2E9FFFFFFFFFFFFF6F2F29A
        706B6C2E286C2E28B59693FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8B0
        AE6C2E286C2E286C2E28A37D79E3D8D7FFFFFFFFFFFFEDE5E4C8B0AE7E48436C
        2E286C2E2891625EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFC8B0AE753B356C2E286C2E286C2E286C2E286C2E286C2E286C2E286C2E286C
        2E28A37D79F6F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFEDE5E4A37D796C2E286C2E286C2E286C2E286C2E286C2E28885550D1
        BDBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF6F2F2DACBC9B59693B59693D1BDBCEDE5E4FFFFFFFF
        FFFFF4E7DB000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E7DB000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E7DB
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F4E7DB000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF4E7DB000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF4E7DB000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF4E7DB000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7F300
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF4E7DB0000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E7DB0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E7DB0000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = btnBuscaPlanoClick
    end
    object edtPlano: TEdit
      Left = 8
      Top = 29
      Width = 633
      Height = 23
      TabOrder = 0
    end
  end
  object edtIdPlano: TDBEdit
    Left = 840
    Top = 360
    Width = 121
    Height = 23
    DataField = 'id'
    DataSource = dsPlano
    TabOrder = 9
    Visible = False
  end
  object glsPlano: TDBGrid
    Left = 16
    Top = 243
    Width = 633
    Height = 102
    DataSource = dsPlano
    Options = [dgEditing, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 10
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Visible = False
    OnCellClick = glsPlanoCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'C'#211'DIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'plano'
        Title.Caption = 'NOME'
        Visible = True
      end>
  end
  object gLsPaciente: TDBGrid
    Left = 16
    Top = 169
    Width = 633
    Height = 96
    Ctl3D = True
    DataSource = dsPaciente
    Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs]
    ParentCtl3D = False
    TabOrder = 6
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Visible = False
    OnCellClick = gLsPacienteCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'PRONTU'#193'RIO'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cpf'
        Width = 100
        Visible = True
      end>
  end
  object gLsMedico: TDBGrid
    Left = 16
    Top = 97
    Width = 633
    Height = 104
    DataSource = dsfuncionario
    Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 5
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Visible = False
    OnCellClick = gLsMedicoCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Width = 300
        Visible = True
      end>
  end
  object dsBuscaAg: TDataSource
    DataSet = QBuscaAgenda
    Left = 928
    Top = 144
  end
  object QBuscaAgenda: TADOQuery
    Connection = dmCentral.conecta
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pCrm'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end
      item
        Name = 'pdatainicio'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end
      item
        Name = 'Pdatafim'
        Attributes = [paSigned, paNullable]
        DataType = ftString
        Precision = 10
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'exec buscaAgenda @conselho = :pCrm, '
      '@datainicio = :pdatainicio, @datafim = :Pdatafim')
    Left = 896
    Top = 144
    object QBuscaAgendaHora: TStringField
      FieldName = 'Hora'
      ReadOnly = True
      Size = 5
    end
    object QBuscaAgendaid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QBuscaAgendaNome: TStringField
      FieldName = 'Nome'
      ReadOnly = True
      Size = 100
    end
    object QBuscaAgendaStatus: TStringField
      FieldName = 'Status'
      ReadOnly = True
      Size = 10
    end
  end
  object dsfuncionario: TDataSource
    DataSet = qFuncionario
    Left = 928
    Top = 224
  end
  object qFuncionario: TADOQuery
    Connection = dmCentral.conecta
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pNome'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      'exec buscaFunc @nome = :pNome')
    Left = 896
    Top = 224
  end
  object qPaciente: TADOQuery
    Connection = dmCentral.conecta
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pNomePaciente'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      'exec buscaPaciente @nome = :pNomePaciente')
    Left = 896
    Top = 184
    object qPacienteid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
      DisplayFormat = '000000'
    end
    object qPacientenome: TStringField
      FieldName = 'nome'
      Size = 100
    end
    object qPacientecpf: TStringField
      FieldName = 'cpf'
      EditMask = '000\.000\.000\-00;0;_'
      Size = 11
    end
  end
  object dsPaciente: TDataSource
    DataSet = qPaciente
    Left = 928
    Top = 184
  end
  object qPlano: TADOQuery
    Connection = dmCentral.conecta
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pPlano'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select id, plano from planos'
      'where plano = :pPlano')
    Left = 896
    Top = 112
    object qPlanoid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qPlanoplano: TStringField
      FieldName = 'plano'
      Size = 50
    end
  end
  object dsPlano: TDataSource
    DataSet = qPlano
    Left = 928
    Top = 112
  end
  object qAgendarPac: TADOQuery
    Connection = dmCentral.conecta
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'pPaciente_id'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'pPlano_id'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'pAgenda_id'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'exec agendarPac @paciente_id = :pPaciente_id,'
      '@plano_id = :pPlano_id, @agenda_id = :pAgenda_id'
      '')
    Left = 896
    Top = 80
  end
  object dsAgendarPac: TDataSource
    DataSet = qAgendarPac
    Left = 928
    Top = 80
  end
  object qCancelarAg: TADOQuery
    Connection = dmCentral.conecta
    Parameters = <
      item
        Name = 'agenda_id'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'exec cancelaAgenda @agenda_id = :agenda_id')
    Left = 896
    Top = 48
  end
end
