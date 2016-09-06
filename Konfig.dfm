object fKonfig: TfKonfig
  Left = 289
  Top = 179
  Width = 520
  Height = 480
  Caption = 'Countdown Timer'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 260
    Height = 29
    Caption = 'COUNTDOWN TIMER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object sBar: TStatusBar
    Left = 0
    Top = 423
    Width = 504
    Height = 19
    Panels = <
      item
        Text = 'Copyright - Rifan Ferryawan'
        Width = 50
      end>
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 40
    Width = 473
    Height = 153
    Caption = 'Event'
    TabOrder = 1
    object Label2: TLabel
      Left = 24
      Top = 32
      Width = 59
      Height = 13
      Caption = 'Nama Event'
    end
    object Label3: TLabel
      Left = 24
      Top = 72
      Width = 69
      Height = 13
      Caption = 'Jenis Kegiatan'
    end
    object Label4: TLabel
      Left = 24
      Top = 112
      Width = 39
      Height = 13
      Caption = 'Tanggal'
    end
    object Label5: TLabel
      Left = 280
      Top = 112
      Width = 19
      Height = 13
      Caption = 'Hari'
    end
    object edNama: TEdit
      Left = 112
      Top = 32
      Width = 337
      Height = 21
      TabOrder = 0
    end
    object edJenis: TEdit
      Left = 112
      Top = 72
      Width = 337
      Height = 21
      TabOrder = 1
    end
    object dtpTgl: TDateTimePicker
      Left = 112
      Top = 112
      Width = 145
      Height = 21
      Date = 41937.440769444450000000
      Format = 'dd MMMM yyyy'
      Time = 41937.440769444450000000
      TabOrder = 2
      OnChange = dtpTglChange
    end
    object edHari: TEdit
      Left = 328
      Top = 112
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 200
    Width = 473
    Height = 97
    Caption = 'Waktu'
    TabOrder = 2
    object Label6: TLabel
      Left = 24
      Top = 32
      Width = 68
      Height = 13
      Caption = 'Setting Waktu'
    end
    object Label7: TLabel
      Left = 128
      Top = 32
      Width = 21
      Height = 13
      Caption = 'JAM'
    end
    object Label8: TLabel
      Left = 200
      Top = 32
      Width = 34
      Height = 13
      Caption = 'MENIT'
    end
    object Label9: TLabel
      Left = 272
      Top = 32
      Width = 32
      Height = 13
      Caption = 'DETIK'
    end
    object lbjam: TLabel
      Left = 344
      Top = 56
      Width = 121
      Height = 22
      Alignment = taCenter
      AutoSize = False
      Caption = '00:00:00'
      Color = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Agency FB'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object SpinEdit1: TSpinEdit
      Left = 128
      Top = 56
      Width = 49
      Height = 22
      MaxValue = 24
      MinValue = 0
      TabOrder = 0
      Value = 0
    end
    object SpinEdit2: TSpinEdit
      Left = 200
      Top = 56
      Width = 49
      Height = 22
      MaxValue = 59
      MinValue = 0
      TabOrder = 1
      Value = 0
    end
    object SpinEdit3: TSpinEdit
      Left = 272
      Top = 56
      Width = 49
      Height = 22
      MaxValue = 59
      MinValue = 0
      TabOrder = 2
      Value = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 16
    Top = 304
    Width = 393
    Height = 113
    Caption = 'Tampilan'
    TabOrder = 3
    object Label10: TLabel
      Left = 24
      Top = 64
      Width = 30
      Height = 13
      Caption = 'Pesan'
    end
    object ckbMon: TCheckBox
      Left = 24
      Top = 32
      Width = 113
      Height = 17
      Caption = 'Aktifkan Monitor 2'
      TabOrder = 0
      OnClick = ckbMonClick
    end
    object ckbTampil: TCheckBox
      Left = 152
      Top = 32
      Width = 145
      Height = 17
      Caption = 'Tampilkan di Monitor 2'
      Enabled = False
      TabOrder = 1
    end
    object mmPesan: TMemo
      Left = 72
      Top = 64
      Width = 305
      Height = 41
      TabOrder = 2
    end
  end
  object btMulai: TBitBtn
    Left = 416
    Top = 312
    Width = 75
    Height = 105
    Caption = 'Mulai'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btMulaiClick
    Kind = bkIgnore
    Layout = blGlyphTop
  end
  object Button1: TButton
    Left = 376
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 336
    Top = 8
    Width = 25
    Height = 25
    BevelOuter = bvNone
    Caption = 'Panel1'
    Color = clBlack
    TabOrder = 6
  end
  object tm: TTimer
    Enabled = False
    OnTimer = tmTimer
    Left = 456
    Top = 8
  end
  object ColorDialog1: TColorDialog
    OnClose = ColorDialog1Close
    Left = 296
    Top = 8
  end
end
