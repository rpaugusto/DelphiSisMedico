object frmMontaAgenda: TfrmMontaAgenda
  Left = 347
  Top = 19
  Width = 653
  Height = 664
  BorderIcons = []
  Caption = 'Montar Agenda'
  Color = clWindow
  Ctl3D = False
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 21
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 645
    Height = 633
    Align = alClient
    TabOrder = 0
    object gbFuncionario: TGroupBox
      Left = 8
      Top = 8
      Width = 466
      Height = 84
      Caption = 'IDENTIFICA'#199#195'O DO FUNCIONARIO     '
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 24
        Width = 34
        Height = 21
        Caption = 'CRM'
      end
      object Label2: TLabel
        Left = 88
        Top = 24
        Width = 46
        Height = 21
        Caption = 'NOME'
      end
      object SpeedButton2: TSpeedButton
        Left = 409
        Top = 24
        Width = 50
        Height = 50
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
        OnClick = SpeedButton2Click
      end
      object edtCrm: TEdit
        Left = 8
        Top = 48
        Width = 65
        Height = 27
        TabOrder = 0
      end
      object edtMedico: TEdit
        Left = 75
        Top = 48
        Width = 331
        Height = 27
        TabOrder = 1
      end
    end
    object gbHoraTrabalho: TGroupBox
      Left = 8
      Top = 96
      Width = 465
      Height = 83
      Caption = 'HORARIO DE TRABALHO     '
      TabOrder = 1
      object gbHtIni: TGroupBox
        Left = 8
        Top = 24
        Width = 73
        Height = 52
        Caption = 'INICIO '
        TabOrder = 0
        object edtHoraIni: TMaskEdit
          Left = 4
          Top = 20
          Width = 60
          Height = 27
          EditMask = '!90:00;1;_'
          MaxLength = 5
          TabOrder = 0
          Text = '08:00'
        end
      end
      object gbHtFim: TGroupBox
        Left = 88
        Top = 24
        Width = 73
        Height = 52
        Caption = 'FIM  '
        TabOrder = 1
        object edtHoraFim: TMaskEdit
          Left = 4
          Top = 20
          Width = 60
          Height = 27
          EditMask = '!90:00;1;_'
          MaxLength = 5
          TabOrder = 0
          Text = '12:00'
        end
      end
      object gbHtTmp: TGroupBox
        Left = 168
        Top = 24
        Width = 73
        Height = 52
        Caption = 'TEMPO '
        TabOrder = 2
        object edtHoraTmp: TMaskEdit
          Left = 4
          Top = 20
          Width = 60
          Height = 27
          EditMask = '!90:00;1;_'
          MaxLength = 5
          TabOrder = 0
          Text = '00:20'
        end
      end
      object gbMes: TGroupBox
        Left = 248
        Top = 24
        Width = 207
        Height = 53
        Caption = 'M'#202'S / ANO    '
        TabOrder = 3
        object dtMes: TDateTimePicker
          Left = 8
          Top = 20
          Width = 192
          Height = 29
          Date = 42171.528993900470000000
          Format = 'MM / yyyy'
          Time = 42171.528993900470000000
          TabOrder = 0
          OnChange = dtMesChange
        end
      end
    end
    object gbBtn: TGroupBox
      Left = 478
      Top = 8
      Width = 163
      Height = 171
      TabOrder = 2
      object btnMontar: TSpeedButton
        Left = 8
        Top = 15
        Width = 73
        Height = 74
        Caption = 'MONTAR'
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDE6E2C7
          B2A6AD9586F8F7F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E0DBC4AD9F9E7762763D25641E0765
          18056216047C543EEAE4E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFEFEE5DBD5C0A7999C745D7B432275330C793D186935256240365C504A48
          3E39530D009233089A5122D9C9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFCE1D5CEBCA192976E
          567A401D7B380F975C39BA8E73D1B09B925E3E5149444B433E4B433E4B433E41
          3C383608008B2F07AF4D0EAA4D12C59E85FDFBFAFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFBFAF9DDCFC7B89C8B94694F7B3F1B833F159F633EBE8E
          6FD5B49EE9D9CEF0E4DDF5EDE8FAF7F5B4947F615A54473F3B433C38413B3744
          3D382D0700822A0699420CA0450DA6490DAB653AE8D9D0FFFFFFFFFFFFFAF8F6
          D9C9C0B496849164497F401A8D481CAA6D47C69474D9B59CE1CBBDE7D4C9E9D7
          CBECDCD1EDDED5EEE1D8F0E5DDF1E7E0C19B846A635E504945463F3B433C3749
          423D270A03802A068A3A0B8D3C0B933F0C9A420CA7663FFFFFFFFEFDFDAD7C5E
          9A5427B97D56D5A788E0BCA4E8D0BFEAD4C5D5B8ADAE7C75D7BBB2D9BDB5DCC0
          B9E2CCC4E7D3CBEEE0D7EEE0D7EDDFD7CCA48B73696156504C46403C48423D49
          413C28120C822B07893A0B893A0B8A3A0B8C3B0B945129FFFFFFD3A383C89B7D
          EBD9CEF4E8E0F5EAE3F5E9E0EBD5C8D7B4ABE9D6CCD0AAA3F1E5DCF1E6DEF1E7
          DFE4CFC9DABFB8ECDDD5EDDFD6ECDCD2D3B09A816D5F59534E4D4743453F3B44
          3C38291A14842E08893A0A893A0B893A0B893A0B863F15FFFFFFCD9F7BC5A795
          EDDED4F8EEE7F9F0EAF7EDE7E1C5BFE3D6CCF1E5DDF3EAE2F3EAE2F3EAE3F3EA
          E3F2EAE2F0E5DED7B8B1EEE0D7EBDAD0D9BAA78B6D585E5853544E494A433F44
          3D3828211D87300988390A89390A893A0B893A0B84380AF9F7F5D9B08DDCC6B8
          F0E1D7F9F0E9F9F1EBF5E7DEFAF4F0BEC6DEDDD4CCF6EEE8F6F0EAF4EDE7F4ED
          E6F3EBE5F3EAE2E9D9D1DEC4BCEBDACFDFC5B4956C515B5550635D5850484349
          413C2D282585320A893A0B88390A88390A893A0A88390BEEE7E2DFBB9ADEC7B9
          EFE0D6FAF2ECF9EFE8F7EDE4FCF6F3EDECF09EAED8E2DDD7FAF6F3F6F1ECF5EF
          EAF4EEE7F3EBE5F2E9E1D6B7B0ECDCD1E4CFC1A06D4B69625C635C57534E4A3D
          39372827267B2F0A8A3B0C88390A88390A88390A893A0AE4D7CFE8C7A8DAC2B3
          EEDED3FBF3EEF6E6D9FCF7F4FCF8F5FCF9F6D7DBED9DA8D0E5E2DEF7F4F1F6F1
          EBF5EFE9F3ECE6E7D6CCBA827BEBD8CDE6D2C4A36A4538373632323232323232
          3232282828732C088C3D0D88390A88390A88390A88390AD9C7BCEBCFB3DABEAD
          ECDCD0F9F0E8F8EBE2FCF8F5FCF9F6FCF9F7FBF9F7A6B4E43C52B7B0B0B5CBC8
          C5CCC7C1D0C9C2C9BAB1DAC3BBEDDCD1E6D0C1B0785333333332323232323232
          32322C2C2C6A28068F3F0F88390A88390A88390A88390ACFB7A9EFD8C1DBBAA4
          EAD9CDF8EDE4F9F1EAFCF8F5FCF9F6FCFAF8FCFBF9D3D9EC0B2CA85D6598BCBB
          BAB7B5B3787572958F8AE0C8C0EDDBD0E5CEBEBD845F3838383232323E3E3D33
          33332F2F2F61230392421288390A88390A88390A88390AC5A795F3E1CEDCB59B
          E8D6CBF9EBE1F1D9C5FCF7F3FCFAF6FDFAF8FDFBF9FAF9F71E1F266E7AC1FBF9
          F7FBF9F6F7F0EAF4EAE2DBB9B0EEDDD0E6CEBDC78E683F3F3F4A48465F5C5861
          5E5C32323259200195461488390A88390A88390A88390ABA9681F5E8DADFB292
          E7D5C8F9EEE7FBF2ECFCF9F5FDFAF6FDFAF7FDFBF8FDFBF9989593C5C0BBFAF7
          F4FCF8F6FBF6F3EFDED6E2C4BAEEDBCCE8CFBDCE99754945424946434A47444C
          494633333355210498471588390A88390A88390A88390AB1876EF8EDE4E2B793
          E7D3C7F9EEE7FAEDE4FCF8F5FDF9F6FDFAF7FDFAF7FDFAF7C3C1BEC2BDBAF9F3
          EDFCF8F5FCF6F3F1DFD2F2E1D5EED9CAE9CFBDD4A38254494236333137343237
          35333232325124089B481487380A88390A88390A88390AA6775BFAF4EEE4B790
          E6D2C5F7EDE6FAEBE1FCF4EFFDF9F5FDF9F6FDF9F6FDFAF6CDCAC8F3EFECF8F0
          E8FBF6F2F6EAE0F8F0E8F6E8DEEFD7C6E9CEBBD8AC8D5F4F44302F2F2F2D2D31
          31313232324D270F9E501E80360A87380A88390A88390A9D6747FDFBF9E3B186
          E6D1C4F6EAE2FCF4EEFAECE2FBF4EDFDF8F5FDF8F5FCF8F5FCF8F5FCF8F4FAF2
          ECF7E8DEF7E9E0F9EFE9F5EBE3EAD3C3D8B7A1CDA083705A4B39393954535367
          65637E716784512F9F582A6C2E0A7B340A86380A87390A945834FFFFFFE3AF83
          E4D0C2F5E7DEFDF5EEFBF1E9F9EADEFBF1E9FCF5F1FCF6F1F4DFD0F2DECFF2E2
          D6E9CEBCEEE0D6E8D6CAE2CDBFDEC8BAC8A794B97E59C08154B68B6CBF895FD2
          925EDB955BC687538B50276C310E6A2D0A77320A83370A894721FFFFFFE8B68B
          E1CBBDF3E4D9FDF3ECFDF4EEFCF4EEF8EADFF2DDCFE8CFC1E4CBBEDCBEB1DEC5
          B8E2CDC0E2CCBFDAC0B1D7B098D19A76D19363E29E63EDA668F7AF6FFCB06DFB
          A964FAA965EA9D5DC48049A4663681451E6B2F0B71300A7B370FFFFFFFEFC096
          DDC4B4EEDCCFF8EAE1F5E6DCF0DFD4E9D6C9E4D0C2E4D0C3E3CFC3DCC3B4DDB7
          9EDCA781DEA775ECB076F5B173FDB776FFAB68FEA561FEA561FDA561FDA561FC
          A661FCA863FBA964F7A764E3985AC5814AA26435793D177B4626FFFFFFF5CAA2
          D7BAA9DDC0AFE4CDBEE5D0C3E2CDC1DDC2B2E0B89CE2AE85E8B583F5C58BFAD4
          9CFDE2AFFEE0B2FEC48FFFA868FFA765FFA663FFA562FFA561FEA561FEA561FD
          A561FDA661FCA762FCA863FBAD6CF3B37FDCAA84D0AE96EDE5E1FFFFFFF5CFAD
          DBB196DDC0AEE4B89AE8B58BEFBE88FBCD8AFDD994FEE19CFEDC99FEDC9FFEDD
          A6FEDEACFEDEB2FEC794FFAB6CFFA96AFFA867FFA765FFA663FFA562FFA561FE
          AC6DF9B37FF4BF99F5D4BCF8E6D9FCF7F3FFFFFFFFFFFFFFFFFFFFFFFFFBECD1
          FDD59EFEE1BBFEDE8CFEDC7DFED777FED87FFED988FEDA90FEDB98FEDC9FFEDD
          A6FEDCABFECD9CFEB77EFFAE71FFAC6EFFAB6CFEB37AF6B584F4C4A1F6D8C3F9
          E9DEFEFBF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FDF8F1F4E2CFFDF7EAFEE5A4FED778FED87FFED988FEDA90FEDB98FED99DFECA
          94FEB983FFB57EFEBD8CF6BC92F5CBADF6DDCBFAEDE3FEFDFCFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF8EFE8F5E6DEFEF5DFFEDF97FED988FED48EFEC890FDC59AF4C2
          9EF5D2B9F7E2D3FAF0EAFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFEFDF5E9E0F5E9DFF5DFC6F5D8C3F7E5D9FCF4F0FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Layout = blGlyphTop
        OnClick = btnMontarClick
      end
      object btnGravar: TSpeedButton
        Left = 8
        Top = 90
        Width = 73
        Height = 74
        Caption = 'GRAVAR'
        Enabled = False
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000C40E0000C40E00000000000000000000FFFFFF5C8D58
          2A792B2B7F2C2C7E2D2C802D2C802D2C7D2C2C812D2C7D2C2C802D2C802D2C80
          2D2C7E2C2B7E2C2C7E2C2C7E2D2C7E2C2C7E2C2B7E2C2B7F2C2C792B5C8D58FF
          FFFF5C8F5837AF493BCF603BCD5F3CCE5F2FCB562AC85129C8502CC85128C850
          2CC85129C85029C85029C85029C8502BC8512BC8512AC9512FCA5639CE5F3DCD
          603BCF6036AE465C8D582A7C2C3BCF6139C55B39C75D39C75D21942E21942E21
          942E21942E21942E21942E21942E21942E21942E21942E21942E21942E21942E
          21942E39C75C39C75C39C65A3DCF622B7C2C2E842F3DCC623CC65D3CC85F24AC
          3EF2F1F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFF2F1F224AC3B39C75C3CC55B3ACA5E2C822F2E87303ACC63
          39C65E3CC86025AB3EF2F1F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F1F224A83D39C75D39C55B3ACB622E
          842E2F88323ACD6639C76039C96226AC41F2F1F2FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F0F226AB3E3CC8
          5F38C55A3DCC622D852F2F8A323ACE6839C86339C76037C65D21942E1B91291B
          94291A91281B972D2C94340862090862091D962D1D962D1C922A1A90281C922A
          21922D37C45B39C75E3CC65E3ACC632E87302F8D3439CE6939C96738C86239C9
          653ACB663ACC673ACD673AD16C2C9434308735FFFFFFFFFFFF146B1333B24B3B
          D1673ACC653ACB633AC96239C86239C76039C7613ACD652F8A323090373AD16C
          39C96639C96638C96339C96639C96638CD6832B14C227723FFFFFFFFFFFFFFFF
          FFFCFDFE14681432B54E38CC6638C86339C86339C76339C7633CC8613ACD662F
          8B332B8E3337D06E38CB6938CB6639CB6A38CC673AD16F31B24E166E16FCFCFC
          FFFFFFFFFFFFFFFFFFFFFFFFFCFCFE1B761C35C35C38CB6638C86438C86439C9
          6737C86339CD672B8B2F5EB66E34D06C33C96537CC6939CC6A38CE6C32B65018
          711AFCFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6E3CF126E1136C55E
          38CB6A39CC6738C86534C86134CD665EB16B7EC68D90E5B95BD69031CC6A32CE
          6B34C7630F710FFCFCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC9E5D013721234C55D32CB6632CA645BD48B8FE3B57BC48B7AC58A8AE4B8
          8DE3B793E4BE6ADA982D8D34CDE7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFCEE7D72D8D3269D99896E4BA8DE1B48AE2B479
          C3877AC98D89E3B98BE2B586DEAC77BC7ECDE7D7D7E9DBD9E9DBD9E9DBFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE9DDDAE9DDD7E9DCCEE7D776B97B89DE
          AC8BE1B18CE3B57AC4897DCA8F89E3BB88E3B983D7A680D29B80D29B71CA8B71
          CA8B96CFA4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF72CA8C72CA8C79D196
          7ED29A80D29B83D6A387E2B58CE3B77AC78C7DCC928CE5BD8BE3B98BE4BB8BE5
          BB8BE5BC8BE5BE85DEAE9BD0A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C
          D2A982DEAA8CE4B989E3B789E3B68BE2B78AE1B58CE3B77CCA8F7DCE958CE6C0
          87E4BB8AE3BB8AE3BB8AE3BB8AE4BA83DDAD9FD3ABFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF9CD3A984DCAB88E3BA8BE2B787E2B78AE2B78AE2B789E4BB7D
          CB907DCF968CE6C38AE4BD8AE4BD8AE4BC8AE4BC8AE5BC83DEAE9FD5ACFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FD5AC81DDAD8BE4BA8AE3B98AE3B98AE3
          B98AE3B88CE5BD7DCD9380D1988BE8C48AE5C08AE5C08AE5BF87E4BF87E5C183
          E0B2A0D8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2D8B180DDAE8BE5BC
          8AE4BC8AE4BB8AE4BC87E3BB8CE5BF7DCE9580D29B8BE8C68BE7C28BE7C28AE6
          C28CE7C28CE7C284E1B5A2D9B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2
          D9B283E0B18BE5BE87E4BD8AE4C08AE4BD8AE4BD8BE6BF80D09881D49E8CEACA
          8AE7C48BE7C58AE7C48AE7C58AE8C683E0B6A7DEB9FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFA5DDB885E1B68AE7C18AE5C08AE5C08AE5C08AE6C08BE7C480
          D19982D5A08BECCE8AE8C88AE8C88AE8C78AE8C78AE9C986E3BA88D49BA8DEBA
          A4DDB7A4DDB7A4DDB7A4DDB8A8DEBA87D39A85E2B68AE8C68AE6C08BE7C28AE6
          C28AE6C28DEAC880D29A93D9A68AE3BC8CEBCD8CEBCD8CEBCD8CEBCD8CEBCD8C
          EBCF8BECD089EBCF88EBCD87EBCD87EACB87EACB88EACC8AECCD8CEBCD8CEACA
          8CEACA8CEACA8CE9C98BE9C989E2B8A3DCB1FFFFFFA6E0B784DAA384D9A487DA
          A584D9A484D9A484D9A487DAA684D8A184D9A484D9A484D9A584D9A584D9A584
          D8A584D9A583D8A283D8A283D8A284D8A683D6A0A4DEB4FFFFFF}
        Layout = blGlyphTop
        OnClick = btnGravarClick
      end
      object btnAtualiza: TSpeedButton
        Left = 82
        Top = 90
        Width = 73
        Height = 74
        Caption = 'ATUALIZA'
        Enabled = False
        Glyph.Data = {
          FE0A0000424DFE0A00000000000036000000280000001E0000001E0000000100
          180000000000C80A0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FCF68ECA7658AE332990002990
          0028930023A2012A8E0128900228900264B346ACD89CFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FBEE0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF75BE5875BE582F99002CBD0025D30018E20018E20017DE00
          14DA0016DA021BDA041BDA0426CC0628B5062F990587CA6F87CA6FFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFC7EABD28A7060000FFFFFFFFFFFFFFFFFFFFFFFFE8F5
          E228920026AC0026AC001EDD001BE2001CE0001BDE001BDE001CDE001EDB031E
          DC0524DC0824DC0826DE0B27DF0C2CDD0E29B20829B20833A510E9F6E6FFFFFF
          6CBD5B6CBD5B1EA20727B60A0000FFFFFFFFFFFFFFFFFFFFFFFFE8F5E2289200
          26AC0026AC001EDD001BE2001CE0001BDE001BDE001CDE001EDB031EDC0524DC
          0824DC0826DE0B27DF0C2CDD0E29B20829B20833A510E9F6E6FFFFFF6CBD5B6C
          BD5B1EA20727B60A0000FFFFFFFFFFFFFFFFFFE8F5E22B93001EC30018DF0018
          DF001DE0001DDF001CDF0021E00221E00222E00429E1082EE20C32E30F32E30F
          35E31235E11532E0152FE7172FE7172CCE0F2099052A8C1A19B50919B50938F3
          322CC00C0000FFFFFFFFFFFFFFFFFF2C97001BBD0015DC001CDE001CDE001DDF
          001EDF0022E00328E30628E3062AE3092EE50D33E40F37E61437E6143FE81945
          E91F43E8223EE7233EE72338E8222CD91622CB1132E62A32E62A45F33D28C20C
          0000FFFFFF75BE5875BE5824A90014DA0018D9001ADD001ADD001FE00124E204
          28E5092DD1072DD1073BC9103FBA105ED43C70E26970E26991F79F61EF4F4DED
          2B53EE3553EE354EED3646ED333FEB3449EE4049EE4056F55330CA120000F8FC
          F6298F00298F0015D10013D40015D5001CDC021CDC0222E1052FDF0939B2073C
          A7123CA7129AD283DAF0D1A6DC9480CF6380CF6331B30958D64A9DFCAF5FF242
          5FF24265F1505CF14F5BF15264F55E64F55E70FA7437D4160000F8FCF6298F00
          298F0015D10013D40015D5001CDC021CDC0222E1052FDF0939B2073CA7123CA7
          129AD283DAF0D1A6DC9480CF6380CF6331B30958D64A9DFCAF5FF2425FF24265
          F1505CF14F5BF15264F55E64F55E70FA7437D41600008BC57622AF0022AF0010
          D50013D10019D50224E00624E00632E00A46BA09B1E298FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF93D5831C9D047AF0836DF4576DF45774F66472F6
          6A73F86E7BF87C7BF87C82FC8B40DB1C000054A63517C30017C30012D40118D6
          0321DC062CE40C2CE40C46C30BA4DF85FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF5DBA495DBA492EB9146EF47C59F24170F56270F56275F76A7CF97A82FA85
          88FA8D88FA8D8EFE9A3FDF1D00002D990223AB0223AB021BBC021FD40625E00A
          32DD0E32DD0E4EB917FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAF9E52DB1091D9F
          081D9F086BE67BB9FFCDC0FECEA5FEB5A5FEB58FFC9D74F8777CFB8086FC8E86
          FC8E8DFD9B3FE3200000FFFFFFF1F8EDF1F8EDC7E8B965BD3D38B20938B80938
          B8097ACB5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1E7B9C1E7B9
          7ECF7134A82523BA0F3ED53C3ED53C7CF290CBFFDAB8FFCCABFFBFABFFBF9CFF
          B138E21B0000FFFFFFF1F8EDF1F8EDC7E8B965BD3D38B20938B80938B8097ACB
          5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1E7B9C1E7B97ECF7134
          A82523BA0F3ED53C3ED53C7CF290CBFFDAB8FFCCABFFBFABFFBF9CFFB138E21B
          0000AC540DE8CEBBE8CEBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFB3E7ABB3E7AB70D16326BF162CD21F59E86559E865ACFEBF38DE280000C476
          22E3B060E3B060E3B060CF8832CF8832D29764D29764E8C9ADFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9F0A030DD1B0000B55B00EBB32B
          EBB32BF0CA63F8E19FFFF0CAF2D496F2D496E5B167D58F36CA7B2DDFAE7BDFAE
          7BF1DAC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEABD78EABD78E7
          AD42E8AA3EEBBA61FFFFFFFFFFFFFFFFFFFFFFFF0000BB5F03E29501E29501E0
          9506E39A0DE5A31CEFC55DEFC55DF6D890FDEBBEFEEDC7F5DA9EF5DA9ED78F32
          D28324FAF2E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3A23BE3A23BFADD81FEE6
          96FCE38EF9D573F9D573F4D075EFB8410000BB5F03E29501E29501E09506E39A
          0DE5A31CEFC55DEFC55DF6D890FDEBBEFEEDC7F5DA9EF5DA9ED78F32D28324FA
          F2E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3A23BE3A23BFADD81FEE696FCE38E
          F9D573F9D573F4D075EFB8410000BC6106E29906E29906E39A0FE49F19E7A423
          E7A92AE7A92AEAAB31ECB032F5D57FDFA54FDFA54FDDA05CFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF1CE9AE7AB3EE7AB3EFEE491FCE491FEE592FFEAB0FF
          EAB0FCE8BAF2C5650000BD6509E29C09E29C09E39C12E5A11BE7A727E9AD31E9
          AD31EBAF36F2CF7CCC781AE6BD8EE6BD8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFF2D5A9E39F32FADA7DFADA7DFCE18FFDE392FEE38FFFF2D1FFF2D1F6D4
          7CF6D9980000C1660AE39C09E39C09E39E14E6A21EE7A829EAAE35EAAE35EAB0
          36F9DFA1E9BE77D28322D28322E4B173EECDA1F8EBD8EECB97EECB97E09D3AE4
          A338F7D779FDE18DFDE18DFCE08EFDE28FFEE8AAFFF0D5FFF0D5EFB538FEFDF8
          0000C2690DE59C0CE59C0CE49F18E7A523E9AB2CEAAF36EAAF36EDB33EEDB640
          F4CC6DF9E4A9F9E4A9F2CF8FECC376E5AA4DEEBE5EEEBE5EF1C964FCDE85FBDE
          87FCE08BFCE08BFCE08CFEE59BFFF5DFF4CE6EF4CE6EF5D183FFFFFF0000C269
          0DE59C0CE59C0CE49F18E7A523E9AB2CEAAF36EAAF36EDB33EEDB640F4CC6DF9
          E4A9F9E4A9F2CF8FECC376E5AA4DEEBE5EEEBE5EF1C964FCDE85FBDE87FCE08B
          FCE08BFCE08CFEE59BFFF5DFF4CE6EF4CE6EF5D183FFFFFF0000C36B0FE59D0E
          E59D0EE7A41BE19A1FE7A735ECB339ECB339EDB540EEBA48F0BE4EF0C252F0C2
          52F3C75DF5CC68F7D171F8D576F8D576FAD87DFADA80FBDD85FCDF88FCDF88FD
          E49BFFF2D3FBE3AAEFB63BEFB63BFFFFFFFFFFFF0000C56F12E8A412E8A412D7
          881BC7782FCB7824E5A943E5A943EFBA43EEBC4AF0C052F2C55AF2C55AF4C963
          F5CD6AF6D271F8D477F8D477F9D87DFADA7FFBDD83FDE7A3FDE7A3FFF5DEFBE4
          AAEFB538FDF7EAFDF7EAFFFFFFFFFFFF0000C77113C87218C87218D79F69FFFF
          FFF9F1E8CD7D27CD7D27DFA043F3CB6DF2C65CF2C759F2C759F4C960F4CC67F7
          D16EF7D573F7D573F8D778FBE098FFEFCDFEF0D4FEF0D4F4CE6EEFB63BFDF7EA
          FFFFFFFFFFFFFFFFFFFFFFFF0000BF6918EFD8C2EFD8C2FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFE5B880D48321E9BB6AF3D085F3D085F8DF99FBE5A9FCE5ABFEEB
          BCFEEBBCFFF3D8FAE3AFF4CF79EFB438EFB438F5D183FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000BF6918EFD8C2EFD8C2FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFE5B880D48321E9BB6AF3D085F3D085F8DF99FBE5A9FCE5ABFEEBBCFEEBBC
          FFF3D8FAE3AFF4CF79EFB438EFB438F5D183FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FBF5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFF0D3AAE5AE61E5AE61DE952CE1982BEDB95BE7A938E7A938E8A934F0
          BE60F5D798FEFDF8FEFDF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000}
        Layout = blGlyphTop
        OnClick = btnAtualizaClick
      end
      object btnFechar: TSpeedButton
        Left = 82
        Top = 15
        Width = 73
        Height = 74
        Caption = 'FECHAR'
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFABABAB5555553535353333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333353535555555ABABABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF9999993333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFEFEFEF3535353333335151519999999F9F9F9F9F9F9F9F9F9F9F9F9F9F
          9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F
          9F9F999999515151333333353535EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFC9C9C9333333333333CDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFCDCDCD333333333333C9C9C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBFBFBF333333333333DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFDFDFDF333333333333BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBFBFBF333333333333DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFDFDFDF333333333333BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBFBFBF333333333333DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFDFDFDF333333333333BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBFBFBF333333333333DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFE0E0E0333333333333BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBFBFBF333333333333DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E53F3F3F969696FFFFFFFF
          FFFFFFFFFFFFFFFF999999333333BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBFBFBF333333333333DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1C1C13333333333337D7D7DFA
          FAFAFFFFFFFFFFFFFFFFFFB5B5B5C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBFBFBF333333333333DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF33333333333333333365
          6565F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBFBFBF333333333333DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF33333333333333333333
          3333535353E5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBFBFBF333333333333DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFC6C6C67676
          767272727272727272727272727272727272725E5E5E33333333333333333333
          3333333333454545D4D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBFBFBF333333333333DFDFDFFFFFFFFFFFFFFFFFFFFFFFFF4C4C4C3333
          3333333333333333333333333333333333333333333333333333333333333333
          33333333333333333B3B3BBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBFBFBF333333333333DFDFDFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3F3333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333353535A6A6A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBFBFBF333333333333DFDFDFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3F3333
          3333333333333333333333333333333333333333333333333333333333333333
          33333333333333333333333333333333338B8B8BFDFDFDFFFFFFFFFFFFFFFFFF
          FFFFFFBFBFBF333333333333DFDFDFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3F3333
          3333333333333333333333333333333333333333333333333333333333333333
          33333333333333333333333333333333338B8B8BFDFDFDFFFFFFFFFFFFFFFFFF
          FFFFFFBFBFBF333333333333DFDFDFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3F3333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333353535A6A6A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBFBFBF333333333333DFDFDFFFFFFFFFFFFFFFFFFFFFFFFF4C4C4C3333
          3333333333333333333333333333333333333333333333333333333333333333
          33333333333333333B3B3BBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBFBFBF333333333333DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFC6C6C67676
          767272727272727272727272727272727272725E5E5E33333333333333333333
          3333333333454545D4D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBFBFBF333333333333DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF33333333333333333333
          3333535353E5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBFBFBF333333333333DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF33333333333333333365
          6565F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBFBFBF333333333333DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C03333333333337D7D7DFA
          FAFAFFFFFFFFFFFFFFFFFFB5B5B5C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBFBFBF333333333333DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E2393939969696FFFFFFFF
          FFFFFFFFFFFFFFFF999999333333BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBFBFBF333333333333DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFF
          FFFFFFFFFFE0E0E0333333333333BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBFBFBF333333333333DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFDFDFDF333333333333BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBFBFBF333333333333DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFDFDFDF333333333333BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBFBFBF333333333333DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFDFDFDF333333333333BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFC9C9C9333333333333CDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFCDCDCD333333333333C9C9C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFEFEFEF3535353333335151519999999F9F9F9F9F9F9F9F9F9F9F9F9F9F
          9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F
          9F9F999999515151333333353535EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF9999993333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFABABAB5555553535353333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333353535555555ABABABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Layout = blGlyphTop
        OnClick = btnFecharClick
      end
    end
    object gbAgenda: TGroupBox
      Left = 8
      Top = 184
      Width = 633
      Height = 425
      Caption = 'AGENDA     '
      TabOrder = 3
      object sgAgenda: TStringGrid
        Left = 8
        Top = 24
        Width = 617
        Height = 393
        Ctl3D = False
        FixedColor = clInactiveBorder
        ParentCtl3D = False
        TabOrder = 0
        OnClick = sgAgendaClick
        OnDrawCell = sgAgendaDrawCell
      end
    end
    object sbAgenda: TStatusBar
      Left = 1
      Top = 613
      Width = 643
      Height = 19
      Panels = <
        item
          Style = psOwnerDraw
          Width = 150
        end
        item
          Width = 50
        end>
    end
    object lbAgenda: TListBox
      Left = 648
      Top = 40
      Width = 265
      Height = 569
      ItemHeight = 21
      TabOrder = 5
      Visible = False
    end
    object dbLisMedico: TDBGrid
      Left = 16
      Top = 80
      Width = 417
      Height = 113
      DataSource = dsAgenda
      Options = [dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 6
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Visible = False
      OnDblClick = dbLisMedicoDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'conselho'
          Title.Caption = 'CRM'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'MEDICO'
          Width = 322
          Visible = True
        end>
    end
  end
  object dsAgenda: TDataSource
    DataSet = qAgenda
    Left = 648
    Top = 8
  end
  object qAgenda: TADOQuery
    Connection = dmCentral.conecta
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select id, conselho, nome from funcionarios where funcao = '#39'MEDI' +
        'CA (O)'#39)
    Left = 680
    Top = 8
  end
end