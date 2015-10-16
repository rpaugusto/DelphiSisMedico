inherited frmCadPlano: TfrmCadPlano
  Left = 196
  Top = 148
  Width = 789
  Height = 564
  BorderIcons = []
  Caption = 'Cadastro de Planos'
  OldCreateOrder = True
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 17
  inherited pgPadrao: TPageControl
    Width = 781
    Height = 514
    ActivePage = tbCadastro
    inherited tbPesquisa: TTabSheet
      inherited gbCondicao: TGroupBox
        Enabled = False
        inherited cbCondicao: TComboBox
          Text = ''
        end
      end
      inherited gbValor: TGroupBox
        inherited SpeedButton1: TSpeedButton
          OnClick = SpeedButton1Click
        end
        inherited edtPesquisa: TEdit
          Text = ''
        end
      end
      inherited dbgResultado: TDBGrid
        DataSource = dspadrao
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
            Width = 500
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor'
            Title.Caption = 'VALOR'
            Visible = True
          end>
      end
    end
    inherited tbCadastro: TTabSheet
      object Label1: TLabel [0]
        Left = 1
        Top = 72
        Width = 49
        Height = 17
        Caption = 'C'#211'DIGO'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [1]
        Left = 67
        Top = 70
        Width = 39
        Height = 17
        Caption = 'NOME'
        FocusControl = DBEdit2
      end
      object Label3: TLabel [2]
        Left = 6
        Top = 126
        Width = 40
        Height = 17
        Caption = 'VALOR'
        FocusControl = DBEdit3
      end
      inherited pMenu: TPanel
        Width = 773
      end
      object DBEdit1: TDBEdit
        Left = 3
        Top = 88
        Width = 57
        Height = 23
        DataField = 'id'
        DataSource = dspadrao
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 68
        Top = 88
        Width = 701
        Height = 23
        DataField = 'plano'
        DataSource = dspadrao
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 6
        Top = 144
        Width = 340
        Height = 23
        DataField = 'valor'
        DataSource = dspadrao
        TabOrder = 3
      end
      object QuickRep1: TQuickRep
        Left = 824
        Top = 32
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        DataSet = qPlano
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poPortrait
        Page.PaperSize = A4
        Page.Values = (
          100.000000000000000000
          2970.000000000000000000
          100.000000000000000000
          2100.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.OutputBin = Auto
        PrintIfEmpty = True
        SnapToGrid = True
        Units = MM
        Zoom = 100
        object PageHeaderBand1: TQRBand
          Left = 38
          Top = 38
          Width = 718
          Height = 40
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            105.833333333333300000
            1899.708333333333000000)
          BandType = rbPageHeader
          object QRLabel4: TQRLabel
            Left = 216
            Top = 16
            Width = 171
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              571.500000000000000000
              42.333333333333330000
              452.437500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Listagem de planos de sa'#250'de'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object ColumnHeaderBand1: TQRBand
          Left = 38
          Top = 78
          Width = 718
          Height = 40
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            105.833333333333300000
            1899.708333333333000000)
          BandType = rbColumnHeader
          object QRLabel1: TQRLabel
            Left = 32
            Top = 8
            Width = 52
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              84.666666666666670000
              21.166666666666670000
              137.583333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C'#211'DIGO'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel2: TQRLabel
            Left = 112
            Top = 10
            Width = 40
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              296.333333333333300000
              26.458333333333330000
              105.833333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'NOME'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel3: TQRLabel
            Left = 416
            Top = 16
            Width = 45
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1100.666666666667000000
              42.333333333333330000
              119.062500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'VALOR'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object DetailBand1: TQRBand
          Left = 38
          Top = 118
          Width = 718
          Height = 40
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            105.833333333333300000
            1899.708333333333000000)
          BandType = rbDetail
          object QRDBText1: TQRDBText
            Left = 35
            Top = 8
            Width = 11
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              92.604166666666670000
              21.166666666666670000
              29.104166666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qPlano
            DataField = 'id'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText2: TQRDBText
            Left = 114
            Top = 8
            Width = 32
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              301.625000000000000000
              21.166666666666670000
              84.666666666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qPlano
            DataField = 'plano'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText3: TQRDBText
            Left = 419
            Top = 9
            Width = 27
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1108.604166666667000000
              23.812500000000000000
              71.437500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = qPlano
            DataField = 'valor'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object PageFooterBand1: TQRBand
          Left = 38
          Top = 158
          Width = 718
          Height = 40
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            105.833333333333300000
            1899.708333333333000000)
          BandType = rbPageFooter
          object QRSysData1: TQRSysData
            Left = 136
            Top = 16
            Width = 8
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              359.833333333333300000
              42.333333333333330000
              21.166666666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsPageNumber
            Transparent = False
            FontSize = 10
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 514
    Width = 781
  end
  inherited dspadrao: TDataSource
    DataSet = qPlano
  end
  object qPlano: TADOQuery
    Active = True
    Connection = dmCentral.conecta
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *  from planos')
    Left = 604
    Top = 28
    object qPlanoid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qPlanoplano: TStringField
      FieldName = 'plano'
      Size = 50
    end
    object qPlanovalor: TBCDField
      FieldName = 'valor'
      EditFormat = 'R$##0.00'
      Precision = 19
    end
  end
end
