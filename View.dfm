object fView: TfView
  Left = 454
  Top = 162
  Width = 755
  Height = 480
  Caption = 'Timer'
  Color = clBlack
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbJudul: TLabel
    Left = 0
    Top = 13
    Width = 739
    Height = 50
    Align = alTop
    Alignment = taCenter
    Caption = 'Event'
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -43
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 739
    Height = 13
    Align = alTop
  end
  object lbEvent: TLabel
    Left = 0
    Top = 83
    Width = 739
    Height = 37
    Align = alTop
    Alignment = taCenter
    Caption = 'sub'
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -32
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 0
    Top = 63
    Width = 739
    Height = 20
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 0
    Top = 120
    Width = 739
    Height = 37
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel3: TPanel
    Left = 0
    Top = 398
    Width = 739
    Height = 44
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Panel3'
    Color = clBlack
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 157
    Width = 739
    Height = 241
    Align = alClient
    BevelOuter = bvNone
    Color = clBlack
    TabOrder = 1
    object lbSisa: TLabel
      Left = 0
      Top = 37
      Width = 739
      Height = 37
      Align = alTop
      Alignment = taCenter
      Caption = 'SISA WAKTU'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 0
      Top = 204
      Width = 739
      Height = 37
      Align = alBottom
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 0
      Top = 0
      Width = 739
      Height = 37
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object pnWaktu: TPanel
      Left = 0
      Top = 74
      Width = 739
      Height = 130
      Align = alClient
      BevelOuter = bvNone
      Caption = '00:00:00'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -373
      Font.Name = 'Agency FB'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
end
