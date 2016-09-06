unit Konfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Spin, Buttons, ExtCtrls;

type
  TfKonfig = class(TForm)
    sBar: TStatusBar;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edNama: TEdit;
    Label3: TLabel;
    edJenis: TEdit;
    Label4: TLabel;
    dtpTgl: TDateTimePicker;
    Label5: TLabel;
    edHari: TEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    GroupBox3: TGroupBox;
    ckbMon: TCheckBox;
    ckbTampil: TCheckBox;
    Label10: TLabel;
    mmPesan: TMemo;
    btMulai: TBitBtn;
    lbjam: TLabel;
    tm: TTimer;
    ColorDialog1: TColorDialog;
    Button1: TButton;
    Panel1: TPanel;
    procedure FormResize(Sender: TObject);
    procedure btMulaiClick(Sender: TObject);
    procedure tmTimer(Sender: TObject);
    procedure ckbMonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dtpTglChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ColorDialog1Close(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fKonfig: TfKonfig;
  j,m,d,x:Integer;
implementation

uses View;

{$R *.dfm}

//fungsi tambahan
function nol(a:Integer):String;
begin
  if a<10 then
    nol:='0'
  else
    nol:='';
end;

procedure TfKonfig.FormResize(Sender: TObject);
begin
  Height:=480;
  Width:=520;
  fKonfig.DefaultMonitor:=dmPrimary;
end;

procedure TfKonfig.btMulaiClick(Sender: TObject);
begin
  if (btMulai.Caption='Mulai') then
  begin
    //untuk perhitungan detik
    j:=SpinEdit1.Value*3600;
    m:=SpinEdit2.Value*60;
    d:=SpinEdit3.Value;
    x:=j+m+d;
    if(x<>0)then
    begin
      btMulai.Kind:=bkCancel;
      btMulai.Caption:='Stop';
      if(ckbMon.Checked=true) then//and (ckbTampil.Checked=true) then
      begin
        fView.Show;
        //fView.Width:=Screen.Monitors[1].Width;
        //fView.Height:=Screen.Monitors[1].Height;
        //fView.Left:=Screen.Monitors[1].Left;
        fView.Left:=Screen.Monitors[0].Left;
        fView.lbJudul.Caption:=edNama.Text;
        fView.lbEvent.Caption:=edJenis.Text;
      end;
      ckbMon.Enabled:=false;
      ckbTampil.Enabled:=false;
      tm.Enabled:=True; //menghidupkan timer
    end;
  end
  else
  begin
    btMulai.Kind:=bkIgnore;
    btMulai.Caption:='Mulai';
    tm.Enabled:=False;  //mematikan timer
    if(ckbMon.Checked=true)then
    begin
      if(ckbTampil.Checked=true)then
      begin
        fView.Close;
      end;
      ckbTampil.Enabled:=true;
    end;
    ckbMon.Enabled:=true;
  end;
end;

procedure TfKonfig.tmTimer(Sender: TObject);
var
  jm,mn,dt,y:Integer;
begin
  x:=x-1;
  jm:=x div 3600;
  y:=x mod 3600;
  mn:=y div 60;
  dt:=y mod 60;
  //untuk menambah digit 0
  lbjam.Caption:=nol(jm)+IntToStr(jm)+':'+nol(mn)+IntToStr(mn)+':'+nol(dt)+IntToStr(dt);
  //pengaturan waktu berjalan pada form view
  if(ckbMon.Checked=true) then//and (ckbTampil.Checked=true) then
  begin
    fView.lbJudul.Caption:=edNama.Text;
    fView.lbEvent.Caption:=edJenis.Text;
    fView.pnWaktu.Caption:=lbjam.Caption;
    fView.Panel3.Caption:=edHari.Text+', '+DateToStr(dtpTgl.Date);
  end;
  //apabila waktu selesai
  if (x=0) then
  begin
    btMulai.Kind:=bkIgnore;
    btMulai.Caption:='Mulai';
    fView.lbSisa.Caption:='';
    //untuk memanipulasi tampilan waktu setelah waktu selesai
    fView.pnWaktu.Font.Size:=140;
    fView.pnWaktu.Caption:='Waktu Habis';
    tm.Enabled:=False;
  end;
end;

procedure TfKonfig.ckbMonClick(Sender: TObject);
begin
  if (ckbMon.Checked=true)then//(Screen.MonitorCount>1) and (ckbMon.Checked=true)then
  begin
    ckbMon.Checked:=true;
    ckbTampil.Enabled:=true;
  end
  else
  begin
    ckbMon.Checked:=false;
    ckbTampil.Checked:=false;
    ckbTampil.Enabled:=false;
  end;
end;

procedure TfKonfig.FormShow(Sender: TObject);
begin
  dtpTgl.Date:=Date;
  edHari.Text:=FormatDateTime('dddd',dtpTgl.Date);
end;

procedure TfKonfig.dtpTglChange(Sender: TObject);
begin
  edHari.Text:=FormatDateTime('dddd',dtpTgl.Date);
end;

procedure TfKonfig.Button1Click(Sender: TObject);
begin
  ColorDialog1.Execute;
end;

procedure TfKonfig.ColorDialog1Close(Sender: TObject);
begin
  Panel1.Color:=ColorDialog1.Color;
end;

end.
