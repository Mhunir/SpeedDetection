unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sSkinProvider, sSkinManager, ExtCtrls, sPanel, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinsdxBarPainter, dxStatusBar,
  dxRibbonStatusBar, cxClasses, dxRibbon, cxControls, dxBar,
  dxSkinsdxNavBar2Painter, dxNavBarCollns, dxNavBarBase, dxNavBar, ImgList,
  ComCtrls, sPageControl, sTabControl, StdCtrls, sLabel, MPlayer, Unit1,
  Menus, DSPack, dxBarExtItems, TeEngine, Series, TeeProcs, Chart, Grids,
  dxGDIPlusClasses, acProgressBar, Math, DirectShow9, DSUtil,
  TFlatButtonUnit,
  DateUtils,
  sDialogs, jpeg, ComObj,
  QuickRpt, QRCtrls, Printers;

type
  TfrmMain = class(TForm)
    sknmngr1: TsSkinManager;
    sknprvdr1: TsSkinProvider;
    dxbrmngr1: TdxBarManager;
    dxbrplctnmn1: TdxBarApplicationMenu;
    dxrbntbRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    barBawah: TdxRibbonStatusBar;
    dxbrmngr1Bar1: TdxBar;
    dxbrmngr1Bar2: TdxBar;
    btnVideoFile: TdxBarLargeButton;
    btnVideoStream: TdxBarLargeButton;
    btnReportDay: TdxBarLargeButton;
    btnReportWeek: TdxBarLargeButton;
    btnReportMonth: TdxBarLargeButton;
    btnHelp: TdxBarLargeButton;
    btnAbout: TdxBarLargeButton;
    barVideoFile: TdxNavBar;
    dxnvbrgrpdxnvbr1Group1: TdxNavBarGroup;
    dxnvbrgrpdxnvbr1Group2: TdxNavBarGroup;
    itemSbyGresik: TdxNavBarItem;
    itemGresikSby: TdxNavBarItem;
    itemPagi: TdxNavBarItem;
    itemSiang: TdxNavBarItem;
    itemSore: TdxNavBarItem;
    pageView: TsPageControl;
    tabPreview: TsTabSheet;
    pnlMainVideo: TsPanel;
    tabProcess: TsTabSheet;
    pnlLabelVideo: TPanel;
    pnlInformation: TsPanel;
    pnlLabelInformation: TPanel;
    pnlLabelSpeed: TPanel;
    pnlSpeed: TsPanel;
    pnlLabelOffender: TPanel;
    pnlLabelMedia: TPanel;
    pnlMedia: TsPanel;
    pnlLabelCapture: TPanel;
    mp1: TMediaPlayer;
    lblVideoName: TLabel;
    lblVideoLength: TLabel;
    lblVideoResolution: TLabel;
    lblVideoLocation: TLabel;
    lblVideoTime: TLabel;
    pnlCapture: TsPanel;
    pnlLabelFrameVideo: TPanel;
    pnlFrameVideo: TsPanel;
    pnlLabelGrayVideo: TPanel;
    pnlLabelThresholdVideo: TPanel;
    pnlGrayVideo: TsPanel;
    pnlThresholdVideo: TsPanel;
    pnlOffender: TsPanel;
    dxBarButton1: TdxBarButton;
    dxbrsbtm1: TdxBarSubItem;
    dxbrlrgbtn1: TdxBarLargeButton;
    dxbrspndt1: TdxBarSpinEdit;
    dxbrmngr1Bar3: TdxBar;
    btnSettingSpeed: TdxBarLargeButton;
    btnSettingThreshold: TdxBarLargeButton;
    dxbrlstm1: TdxBarListItem;
    cbbFiltering: TdxBarCombo;
    dxbrcmb2: TdxBarCombo;
    dxbrsbtm2: TdxBarSubItem;
    edtMaxSpeed: TdxBarEdit;
    dxbrdt2: TdxBarEdit;
    dxbrdt3: TdxBarEdit;
    dxbrdt4: TdxBarEdit;
    dxbrlrgbtn2: TdxBarLargeButton;
    cstmdxbrcmb1: TCustomdxBarCombo;
    dxbrcntnrtm1: TdxBarContainerItem;
    dxbrmgcmb1: TdxBarImageCombo;
    dxbrdtcmb1: TdxBarDateCombo;
    dxbrdtcmb2: TdxBarDateCombo;
    dxbrdtcmb3: TdxBarDateCombo;
    img1: TImage;
    img2: TImage;
    img5: TImage;
    tmrThreshold: TTimer;
    dxbrcmb1: TdxBarCombo;
    mmo1: TMemo;
    imgHasilCapture: TImage;
    dxbrlrgbtn3: TdxBarLargeButton;
    cbbDaily: TdxBarDateCombo;
    cbbWeekly: TdxBarDateCombo;
    dxbrlstm2: TdxBarListItem;
    cbbMonthly: TdxBarCombo;
    cbbWebcamList: TdxBarCombo;
    fltrgrph1: TFilterGraph;
    smplgrbr1: TSampleGrabber;
    fltr1: TFilter;
    vdwndw1: TVideoWindow;
    il1: TImageList;
    imgPlay: TImage;
    imgStop: TImage;
    imgPause: TImage;
    dxbrclrcmb1: TdxBarColorCombo;
    dxbrprgrstm1: TdxBarProgressItem;
    dxbrcntnrtm2: TdxBarContainerItem;
    dxbrcmb3: TdxBarCombo;
    cbbJalur: TdxBarCombo;
    dxbrmngr1Bar4: TdxBar;
    edtKiriAtas: TdxBarEdit;
    edtTengahAtas: TdxBarEdit;
    edtKananAtas: TdxBarEdit;
    edtKiriBawah: TdxBarEdit;
    edtTengahBawah: TdxBarEdit;
    edtKananBawah: TdxBarEdit;
    pm1: TPopupMenu;
    Seeting1: TMenuItem;
    listVIdeo: TListBox;
    dlgOpen1: TOpenDialog;
    edtMeter: TdxBarEdit;
    edtLocation: TdxBarEdit;
    dxbrlstm3: TdxBarListItem;
    tmrJam: TTimer;
    strngrdLaporan: TStringGrid;
    pnlKanan: TPanel;
    dxbrcmb4: TdxBarCombo;
    btn2: TButton;
    listPelanggar: TListBox;
    chtSurabayaGresik: TChart;
    chtGresikSurabaya: TChart;
    seriesSurabayaGresik: TLineSeries;
    seriesGresikSurabaya: TLineSeries;
    seriesJumlahSurabayaGresik: TLineSeries;
    seriesJumlahGresikSurabaya: TLineSeries;
    lstDaftarGambar: TListBox;
    tabViewImage: TsTabSheet;
    imgReport1: TImage;
    imgReport2: TImage;
    imgReport3: TImage;
    imgReport4: TImage;
    imgReport5: TImage;
    imgReport6: TImage;
    imgReport7: TImage;
    imgReport8: TImage;
    imgReport9: TImage;
    imgReport10: TImage;
    imgReport11: TImage;
    imgReport12: TImage;
    imgReport13: TImage;
    imgReport14: TImage;
    imgReport15: TImage;
    imgReport16: TImage;
    imgReport17: TImage;
    imgReport18: TImage;
    imgReport19: TImage;
    imgReport20: TImage;
    imgReport21: TImage;
    imgReport22: TImage;
    imgReport23: TImage;
    imgReport24: TImage;
    imgReport25: TImage;
    imgReport26: TImage;
    imgReport27: TImage;
    imgReport28: TImage;
    imgReport29: TImage;
    imgReport30: TImage;
    btn5: TButton;
    imgNext: TImage;
    lblSpeedCapture: TLabel;
    dxbrmngr1Bar5: TdxBar;
    btnAboutProgram: TdxBarLargeButton;
    lblYellow: TLabel;
    lblLime: TLabel;
    imgSearch: TImage;
    imgExcel: TImage;
    lblSpeed11: TLabel;
    lblSpeed2: TLabel;
    lblSpeed3: TLabel;
    lblSpeed4: TLabel;
    lblSpeed5: TLabel;
    lblSpeed6: TLabel;
    lblSpeed7: TLabel;
    lblSpeed8: TLabel;
    lblSpeed9: TLabel;
    lblSpeed10: TLabel;
    lblSpeed16: TLabel;
    lblSpeed12: TLabel;
    lblSpeed13: TLabel;
    lblSpeed14: TLabel;
    lblSpeed15: TLabel;
    lblSpeed1: TLabel;
    lblSpeed17: TLabel;
    lblSpeed18: TLabel;
    lblSpeed19: TLabel;
    lblSpeed20: TLabel;
    lblSpeed21: TLabel;
    lblSpeed22: TLabel;
    lblSpeed23: TLabel;
    lblSpeed24: TLabel;
    lblSpeed25: TLabel;
    lblSpeed26: TLabel;
    lblSpeed27: TLabel;
    lblSpeed28: TLabel;
    lblSpeed29: TLabel;
    lblSpeed30: TLabel;
    imgBack: TImage;
    procedure FormCreate(Sender: TObject);
    procedure tmrThresholdTimer(Sender: TObject);
    procedure mmo1Change(Sender: TObject);
    procedure btnReportDayClick(Sender: TObject);
    procedure btnReportWeekClick(Sender: TObject);
    procedure btnReportMonthClick(Sender: TObject);
    procedure cbbDailyChange(Sender: TObject);
    procedure cbbWeeklyChange(Sender: TObject);
    procedure btnVideoStreamClick(Sender: TObject);
    procedure imgPlayClick(Sender: TObject);
    procedure imgStopClick(Sender: TObject);
    procedure imgPauseClick(Sender: TObject);
    procedure cbbWebcamListChange(Sender: TObject);
    procedure Seeting1Click(Sender: TObject);
    procedure img1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure img1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure itemSbyGresikClick(Sender: TObject);
    procedure itemGresikSbyClick(Sender: TObject);
    procedure itemPagiClick(Sender: TObject);
    procedure itemSiangClick(Sender: TObject);
    procedure itemSoreClick(Sender: TObject);
    procedure listVIdeoClick(Sender: TObject);
    procedure btnVideoFileClick(Sender: TObject);
    procedure tmrJamTimer(Sender: TObject);
    procedure strngrdLaporanDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure cbbMonthlyChange(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure imgNextClick(Sender: TObject);
    procedure btnAboutProgramClick(Sender: TObject);
    procedure imgExcelClick(Sender: TObject);
    procedure imgSearchClick(Sender: TObject);
    procedure lstDaftarGambarClick(Sender: TObject);
    procedure imgBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    nilaiN, lokasiKamera, waktuRekaman, jenisReport : Integer;
    setKordinat, mulaiHitung, hitungSpeedKiri, hitungSpeedKanan : Boolean;
    bmpMeanSumber , bmpHasilMean : TBitmap;

    pbmpSumberMean , pbmpHasilMean : PByteArray;

    x1,x2,y1,y2 : Integer;
    klikKe : Integer;

    folderJurusan, folderWaktu : string;

    markaAtas, markaBawah : TPoint;
    jalurKiri_atas, jalurKiri_bawah, jalurKanan_atas, jalurKanan_bawah, jalurTengah_atas, jalurTengah_bawah : TPoint;
    centerAwalKiri, centerAkirKiri, centerAwalKanan, centerAkirKanan : TPoint;

    FrMean : array [0..1000,0..1000,0..1000] of byte;
    SysDev : TSysDevEnum;

    //Untuk Speed Jalur  Kiri
    kordKiriAwal, kordKiriAkir : TPoint;
    cekAwalKiri, cekAkirKiri : Boolean;
    hasilSpeedKiri : Double;
    //Untuk Speed Jalur  Kanan
    kordKananAwal, kordKananAkir : TPoint;
    cekAwalKanan, cekAkirKanan : Boolean;
    hasilSpeedKanan : Double;
    //Menampilkan gambar
    urutangambar : Integer;

    procedure ListFileDir(Path: string; FileList: TStrings);
    procedure ListFileDetail(Path, text: string; FileList: TStrings);
    procedure tampilanAwal;
    procedure informasiVideo;
    procedure Filter;
    procedure LineLurus(cnv:TCanvas;x1,y1,x2,y2:Integer;clr:TColor);
    procedure BlobBox(cnv:TCanvas;x1,y1,x2,y2:Integer;clr:TColor);
    procedure TulisSpeed(cnv:TCanvas;x1,y1 : Integer;clr:TColor;speed:Double);
    procedure blobExtractionKiri;
    procedure blobExtractionKanan;
    procedure gambarJalur;
    procedure GetRGB(Col: TColor; var R : Byte);
    procedure gray;
    procedure CaptureImage(x1,y1,x2,y2 : Integer; speed : Double);
    procedure tampilList;
    procedure createFolder;
    procedure tampilGrafik;
    procedure tampilGambar;

    function meanFilter(x,y : Integer):Integer;
    function sauvolaFilter(x,y : Integer):Integer;
    function hasilJarak(x1,y1,x2,y2:Integer) : Double;
    function hasilSpeed(jarak : Double) : Double;
    function PanelToBmp(Panel:TPanel):TBitmap;
    function fileCount(Path: String): Integer;

  end;
var
  frmMain: TfrmMain;

  
implementation

{$R *.dfm}

uses uAbout;

function TfrmMain.fileCount (Path: String): Integer;
var
SearchRec : TSearchRec;
begin
  Result := 0;
  Path := IncludeTrailingBackslash (ExtractFilePath (Path)) + '*.bmp*';
  if FindFirst (Path, faAnyFile, SearchRec) = 0 then
    repeat
      if SearchRec.Attr <> faDirectory then
      Inc (Result);
    until FindNext (SearchRec) <> 0;
end;

procedure TfrmMain.createFolder;
var
  lokasiFolder : string;
begin
  lokasiFolder := edtLocation.Text;
  if not DirectoryExists(lokasiFolder+'Hasil Capture') then
    begin
      CreateDir(lokasiFolder+'Hasil Capture');
      CreateDir(lokasiFolder+'Hasil Report');
      CreateDir(lokasiFolder+'Hasil Capture\Surabaya - Gresik');
      CreateDir(lokasiFolder+'Hasil Capture\Gresik - Surabaya');
    end;
  if not DirectoryExists(lokasiFolder+'Hasil Capture\Surabaya - Gresik\'+FormatDateTime('d mmmmmmmm yyyy',Now)) then
    begin
      CreateDir(lokasiFolder+'Hasil Capture\Surabaya - Gresik\'+FormatDateTime('d mmmmmmmm yyyy',Now));
    end;
  if not DirectoryExists(lokasiFolder+'Hasil Capture\Gresik - Surabaya\'+FormatDateTime('d mmmmmmmm yyyy',Now)) then
    begin
      CreateDir(lokasiFolder+'Hasil Capture\Gresik - Surabaya\'+FormatDateTime('d mmmmmmmm yyyy',Now));
    end;
  if not DirectoryExists(lokasiFolder+'Hasil Report\'+FormatDateTime('d mmmmmmmm yyyy',Now)) then
    begin
      CreateDir(lokasiFolder+'Hasil Report\'+FormatDateTime('d mmmmmmmm yyyy',Now));
    end;

end;

procedure TfrmMain.ListFileDir(Path: string; FileList: TStrings);
var
  SR: TSearchRec;
begin
  if FindFirst(Path + '*.*', faAnyFile, SR) = 0 then
  begin
    repeat
      if (SR.Attr <> faDirectory) then
      begin
        FileList.Add(SR.Name);
      end;
    until FindNext(SR) <> 0;
    FindClose(SR);
  end;
end;

procedure TfrmMain.ListFileDetail(Path, text: string; FileList: TStrings);
var
  SR: TSearchRec;
begin
  if FindFirst(Path + '*.*', faAnyFile, SR) = 0 then
  begin
    repeat
      if (SR.Attr <> faDirectory) then
      begin
        FileList.Add(text + SR.Name);
      end;
    until FindNext(SR) <> 0;
    FindClose(SR);
  end;
end;


procedure TfrmMain.tampilList;
begin
  listVIdeo.Clear;
  case lokasiKamera of
    1: folderJurusan := 'Surabaya - Gresik';
    2: folderJurusan := 'Gresik - Surabaya';
  end;
  case waktuRekaman of
    1: folderWaktu := 'Pagi';
    2: folderWaktu := 'Siang';
    3: folderWaktu := 'Sore'
  end;
  ListFileDir(ExtractFilePath(Application.ExeName)+'\Desember\'+folderJurusan+'\'+folderWaktu+'\', listVIdeo.Items);
end;

procedure TfrmMain.informasiVideo;
var
  sumber, posisi : string;
begin
  sumber := mp1.FileName;
  posisi :='VID';
  lblVideoName.Caption := 'Name : ' + Copy(sumber,Pos(posisi,sumber),Length(sumber)-Pos(posisi,sumber)+1) ;//IntToStr(Pos(posisi,sumber));;//mp1.FileName;
  lblVideoLength.Caption := 'Length : ' + Format ('%2.2d:%2.2d', [(mp1.Length div 1000) div 60, (mp1.Length div 1000) mod 60]);
  lblVideoResolution.Caption := 'Resolution : 1280 x 720';//420 x 240';
  if lokasiKamera = 1 then
    lblVideoLocation.Caption := 'Location : Surabaya-Gresik' else
      lblVideoLocation.Caption := 'Location : Gresik-Surabaya';
  if waktuRekaman = 1 then
    lblVideoTime.Caption := 'Time : Morning' else
  if waktuRekaman = 2 then
    lblVideoTime.Caption := 'Time : Noon' else
  if waktuRekaman = 3 then
    lblVideoTime.Caption := 'Time : Afternoon';

end;

procedure TfrmMain.tampilanAwal;
var
  myYear, myMonth, myDay : Word;
  i, j : Integer;
begin
  with pageView do
    begin
      TabWidth := 100;
    end;
  with pnlLabelVideo do
    begin
      Width := 420;
      Left := 0;//pnlMainVideo.Left;
      Top := 0;
    end;
  with pnlMainVideo do
    begin
      Width := pnlLabelVideo.Width;
      Height := 240;//250;
      Left := 0;
      Top := pnlLabelVideo.Top + pnlLabelVideo.Height + 2//(pnlMainVideo.Height-pnlMainVideo.Height) div 2;
    end;
  with pnlLabelFrameVideo do
    begin
      Left := pnlLabelVideo.Left + pnlLabelVideo.Width + 2;
      Width := pnlLabelVideo.Width;
      Top := pnlLabelVideo.Top;
    end;
  with pnlFrameVideo do
    begin
      Left := pnlLabelFrameVideo.Left;
      Top := pnlMainVideo.Top;
      Width := pnlLabelFrameVideo.Width;
      Height := pnlMainVideo.Height;
    end;
  with pnlLabelGrayVideo do
    begin
      Left := pnlLabelVideo.Left;
      Top := pnlMainVideo.Top + pnlMainVideo.Height + 2;
      Width := pnlLabelVideo.Width;
    end;
  with pnlGrayVideo do
    begin
      Left := pnlLabelGrayVideo.Left;
      Top := pnlLabelGrayVideo.Top + pnlLabelGrayVideo.Height + 2;
      Height := pnlMainVideo.Height;
      Width := pnlLabelGrayVideo.Width;
    end;
  with pnlLabelThresholdVideo do
    begin
      Left := pnlLabelFrameVideo.Left;
      Top := pnlFrameVideo.Top + pnlFrameVideo.Height + 2;
      Width := pnlLabelFrameVideo.Width;
    end;
  with pnlThresholdVideo do
    begin
      Left := pnlLabelThresholdVideo.Left;
      Top := pnlLabelThresholdVideo.Top + pnlLabelThresholdVideo.Height + 2;
      Width := pnlLabelThresholdVideo.Width;
      Height := pnlMainVideo.Height;
    end;
  with pnlLabelMedia do
    begin
      Width :=170;
      Left := tabPreview.Width - Width;
      Top := pnlLabelVideo.Top;
    end;
  with pnlMedia do
    begin
      Top := pnlMainVideo.Top;
      Left := pnlLabelMedia.Left;
      Height := pnlMainVideo.Height div 2;
      Width := pnlLabelMedia.Width;
    end;
  with pnlLabelInformation do
    begin
      Left := pnlLabelFrameVideo.Left + pnlLabelFrameVideo.Width + 2;
      Top := pnlLabelFrameVideo.Top;
      Width := tabPreview.Width - pnlMainVideo.Width - pnlGrayVideo.Width - pnlMedia.Width - 6;
    end;
  with pnlInformation do
    begin
      Left := pnlLabelInformation.Left;
      Top := pnlLabelInformation.Top + pnlLabelInformation.Height + 2;
      Height := pnlMainVideo.Height div 2;
      Width := pnlLabelInformation.Width;
    end;
  //Atur Label Information
  lblVideoName.Top := (pnlInformation.Height div 6) div 2 - 2;
  lblVideoLength.Top := lblVideoName.Top + lblVideoName.Height +lblVideoName.Top;
  lblVideoResolution.Top := lblVideoLength.Top + lblVideoName.Height + lblVideoName.Top;
  lblVideoLocation.Top := lblVideoResolution.Top + lblVideoName.Height + lblVideoName.Top;
  lblVideoTime.Top := lblVideoLocation.Top + lblVideoName.Height + lblVideoName.Top;

  with pnlLabelSpeed do
    begin
      Left := pnlLabelInformation.Left;
      Top := pnlInformation.Top + pnlInformation.Height + 2;
      Width := pnlLabelInformation.Width ;//200;
    end;
  with pnlSpeed do
    begin
      Left := pnlLabelSpeed.Left;
      Top := pnlLabelSpeed.Top + pnlLabelSpeed.Height + 2;
      Width := pnlLabelSpeed.Width;
      Height := (tabPreview.Height - pnlLabelSpeed.Height - pnlInformation.Height - pnlLabelInformation.Height - 10 - pnlLabelSpeed.Height) div 2;
    end;
  with pnlLabelCapture do
    begin
      Left := pnlLabelSpeed.Left;
      Top := pnlSpeed.Top + pnlSpeed.Height + 2;
      Width := pnlLabelSpeed.Width;
    end;
  with pnlCapture do
    begin
      Left := pnlLabelCapture.Left;
      Top := pnlLabelCapture.Top + pnlLabelCapture.Height + 2;
      Width := pnlLabelCapture.Width;
      Height := pnlSpeed.Height;
    end;
  with pnlLabelOffender do
    begin
      Left := pnlLabelSpeed.Left + pnlLabelSpeed.Width + 2;
      Top := pnlLabelSpeed.Top;
      Width := (tabPreview.Width - pnlLabelSpeed.Left - pnlLabelSpeed.Width - 2);
    end;
  with pnlOffender do
    begin
      Left := pnlLabelOffender.Left;
      Top := pnlLabelOffender.Top + pnlLabelOffender.Height + 2;
      Width := pnlLabelOffender.Width;
      Height := (tabPreview.Height - 7 - pnlInformation.Height - pnlLabelInformation.Height - pnlLabelOffender.Height);
      with listVIdeo do
        begin
          Width := pnlOffender.Width - 6;
          Height := pnlOffender.Height - 6;
          Left := 3;
          Top := 3;
        end;
      mmo1.Top := listVIdeo.Top + listVIdeo.Height + 3;
      mmo1.Height := 200;
      mmo1.Left := listVIdeo.Left;
      mmo1.Width := listVIdeo.Width;

    end;

  //Tampilan Tanggal
  cbbWeekly.DateOnStart := bdsToday;//cbbDaily.Date + 6;
  cbbDaily.Date := cbbWeekly.Date - 6;
  DecodeDate(cbbDaily.Date, myYear, myMonth, myDay);
  cbbMonthly.ItemIndex := myMonth - 1;

  with imgHasilCapture do
    begin
      Left := (pnlCapture.Width - 100) div 2;
      Top := (pnlCapture.Height - 100) div 2;
    end;

  with imgPlay do
    begin
      Left := (pnlMedia.Width - (imgPlay.Width * 3)) div 2;
      Top := (pnlMedia.Height - imgPlay.Height) div 2;
    end;

  with imgPause do
    begin
      Left := imgPlay.Left + imgPlay.Width;
      Top := imgPlay.Top;
    end;

  with imgStop do
    begin
      Left := imgPause.Left + imgPause.Width;
      Top := imgPlay.Top;
    end;

  edtLocation.Text := ExtractFilePath(Application.ExeName);

  barBawah.Panels[2].Width := 100;
  barBawah.Panels[1].Width := 150;
  barBawah.Panels[0].Width := frmMain.Width - 250;

  with strngrdLaporan do
    begin
      Color := $303030;
      FixedColor := $636363;
      ColWidths[0] := 50;
      for i := 1 to 4 do
        begin
          ColWidths[i] := (tabProcess.Width - pnlKanan.Width - 58) div 4;
        end;
      Cells[0,0] := 'No';
      Cells[1,0] := 'Date';
      Cells[2,0] := 'Location';
      Cells[3,0] := 'Number of Offenders';
      Cells[4,0] := 'Speed Average (Km/h)';
    end;
  pnlKanan.Color := $303030;
  chtSurabayaGresik.Color := $303030;
  chtGresikSurabaya.Color := $303030;

  with imgNext do
    begin
      Left := (tabViewImage.Width - Width - 10);
      Top := -19;//(tabViewImage.Height - Height - 10) + (28);
    end;

  with imgBack do
    begin
      Left := imgNext.Left - imgBack.Width;
      Top := imgNext.Top;
    end;

  with lblSpeedCapture do
    begin
      Width := pnlSpeed.Width - 2;
      Left := 1;
      Top := Height div 2 - 10;
    end;

  with btnAboutProgram do
    begin
      Width := dxRibbon1.Width - dxbrmngr1Bar5.DockedLeft - 14;
    end;  
  with lblLime do
    begin
      Left := imgExcel.Left + imgExcel.Width + 15;//(chtSurabayaGresik.Left + chtSurabayaGresik.Width) - 140;
      Top := imgExcel.Top + ((imgExcel.Height - (2 * lblLime.Height)) div 2);//chtSurabayaGresik.Top - 20;
    end;
  with lblYellow do
    begin
      Left := lblLime.Left;
      Top := lblLime.Top + lblLime.Height;//chtSurabayaGresik.Top - 40;
    end;
  with imgSearch do
    begin
      Left := 20;
      Top := 20;
    end;
  with imgExcel do
    begin
      Left := imgSearch.Left + imgSearch.Width + 20;
      Top := imgSearch.Top;
    end;
  
end;

procedure TfrmMain.filter;
var
  x,y : Integer;
begin
  inc(nilaiN);
  bmpMeanSumber := TBitmap.Create;
  bmpMeanSumber := img2.Picture.Bitmap;

  bmpHasilMean:=TBitmap.Create;
  bmpHasilMean.Height:=bmpMeanSumber.Height;
  bmpHasilMean.Width:=bmpMeanSumber.Width;
  bmpHasilMean.PixelFormat:=pf8bit;

  for y:=0 to pnlMainVideo.Height -1 do
    begin
      pbmpSumberMean := bmpMeanSumber.Scanline[y];
      for x:=0 to pnlMainVideo.Width -1 do
        begin
          FrMean[nilaiN,x,y]:=pbmpSumberMean[3*x];
        end;
    end;     

  for y:=1 to pnlMainVideo.Height -2 do
    begin
      pbmpSumberMean := bmpMeanSumber.Scanline[y];
      for x:=1 to pnlMainVideo.Width -2 do
        begin
          if cbbFiltering.ItemIndex = 0 then
            FrMean[nilaiN,x,y] := meanFilter(x,y) else
          if cbbFiltering.ItemIndex = 1 then
            //Sauvola
            FrMean[nilaiN,x,y] := sauvolaFilter(x,y) else
          if cbbFiltering.ItemIndex = 2 then
            //None
            FrMean[nilaiN,x,y]:= FrMean[nilaiN,x,y];
        end;
    end;


  if nilaiN>1 then
    begin
      for y:=1 to pnlMainVideo.Height -2 do
        begin
          pbmpHasilMean:=bmpHasilMean.ScanLine[y];
          for x:=1 to pnlMainVideo.Width -2 do
            begin
              pbmpHasilMean[x]:=Abs(FrMean[nilaiN,x,y]-FrMean[nilaiN-1,x,y]);
              if pbmpHasilMean[x]<60 then pbmpHasilMean[x]:=0
                else pbmpHasilMean[x]:=255;//Fungsi Threshold
            end;
        end;
      img5.Picture.Bitmap.Assign(bmpHasilMean);
    end;                                       
end;

procedure TfrmMain.LineLurus(cnv:TCanvas;x1,y1,x2,y2:Integer;clr:TColor);
begin
  with cnv do
    begin
      Pen.Color := clr;
      MoveTo(x1,y1);
      LineTo(x2,y2);
    end;
end;

procedure TfrmMain.BlobBox(cnv:TCanvas;x1,y1,x2,y2:Integer;clr:TColor);
begin
  with cnv do
    begin
      Pen.Color := clr;
      Brush.Style := bsClear;
      Font.Color := clr;
      Rectangle(x1,y1,x2,y2);
    end;
end;

procedure TfrmMain.TulisSpeed(cnv:TCanvas;x1,y1:Integer;clr:TColor;speed:Double);
begin
  with cnv do
    begin
      Pen.Color := clr;
      Brush.Style := bsClear;
      TextOut(x1,y1,FormatFloat('0.00'+'Km/h',speed));
    end;
end;

procedure TfrmMain.gambarJalur;
begin
  //Menampilkan Gambar Jalur
  if cbbJalur.ItemIndex = 0 then
    begin
      LineLurus(img5.Canvas,markaAtas.X,markaAtas.Y,markaBawah.X,markaBawah.Y,clGray);
      LineLurus(img5.Canvas,jalurKiri_atas.X,jalurKiri_atas.Y,jalurTengah_atas.X,jalurTengah_atas.Y,clRed);
      LineLurus(img5.Canvas,jalurKiri_bawah.X,jalurKiri_bawah.Y,jalurTengah_bawah.X,jalurTengah_bawah.Y,clRed);
      LineLurus(img5.Canvas,jalurTengah_atas.X,jalurTengah_atas.Y,jalurKanan_atas.X,jalurKanan_atas.Y,clYellow);
      LineLurus(img5.Canvas,jalurTengah_bawah.X,jalurTengah_bawah.Y,jalurKanan_bawah.X,jalurKanan_bawah.Y,clYellow);
    end;
end;

procedure TfrmMain.blobExtractionKiri;
var
  colCek : TColor;
  x,y : Integer;
  RKiri, RPojok : Byte;
  awalKiri, akirKiri : TPoint;//Untuk BLOB
  detX_AwalKiri, detY_AwalKiri: Boolean;//Untuk BLOB
  speedKiri, jarakKiri : Double;
  adaKiri: Boolean;
begin
  //KIRIIIIIIIIIIII
  awalKiri.X := 0;
  awalKiri.Y := 0;
  akirKiri.X := 0;
  akirKiri.Y := 0;
  detY_AwalKiri := True;
  detX_AwalKiri := True;

  {Untuk BLOB Jalur Kiri}
  //Y
  for y := jalurTengah_atas.Y+1 to jalurTengah_bawah.Y-1 do
    for x := jalurKiri_atas.X+1 to jalurTengah_atas.X-1 do
      begin
        colcek := img5.Canvas.Pixels[x,y];
        GetRGB(colcek, RKiri);
        if RKiri = 255 then
          begin
            if (detY_AwalKiri = True) then
              begin
                awalKiri.Y := y;
                detY_AwalKiri := False;
              end;
            akirKiri.Y := y;
          end;
      end;

  //X
  for x := jalurKiri_atas.X+1 to jalurTengah_atas.X-1 do
    for y := jalurTengah_atas.Y+1 to jalurTengah_bawah.Y-1 do
      begin
        colcek := img5.Canvas.Pixels[x,y];
        GetRGB(colcek, RKiri);
        if RKiri = 255 then
          begin
            if (detX_AwalKiri = True) then
              begin
                awalKiri.X := x;
                detX_AwalKiri := False;
              end;
            akirKiri.X := x;
          end;
      end;
  if (awalKiri.X<>0)and(awalKiri.Y<>0)and(akirKiri.X<>0)and(akirKiri.Y<>0) then
    begin
      BlobBox(img5.Canvas,awalKiri.X-5,awalKiri.Y-5,akirKiri.X+5,akirKiri.Y+5,clLime);
      BlobBox(img1.Canvas,awalKiri.X-5,awalKiri.Y-5,akirKiri.X+5,akirKiri.Y+5,clLime);
      if hasilSpeedKiri > 0 then
        TulisSpeed(img5.Canvas,awalKiri.X,awalKiri.Y,clLime,hasilSpeedKiri);
    end;
  {Untuk Kordinat Awal Kiri}
  colCek := img5.Canvas.Pixels[1,1];
  GetRGB(colCek,RPojok);
  if (RPojok = 0)and(cekAwalKiri = True) then
    begin
      //Y
      for y := jalurTengah_atas.Y+1 to jalurTengah_bawah.Y-1 do
        for x := jalurKiri_atas.X+1 to jalurTengah_atas.X-1 do
          begin
            colcek := img5.Canvas.Pixels[x,y];
            GetRGB(colcek, RKiri);
            if (cekAwalKiri = True)and(RKiri = 255) then
              begin
                kordKiriAwal.Y := y;
              end;
          end;
      //X
      if kordKiriAwal.Y <> 0 then
        for x := jalurKiri_atas.X+1 to jalurTengah_atas.X-1 do
          begin
            colcek := img5.Canvas.Pixels[x,kordKiriAwal.Y];
            GetRGB(colcek, RKiri);
            if (cekAwalKiri = True)and(RKiri = 255) then
              begin
                kordKiriAwal.X := x;
                cekAwalKiri := False;
                cekAkirKiri := True;
                Break;
              end;
          end;
    end;
  {Untuk Kordinat Akir Kiri}
  if cekAkirKiri = True then
    begin
      //Y
      for y := kordKiriAwal.Y+1 to jalurTengah_bawah.Y-1 do
        for x := jalurKiri_atas.X+1 to jalurTengah_atas.X-1 do
          begin
            colcek := img5.Canvas.Pixels[x,y];
            GetRGB(colcek, RKiri);
            if (cekAkirKiri = True)and(RKiri = 255) then
              begin
                kordKiriAkir.Y := y;
              end;
          end;
      //X
      if kordKiriAkir.Y <> 0 then
        for x := jalurKiri_atas.X+1 to jalurTengah_atas.X-1 do
          begin
            colcek := img5.Canvas.Pixels[x,kordKiriAkir.Y];
            GetRGB(colcek, RKiri);
            if (cekAkirKiri = True)and(RKiri = 255) then
              begin
                kordKiriAkir.X := x;
                cekAkirKiri := False;
                jarakKiri := hasilJarak(kordKiriAwal.X,kordKiriAwal.Y,kordKiriAkir.X,kordKiriAkir.Y);
                speedKiri := hasilSpeed(jarakKiri);
                hasilSpeedKiri := speedKiri;
                TulisSpeed(img5.Canvas,awalKiri.X,awalKiri.Y,clLime,speedKiri);
                lblSpeedCapture.Caption := FormatFloat('0.00',hasilSpeedKiri) + #10#13 + 'Km/H';
                if hasilSpeedKiri > StrToInt(edtMaxSpeed.Text) then
                  CaptureImage(kordKiriAkir.X-25,kordKiriAkir.Y-50,kordKiriAkir.X+35,kordKiriAkir.Y+25, hasilSpeedKiri);
                mmo1.Lines.Add(IntToStr(kordKiriAwal.X)+'-'+IntToStr(kordKiriAwal.Y));
                mmo1.Lines.Add(IntToStr(kordKiriAkir.X)+'-'+IntToStr(kordKiriAkir.Y));
                mmo1.Lines.Add(FormatFloat('Kiri : '+'0.00' + ' Km/h',hasilSpeedKiri));
                Break;
              end;
          end;
    end;

  //Reset jalur kiri untuk kembali menghitung speed
  if (not cekAwalKiri)and(not cekAkirKiri) then
    begin
      adaKiri := False;
      for y := jalurTengah_atas.Y+1 to jalurTengah_bawah.Y-1 do
        for x := jalurKiri_atas.X+1 to jalurTengah_atas.X-1 do
          begin
            colcek := img5.Canvas.Pixels[x,y];
            GetRGB(colcek, RKiri);
            if (RKiri = 255) then
              begin
                adaKiri := True;
                Break;
              end;
          end;
      if not adaKiri then
        begin
          cekAwalKiri := True;
          cekAkirKiri := True;
          hasilSpeedKiri := 0;

        end;
    end;
end;

procedure TfrmMain.blobExtractionKanan;
var
  colCek : TColor;
  x,y : Integer;
  RKanan, RPojok : Byte;
  awalKanan, akirKanan : TPoint;//Untuk BLOB
  detX_AwalKanan, detY_AwalKanan : Boolean;//Untuk BLOB
  speedKanan, jarakKanan : Double;
  adaKanan : Boolean;
begin      
  //Untuk BLOB
  awalKanan.X := 0;
  awalKanan.Y := 0;
  akirKanan.X := 0;
  akirKanan.Y := 0;
  detY_AwalKanan := True;
  detX_AwalKanan := True;

  {Untuk BLOB Jalur Kanan}
  //Y
  for y := jalurTengah_atas.Y+1 to jalurTengah_bawah.Y-1 do
    for x := jalurTengah_atas.X+1 to jalurKanan_atas.X-1 do
      begin
        colcek := img5.Canvas.Pixels[x,y];
        GetRGB(colcek, RKanan);
        if RKanan = 255 then
          begin
            if (detY_AwalKanan = True) then
              begin
                awalKanan.Y := y;
                detY_AwalKanan := False;
              end;
            akirKanan.Y := y;
          end;
      end;

  //X
  for x := jalurTengah_atas.X+1 to jalurKanan_atas.X-1 do
    for y := jalurTengah_atas.Y+1 to jalurTengah_bawah.Y-1 do
      begin
        colcek := img5.Canvas.Pixels[x,y];
        GetRGB(colcek, RKanan);
        if RKanan = 255 then
          begin
            if (detX_AwalKanan = True) then
              begin
                awalKanan.X := x;
                detX_AwalKanan := False;
              end;
            akirKanan.X := x;
          end;
      end;
  if (awalKanan.X<>0)and(awalKanan.Y<>0)and(akirKanan.X<>0)and(akirKanan.Y<>0) then
    begin
      BlobBox(img5.Canvas,awalKanan.X-5,awalKanan.Y-5,akirKanan.X+5,akirKanan.Y+5,clLime);
      BlobBox(img1.Canvas,awalKanan.X-5,awalKanan.Y-5,akirKanan.X+5,akirKanan.Y+5,clLime);
      if hasilSpeedKanan > 0 then
        TulisSpeed(img5.Canvas,awalKanan.X,awalKanan.Y,clLime,hasilSpeedKanan);
    end;
  {Untuk Kordinat Awal Kanan}
  colCek := img5.Canvas.Pixels[1,1];
  GetRGB(colCek,RPojok);
  if (RPojok = 0)and(cekAwalKanan = True) then
    begin
      //Y
      for y := jalurTengah_atas.Y+1 to jalurTengah_bawah.Y-1 do
        for x := jalurTengah_atas.X+1 to jalurKanan_atas.X-1 do
          begin
            colcek := img5.Canvas.Pixels[x,y];
            GetRGB(colcek, RKanan);
            if (cekAwalKanan = True)and(RKanan = 255) then
              begin
                kordKananAwal.Y := y;
              end;
          end;
      //X
      if kordKananAwal.Y <> 0 then
        for x := jalurTengah_atas.X+1 to jalurKanan_atas.X-1 do
          begin
            colcek := img5.Canvas.Pixels[x,kordKananAwal.Y];
            GetRGB(colcek, RKanan);
            if (cekAwalKanan = True)and(RKanan = 255) then
              begin
                kordKananAwal.X := x;
                cekAwalKanan := False;
                cekAkirKanan := True;
                Break;
              end;
          end;
    end;
  {Untuk Kordinat Akir Kanan}
  if cekAkirKanan = True then
    begin
      //Y
      for y := kordKananAwal.Y+1 to jalurTengah_bawah.Y-1 do
        for x := jalurTengah_atas.X+1 to jalurKanan_atas.X-1 do
          begin
            colcek := img5.Canvas.Pixels[x,y];
            GetRGB(colcek, RKanan);
            if (cekAkirKanan = True)and(RKanan = 255) then
              begin
                kordKananAkir.Y := y;
              end;
          end;
      //X
      if kordKananAkir.Y <> 0 then
        for x := jalurTengah_atas.X+1 to jalurKanan_atas.X-1 do
          begin
            colcek := img5.Canvas.Pixels[x,kordKananAkir.Y];
            GetRGB(colcek, RKanan);
            if (cekAkirKanan = True)and(RKanan = 255) then
              begin
                kordKananAkir.X := x;
                cekAkirKanan := False;
                jarakKanan := hasilJarak(kordKananAwal.X,kordKananAwal.Y,kordKananAkir.X,kordKananAkir.Y);
                speedKanan := hasilSpeed(jarakKanan);
                hasilSpeedKanan := speedKanan;
                TulisSpeed(img5.Canvas,awalKanan.X,awalKanan.Y,clLime,speedKanan);
                lblSpeedCapture.Caption := FormatFloat('0.00',hasilSpeedKanan) + #10#13 + 'Km/H';
                if hasilSpeedKanan > StrToInt(edtMaxSpeed.Text) then
                  CaptureImage(kordKananAkir.X-25,kordKananAkir.Y-50,kordKananAkir.X+35,kordKananAkir.Y+25, hasilSpeedKanan);
                mmo1.Lines.Add(IntToStr(kordKananAwal.X)+'-'+IntToStr(kordKananAwal.Y));
                mmo1.Lines.Add(IntToStr(kordKananAkir.X)+'-'+IntToStr(kordKananAkir.Y));
                mmo1.Lines.Add(FormatFloat('Kanan : '+'0.00' + ' Km/h',hasilSpeedKanan));
                Break;
              end;
          end;
    end;

  //Reset jalur Kanan untuk kembali menghitung speed
  if (not cekAwalKanan)and(not cekAkirKanan) then
    begin
      adaKanan := False;
      for y := jalurTengah_atas.Y+1 to jalurTengah_bawah.Y-1 do
        for x := jalurTengah_atas.X+1 to jalurKanan_atas.X-1 do
          begin
            colcek := img5.Canvas.Pixels[x,y];
            GetRGB(colcek, RKanan);
            if (RKanan = 255) then
              begin
                adaKanan := True;
                Break;
              end;
          end;
      if not adaKanan then
        begin
          cekAwalKanan := True;
          cekAkirKanan := True;
          hasilSpeedKanan := 0;

        end;
    end;
end;

procedure TfrmMain.GetRGB(Col: TColor; var R:Byte);
var
  Color: $0..$FFFFFFFF;
begin
  Color := ColorToRGB(Col);
  R := ($000000FF and Color);
end;

procedure GetGrayscaleOf(ASrc, AGray: TBitmap);
var
  x, y: Integer;
  vLineSrc  : PRGBTriple;
  vLineGray : PRGBTriple;
  vGrayValue: Byte;
begin
  // make sure the source and destination have 24bit color format
  ASrc.PixelFormat := pf24bit;
  AGray.PixelFormat := pf24bit;

  // make the target to the same dimension with the source
  AGray.Width := ASrc.Width;
  AGray.Height := ASrc.Height;

  for y := 0 to AGray.Height-1 do
  begin
	// get the pointer to the first pixel of the y-th row of the source bitmap
	vLineSrc  := ASrc.ScanLine[y];
	// get the pointer to the first pixel of the y-th row of the grayscale bitmap
	vLineGray := AGray.ScanLine[y];
	
	// iterate the pixels
	for x := 0 to AGray.Width-1 do
	begin
	  // calculate the luminance of the color
	  vGrayValue := Round(0.3 * vLineSrc^.rgbtRed
						  + 0.59 * vLineSrc^.rgbtGreen
						  + 0.11 * vLineSrc^.rgbtBlue);

	  // same values of red, green, blue will result in grayscale color			  
	  vLineGray^.rgbtRed  := vGrayValue;
	  vLineGray^.rgbtGreen:= vGrayValue;
	  vLineGray^.rgbtBlue := vGrayValue;

	  // move to the next pixel
	  Inc(vLineSrc);
	  Inc(vLineGray);
	end;
  end;
end;

procedure TfrmMain.gray;
var
  vSrc : TBitmap;
  vGray: TBitmap;
begin
  if img1.Picture.Graphic=nil then
	// when there is no source picture shown, raise exception
	raise Exception.Create('No source image currently selected');

  vSrc := TBitmap.Create;
  try
	// set pixel format of the bitmap to 24bits
	vSrc.PixelFormat := pf24bit;

	// transfer the graphic currently displayed in Image1 to our source bitmap
	vSrc.Width  := img1.Picture.Graphic.Width;
	vSrc.Height := img1.Picture.Graphic.Height;
	vSrc.Canvas.Draw(0, 0, img1.Picture.Graphic);

	// start getting the grayscale version of the source image
	vGray := TBitmap.Create;
	try
	  // call the routine that does the grayscale conversion
	  GetGrayscaleOf(vSrc, vGray);

	  // show the grayscale version
	  img2.Picture.Graphic := vGray;
	finally
	  vGray.Free;
	end;
  finally
	vSrc.Free;
  end;
end;

function TfrmMain.meanFilter(x,y : Integer):Integer;
var
  hasilMean : Integer;
begin
  //Mulai dari kanan (x+1,y)
  hasilMean := (FrMean[nilaiN,x,y] + FrMean[nilaiN,x+1,y] + FrMean[nilaiN,x+1,y+1] + FrMean[nilaiN,x,y+1]
                  + FrMean[nilaiN,x-1,y+1] + FrMean[nilaiN,x-1,y] + FrMean[nilaiN,x-1,y-1]
                  + FrMean[nilaiN,x,y-1] + FrMean[nilaiN,x+1,y-1] ) div 9;

  Result := hasilMean;
end;

function TfrmMain.sauvolaFilter(x,y : Integer):Integer;
var
  deviasi : Double;
  jumlah, jumlahKuadrat : Double;
  valueNiblack : array [1..9] of Integer;
  i : Integer;
begin
  jumlah := 0;
  valueNiblack[1] := FrMean[nilaiN,x+1,y];
  valueNiblack[2] := FrMean[nilaiN,x+1,y+1];
  valueNiblack[3] := FrMean[nilaiN,x,y+1];
  valueNiblack[4] := FrMean[nilaiN,x-1,y-1];
  valueNiblack[5] := FrMean[nilaiN,x-1,y];
  valueNiblack[6] := FrMean[nilaiN,x-1,y-1];
  valueNiblack[7] := FrMean[nilaiN,x1,y-1];
  valueNiblack[8] := FrMean[nilaiN,x-1,y+1];
  valueNiblack[9] := FrMean[nilaiN,x,y];
  jumlah := Sqr(SumInt(valueNiblack))/9;

  jumlahKuadrat := 0;
  for i := 1 to 9 do
    jumlahKuadrat := jumlahKuadrat + Sqr(valueNiblack[i]);

  deviasi := Sqrt((jumlahKuadrat-jumlah)/8);

  Result := Round(meanFilter(x,y) * Abs(1 + (0.34*((deviasi/128)-1))) );
end;

function TfrmMain.hasilJarak(x1,y1,x2,y2:Integer) : Double;
var
  jarak : Double;
begin
  Result := 0;
  jarak := Sqrt( Sqr(Abs(x1-x2))+Sqr(Abs(y1-y2)) );//Dalam Pixel
  Result := jarak;
end;

function TfrmMain.hasilSpeed(jarak : Double) : Double;
var
  waktuTimer,panjangPixel, panjangMeter, satuanMeter, speed, jarakMeter : Double;
begin
  Result := 0;
  waktuTimer := 1000 / tmrThreshold.Interval;
  panjangMeter := StrToFloat(edtMeter.Text);//Panjang Marka + Cela (Meter)
  panjangPixel := hasilJarak(markaAtas.X, markaAtas.Y, markaBawah.X, markaBawah.Y);//Pixel marka tengah
  satuanMeter := panjangPixel / panjangMeter;//Pixel/Meter
  jarakMeter := jarak / satuanMeter;
  speed := jarakMeter * waktuTimer * 3.6;
  Result := speed;
end;

function TfrmMain.PanelToBmp(Panel:TPanel):TBitmap;
var
  bmp : tBitmap;
  DC  : HDC;
begin
  bmp := tBitmap.Create;
  bmp.width := Panel.Width;
  bmp.Height := Panel.Height;
  DC := GetDc ( Panel.Handle );
  bmp.Canvas.Pen.Color:=clLime;
  Bitblt(bmp.canvas.handle,0,0,Panel.Width,Panel.Height,Dc,0,0,srccopy);
  Releasedc (Panel.handle,dc);
  result := bmp;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  tampilanAwal;
  createFolder;
  mp1.Open;
  mp1.DisplayRect:=Rect(0,0,pnlMainVideo.Width,pnlMainVideo.Height);
  klikKe := 0;
  lokasiKamera := 1;
  waktuRekaman := 1;
  folderJurusan := 'Surabaya - Gresik';
  jenisReport := 1;
  kordKiriAwal.X := 0;
  kordKiriAwal.Y := 0;
  kordKiriAkir.X := 0;
  kordKiriAkir.Y := 0;
  cekAwalKiri := True;
  cekAkirKiri := False;
  hasilSpeedKiri := 0;

  kordKananAwal.X := 0;
  kordKananAwal.Y := 0;
  kordKananAkir.X := 0;
  kordKananAkir.Y := 0;
  cekAwalKanan := True;
  cekAkirKanan := False;
  hasilSpeedKanan := 0;

  //Titik Jalur
  jalurKiri_atas.X := 94;//59;
  jalurKiri_atas.Y := 114;//158;
  jalurKiri_bawah.X := 24;//22;
  jalurKiri_bawah.Y := 216;//217;

  jalurTengah_atas.X := 170;//170;
  jalurTengah_atas.Y := 114;//158;
  jalurTengah_bawah.X := 172;//170;
  jalurTengah_bawah.Y := 216;//217;

  jalurKanan_atas.X := 273;//313;
  jalurKanan_atas.Y := 114;//158;
  jalurKanan_bawah.X := 358;//363;
  jalurKanan_bawah.Y := 216;//217;

  markaAtas.X := jalurTengah_atas.X;//170;
  markaAtas.Y := jalurTengah_atas.Y;//158;
  markaBawah.X := jalurTengah_bawah.X;//170;
  markaBawah.Y := jalurTengah_bawah.Y;//217;

  edtKiriAtas.Text := '('+IntToStr(jalurKiri_atas.X)+','+IntToStr(jalurKiri_atas.Y)+')';
  edtKiriBawah.Text := '('+IntToStr(jalurKiri_bawah.X)+','+IntToStr(jalurKiri_bawah.Y)+')';
  edtTengahAtas.Text := '('+IntToStr(jalurTengah_atas.X)+','+IntToStr(jalurTengah_atas.Y)+')';
  edtTengahBawah.Text := '('+IntToStr(jalurTengah_bawah.X)+','+IntToStr(jalurTengah_bawah.Y)+')';
  edtKananAtas.Text := '('+IntToStr(jalurKanan_atas.X)+','+IntToStr(jalurKanan_atas.Y)+')';
  edtKananBawah.Text := '('+IntToStr(jalurKanan_bawah.X)+','+IntToStr(jalurKanan_bawah.Y)+')';


  mulaiHitung := True;
  urutangambar := 0;
end;

procedure TfrmMain.CaptureImage(x1,y1,x2,y2 : Integer; speed : Double);
var
  capture : TBitmap;
begin
  capture := PanelToBmp(pnlMainVideo);
  imgHasilCapture.Canvas.CopyRect(Rect(0,0,100,100),capture.Canvas,Rect(x1,y1,x2,y2));
  imgHasilCapture.Picture.SaveToFile(ExtractFilePath(Application.ExeName)+'Hasil Capture\'+folderJurusan+'\'+FormatDateTime('d mmmmmmmm yyyy',Now)+'\'+FormatDateTime('ddmmyy',Now)+'_'+FormatDateTime('hhnnss',Now)+'_('+FormatFloat('0.00',speed)+').bmp');
end;

procedure TfrmMain.tmrThresholdTimer(Sender: TObject);
begin
  img1.Picture.Bitmap.Assign(PanelToBmp(pnlMainVideo));
  gray;
  Filter;
  if mulaiHitung then
    begin
      gambarJalur;
      blobExtractionKiri;
      blobExtractionKanan;
    end;
  if mp1.Position >= mp1.Length then
    begin
      mp1.Stop;
      nilaiN := 1;
      tmrThreshold.Enabled := False;
      imgPlay.Enabled := True;
    end;
                                     
end;

procedure TfrmMain.mmo1Change(Sender: TObject);
begin
  mmo1.Lines.SaveToFile('Hasilnya.txt');
end;

procedure TfrmMain.btnReportDayClick(Sender: TObject);
begin
  jenisReport := 1;
  listPelanggar.Clear;
  cbbDaily.Enabled := True;
  cbbWeekly.Enabled := False;
  cbbMonthly.Enabled := False;
  cbbDaily.Date := EncodeDate(YearOf(Now), MonthOf(Now), DayOf(Now));
  cbbWeekly.Date := cbbDaily.Date + 6;//EncodeDate(YearOf(Now), MonthOf(Now), DayOf(Now) + 6);
  pageView.ActivePage := tabProcess;   
end;

procedure TfrmMain.btnReportWeekClick(Sender: TObject);
begin
  jenisReport := 2;
  listPelanggar.Clear;
  cbbDaily.Enabled := True;
  cbbWeekly.Enabled := True;
  cbbMonthly.Enabled := False;
  cbbWeekly.Date := EncodeDate(YearOf(Now), MonthOf(Now), DayOf(Now));
  cbbDaily.Date := cbbWeekly.Date-6;//EncodeDate(YearOf(Now), MonthOf(Now), DayOf(Now) - 6);
  pageView.ActivePage := tabProcess;
end;

procedure TfrmMain.btnReportMonthClick(Sender: TObject);
begin
  jenisReport := 3;
  listPelanggar.Clear;
  cbbDaily.Enabled := False;
  cbbWeekly.Enabled := False;
  cbbMonthly.Enabled := True;
  cbbDaily.Date := EncodeDate(2014,cbbMonthly.ItemIndex+1,1);
  cbbWeekly.Date := EncodeDate(2014,cbbMonthly.ItemIndex+1,DayOfTheMonth(EndOfAMonth(2014,cbbMonthly.ItemIndex+1)));
  pageView.ActivePage := tabProcess;
end;

procedure TfrmMain.cbbDailyChange(Sender: TObject);
begin
  if jenisReport = 2 then
    cbbWeekly.Date := cbbDaily.Date + 6;
end;

procedure TfrmMain.cbbWeeklyChange(Sender: TObject);
begin
  if jenisReport = 2 then
    cbbDaily.Date := cbbWeekly.Date - 6;
end;

procedure TfrmMain.btnVideoStreamClick(Sender: TObject);
var
  i : Integer;
begin
  if btnVideoStream.Caption = 'Video Stream' then
    begin
      SysDev:=TSysDevEnum.Create(CLSID_VideoInputDeviceCategory);
      if SysDev.CountFilters>0 then
        for i := 0 to SysDev.CountFilters - 1 do
          begin
            if cbbWebcamList.Items.Count < SysDev.CountFilters  then
              cbbWebcamList.Items.Add(SysDev.Filters[i].FriendlyName);
          end;
      cbbWebcamList.Enabled := True;
      btnVideoStream.Caption := 'Disonnect Camera';
    end else
  if btnVideoStream.Caption = 'Disonnect Camera' then
    begin
      btnVideoStream.Caption := 'Video Stream';
      SysDev.Free;
      fltrgrph1.ClearGraph;
      fltrgrph1.Active := False;
      fltrgrph1.Stop;
      cbbWebcamList.Enabled := False;
      tmrThreshold.Enabled := False;
      img1.Picture.Assign(nil);
      img2.Picture.Assign(nil);
      img5.Picture.Assign(nil);
    end;

end;

procedure TfrmMain.imgPlayClick(Sender: TObject);
begin
  kordKiriAwal.X := 0;
  kordKiriAwal.Y := 0;
  kordKiriAkir.X := 0;
  kordKiriAkir.Y := 0;
  cekAwalKiri := True;
  cekAkirKiri := False;
  hasilSpeedKiri := 0;

  kordKananAwal.X := 0;
  kordKananAwal.Y := 0;
  kordKananAkir.X := 0;
  kordKananAkir.Y := 0;
  cekAwalKanan := True;
  cekAkirKanan := False;
  hasilSpeedKanan := 0;
  
  informasiVideo;
  mp1.Play;
  tmrThreshold.Enabled := True;
  imgPlay.Enabled := False;
end;

procedure TfrmMain.imgStopClick(Sender: TObject);
begin
  tmrThreshold.Enabled := False;
  img1.Picture.Assign(nil);
  img2.Picture.Assign(nil);
  img5.Picture.Assign(nil);
  mp1.Stop;
  imgPlay.Enabled := True;
end;

procedure TfrmMain.imgPauseClick(Sender: TObject);
begin
  tmrThreshold.Enabled := False;
  mp1.Pause;
  imgPlay.Enabled := True;
end;

procedure TfrmMain.cbbWebcamListChange(Sender: TObject);
begin
  fltrgrph1.ClearGraph;
  fltrgrph1.Active:=False;
  fltr1.BaseFilter.Moniker:=SysDev.GetMoniker(1);
  fltrgrph1.Active:=true;
  with fltrgrph1 as ICaptureGraphBuilder2 do
    RenderStream(@PIN_CATEGORY_PREVIEW, nil, fltr1 as IBaseFilter, smplgrbr1 as IBaseFilter, vdwndw1 as IBaseFilter);
  vdwndw1.Width := pnlMainVideo.Width;
  vdwndw1.Height := pnlMainVideo.Height;
  vdwndw1.Top := 0;
  vdwndw1.Left := 0;
  vdwndw1.Align := alClient;
  fltrgrph1.Play;
  tmrThreshold.Enabled := True;
end;

procedure TfrmMain.Seeting1Click(Sender: TObject);
begin
  if not setKordinat then
    setKordinat := True;
  mp1.Pause;
  mulaiHitung := False;
  //pm1.Items[0].Enabled := False;
end;

procedure TfrmMain.img1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    //Caption := IntToStr(X)+','+IntToStr(Y);
  //ShowMessage('ada');
  if setKordinat then
    begin
      klikKe := klikKe + 1;
      case klikKe of
      1:
        begin
          jalurKiri_atas.X := X;
          jalurKiri_atas.Y := Y;
        end;
      2:
        begin
          jalurKanan_atas.X := X;
          jalurKanan_atas.Y := jalurKiri_atas.Y;//Y;
          with Canvas do
            begin
              Pen.Color := clYellow;
              Pen.Width := 1;
              MoveTo(jalurKiri_atas.X, jalurKiri_atas.Y);
              LineTo(X,Y);
            end;
        end;
      3:
        begin
          jalurKiri_bawah.X := X;
          jalurKiri_bawah.Y := Y;
        end;
      4 :
        begin
          jalurKanan_bawah.X := X;
          jalurKanan_bawah.Y := jalurKiri_bawah.Y;//Y;
          with PanelToBmp(pnlMainVideo).Canvas do
            begin
              Pen.Color := clYellow;
              Pen.Width := 1;
              MoveTo(jalurKiri_bawah.X, jalurKiri_atas.Y);
              LineTo(X,Y);
            end;

        end;
      5 :
        begin
          jalurTengah_atas.X := X;
          jalurTengah_atas.Y := jalurKiri_atas.Y;//Y;
          markaAtas.X := X;
          markaAtas.Y := jalurKiri_atas.Y;

        end;
      6:
        begin
          jalurTengah_bawah.X := X;
          jalurTengah_bawah.Y := jalurKiri_bawah.Y;//Y;
          markaBawah.X := X;
          markaBawah.Y := jalurKiri_bawah.Y;
          with PanelToBmp(pnlMainVideo).Canvas do
            begin
              Pen.Color := clYellow;
              Pen.Width := 1;
              MoveTo(jalurTengah_atas.X, jalurTengah_atas.Y);
              LineTo(X,Y);
            end;
          setKordinat := False;
          klikKe := 0;
          mulaiHitung := True;
          edtKiriAtas.Text := '('+IntToStr(jalurKiri_atas.X)+','+IntToStr(jalurKiri_atas.Y)+')';
          edtKiriBawah.Text := '('+IntToStr(jalurKiri_bawah.X)+','+IntToStr(jalurKiri_bawah.Y)+')';
          edtTengahAtas.Text := '('+IntToStr(jalurTengah_atas.X)+','+IntToStr(jalurTengah_atas.Y)+')';
          edtTengahBawah.Text := '('+IntToStr(jalurTengah_bawah.X)+','+IntToStr(jalurTengah_bawah.Y)+')';
          edtKananAtas.Text := '('+IntToStr(jalurKanan_atas.X)+','+IntToStr(jalurKanan_atas.Y)+')';
          edtKananBawah.Text := '('+IntToStr(jalurKanan_bawah.X)+','+IntToStr(jalurKanan_bawah.Y)+')';

          mulaiHitung := True;
          mp1.Play;
        end;
      end
    end;
end;

procedure TfrmMain.img1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if setKordinat then
  with img1.Canvas do
    begin
      Pen.Color := clYellow;
      Pen.Width := 1;
      if klikKe = 1 then
        begin
          MoveTo(jalurKiri_atas.X, jalurKiri_atas.Y);
          LineTo(X,Y);
        end;
      if klikKe = 3 then
        begin
          MoveTo(jalurKiri_bawah.X, jalurKiri_bawah.Y);
          LineTo(X,Y);
        end;
      if klikKe = 5 then
        begin
          MoveTo(jalurTengah_atas.X, jalurTengah_atas.Y);
          LineTo(X,Y);
        end;


    end;
end;

procedure TfrmMain.itemSbyGresikClick(Sender: TObject);
begin
  lokasiKamera := 1;
  tampilList;
end;

procedure TfrmMain.itemGresikSbyClick(Sender: TObject);
begin
  lokasiKamera := 2;
  tampilList;
end;

procedure TfrmMain.itemPagiClick(Sender: TObject);
begin
  waktuRekaman := 1;
  tampilList;
end;

procedure TfrmMain.itemSiangClick(Sender: TObject);
begin
  waktuRekaman := 2;
  tampilList;
end;

procedure TfrmMain.itemSoreClick(Sender: TObject);
begin
  waktuRekaman := 3;
  tampilList;
end;

procedure TfrmMain.listVIdeoClick(Sender: TObject);
begin
  mp1.Stop;
  mp1.Close;
  img1.Picture.Assign(nil);
  img2.Picture.Assign(nil);
  img5.Picture.Assign(nil);
  tmrThreshold.Enabled := False;
  mp1.FileName := ExtractFilePath(Application.ExeName)+'Desember\'+folderJurusan+'\'+folderWaktu+'\'+listVIdeo.Items[listVIdeo.ItemIndex];
  mp1.Open;
  mp1.DisplayRect:=Rect(0,0,pnlMainVideo.Width,pnlMainVideo.Height);
  mp1.Play;
  tmrThreshold.Enabled := True;
  informasiVideo;
  //ShowMessage(mp1.FileName);
end;

procedure TfrmMain.btnVideoFileClick(Sender: TObject);
begin
  if dlgOpen1.Execute then
    begin
      mp1.Close;
      mp1.FileName := dlgOpen1.FileName;
      mp1.Open;
      mp1.DisplayRect:=Rect(0,0,pnlMainVideo.Width,pnlMainVideo.Height);
      //mp1.Play;
      //tmrThreshold.Enabled := True;
      //informasiVideo;
    end;
end;

procedure TfrmMain.tmrJamTimer(Sender: TObject);
begin
  //barBawah.Panels[1].Text := DateTimeToStr(Now) +'  '+ TimeToStr(Now);
  barBawah.Panels[1].Text := FormatDateTime('d mmmmmmmm yyyy',Now);
  barBawah.Panels[2].Text := FormatDateTime('h:n:ss',Now);

end;

procedure TfrmMain.tampilGrafik;
var
  i : Integer;
  tglMulai, tglAkir : Integer;
begin
  seriesGresikSurabaya.Clear;
  seriesSurabayaGresik.Clear;
  seriesJumlahSurabayaGresik.Clear;
  seriesJumlahGresikSurabaya.Clear;
  case jenisReport of
    2:
      begin
        //Surabaya-Gresik
        tglMulai := DayOf(cbbDaily.Date);
        for i := 1 to 7 do
          begin
            with chtSurabayaGresik.Series[0] do
              begin
                seriesSurabayaGresik.LinePen.Width := 2;
                AddXY((tglMulai + i) - 1, Round(StrToFloat(strngrdLaporan.Cells[4,i])), '', clLime );
              end;
            with chtSurabayaGresik.Series[1] do
              begin
                seriesJumlahSurabayaGresik.LinePen.Width := 2;
                AddXY((tglMulai + i) - 1, Round(StrToFloat(strngrdLaporan.Cells[3,i])), '', clYellow );
              end;
          end;
        //Gresik-Surabaya
        tglMulai := DayOf(cbbDaily.Date);
        for i := 8 to 14 do
          begin
            with chtGresikSurabaya.Series[0] do
              begin
                seriesGresikSurabaya.LinePen.Width := 2;
                AddXY((tglMulai + i) - 8, Round(StrToFloat(strngrdLaporan.Cells[4,i])), '', clLime );
              end;
            with chtGresikSurabaya.Series[1] do
              begin
                seriesJumlahGresikSurabaya.LinePen.Width := 2;
                AddXY((tglMulai + i) - 8, Round(StrToFloat(strngrdLaporan.Cells[3,i])), '', clYellow );
              end;
          end;
      end;
    3:
      begin
        tglMulai := 0;
        tglAkir := DayOfTheMonth(EndOfAMonth(2014,cbbMonthly.ItemIndex+1));
        for i := 1 to tglAkir do
          begin
            with chtSurabayaGresik.Series[0] do
              begin
                seriesSurabayaGresik.LinePen.Width := 2;
                AddXY(tglMulai + i, Round(StrToFloat(strngrdLaporan.Cells[4,i])), '', clLime );
              end;
            with chtSurabayaGresik.Series[1] do
              begin
                seriesJumlahSurabayaGresik.LinePen.Width := 2;
                AddXY(tglMulai + i, Round(StrToFloat(strngrdLaporan.Cells[3,i])), '', clYellow );
              end;   
          end;
        for i := tglAkir + 1 to tglAkir * 2 do
          begin
            with chtGresikSurabaya.Series[0] do
              begin
                seriesGresikSurabaya.LinePen.Width := 2;
                AddXY((tglMulai + i) - tglAkir, Round(StrToFloat(strngrdLaporan.Cells[4,i])), '', clLime );
              end;
            with chtGresikSurabaya.Series[1] do
              begin
                seriesJumlahGresikSurabaya.LinePen.Width := 2;
                AddXY((tglMulai + i) - tglAkir, Round(StrToFloat(strngrdLaporan.Cells[3,i])), '', clYellow );
              end;
          end;

      end;
    1 :
      begin
        seriesSurabayaGresik.Clear;
        seriesJumlahSurabayaGresik.Clear;
        seriesGresikSurabaya.Clear;
        seriesJumlahGresikSurabaya.Clear;
      end;
  end;


end;

procedure TfrmMain.tampilGambar;
var
  i, j : Integer;
  awal, akir : Integer;
begin
  //Gambar
  for i:= 0 to (ComponentCount - 1) do
    begin
      if (Components[i] is TImage) then
        begin
          //Posisi
          for j := 1 to 10 do
            begin
              if TImage(Components[i]).Name = 'imgReport'+IntToStr(j) then
                begin
                  TImage(Components[i]).Top := ((tabViewImage.Height div 3) - (TImage(Components[i]).Height)) div 2 ;
                  TImage(Components[i]).Left := (( ((tabViewImage.Width div 10) * j) - imgReport1.Width));
                end;
            end;
          for j := 11 to 20 do
            begin
              if TImage(Components[i]).Name = 'imgReport'+IntToStr(j) then
                begin
                  TImage(Components[i]).Top := (((tabViewImage.Height div 3) - (TImage(Components[i]).Height)) div 2) + (tabViewImage.Height div 3);
                  TImage(Components[i]).Left := (( ((tabViewImage.Width div 10) * (j-10)) - imgReport1.Width));
                end;
            end;
          for j := 21 to 30 do
            begin
              if TImage(Components[i]).Name = 'imgReport'+IntToStr(j) then
                begin
                  TImage(Components[i]).Top := (((tabViewImage.Height div 3) - (TImage(Components[i]).Height)) div 2) + ((tabViewImage.Height div 3) * 2);
                  TImage(Components[i]).Left := (( ((tabViewImage.Width div 10) * (j-20)) - imgReport1.Width));
                end;
            end;                       

          //Clear
          for j := 1 to 30 do
            begin
              if TImage(Components[i]).Name = 'imgReport'+IntToStr(j) then
                  TImage(Components[i]).Picture.Bitmap := nil;
            end;                     
          //Tampil Gambar
          if lstDaftarGambar.Count - urutangambar <= 30 then
            for j := 1 to lstDaftarGambar.Count-urutangambar do
              begin
                if TImage(Components[i]).Name = 'imgReport'+IntToStr(j) then
                  TImage(Components[i]).Picture.LoadFromFile(lstDaftarGambar.Items[urutangambar+j-1]);
              end;
          if lstDaftarGambar.Count - urutangambar > 30 then
            for j := 1 to 30 do
              begin
                if TImage(Components[i]).Name = 'imgReport'+IntToStr(j) then
                  TImage(Components[i]).Picture.LoadFromFile(lstDaftarGambar.Items[urutangambar+j-1]);
              end;
        end;
    end;

  //Label Caption
  for i:= 0 to (ComponentCount - 1) do
    begin
      if (Components[i] is TLabel) then
        begin
          for j := 0 to 29 do
            begin
              if TLabel(Components[i]).Name = 'lblSpeed'+IntToStr(j+1) then
                  begin
                      TLabel(Components[i]).Visible := False;
                  end;
            end;
          if lstDaftarGambar.Items.Count - urutangambar > 30 then
            for j := 0 to 29 do
              begin
                if TLabel(Components[i]).Name = 'lblSpeed'+IntToStr(j+1) then
                  begin
                      awal := AnsiPos('(', lstDaftarGambar.Items[urutangambar+j]);
                      akir := AnsiPos(')',lstDaftarGambar.Items[urutangambar+j]);
                      TLabel(Components[i]).Caption := FloatToStr( StrToFloat(Copy(lstDaftarGambar.Items[urutangambar+j],awal+1,akir-awal-1)) ) + ' Km/H';
                      TLabel(Components[i]).Visible := True;
                  end;
              end;
          if lstDaftarGambar.Items.Count - urutangambar <= 30 then
            for j := 0 to lstDaftarGambar.Items.Count - urutangambar - 1 do
              begin
                if TLabel(Components[i]).Name = 'lblSpeed'+IntToStr(j+1) then
                  begin
                      awal := AnsiPos('(', lstDaftarGambar.Items[urutangambar+j]);
                      akir := AnsiPos(')',lstDaftarGambar.Items[urutangambar+j]);
                      TLabel(Components[i]).Caption := FloatToStr( StrToFloat(Copy(lstDaftarGambar.Items[urutangambar+j],awal+1,akir-awal-1)) ) + ' Km/H';
                      TLabel(Components[i]).Visible := True;
                  end;
              end;              
        end;
    end;
  for i:= 0 to (ComponentCount - 1) do
    begin
      if (Components[i] is TLabel) then
        begin
          //Posisi
          with lblSpeed1 do
            begin
              Left := imgReport1.Left + ((imgReport1.Width - lblSpeed1.Width) div 2);
              Top := imgReport1.Top + imgReport1.Height + 5;
            end; 
          with lblSpeed11 do
            begin
              Left := imgReport11.Left + ((imgReport11.Width - lblSpeed11.Width) div 2);
              Top := imgReport11.Top + imgReport11.Height + 5;
            end;
          with lblSpeed21 do
            begin
              Left := imgReport21.Left + ((imgReport21.Width - lblSpeed21.Width) div 2);
              Top := imgReport21.Top + imgReport21.Height + 5;
            end;                            

          for j := 2 to 10 do
            begin
              if TLabel(Components[i]).Name = 'lblSpeed'+IntToStr(j) then
                begin
                  TLabel(Components[i]).Top := lblSpeed1.Top;
                  TLabel(Components[i]).Left := imgReport1.Left + (100 * (j-1)) + ((imgReport1.Width - TLabel(Components[i]).Width)div 2) + ((imgReport2.Left - imgReport1.Left - 100)*(j-1));
                end;
            end;
          for j := 12 to 20 do
            begin
              if TLabel(Components[i]).Name = 'lblSpeed'+IntToStr(j) then
                begin
                  TLabel(Components[i]).Top := lblSpeed11.Top;
                  TLabel(Components[i]).Left := imgReport1.Left + (100 * (j-11)) + ((imgReport1.Width - TLabel(Components[i]).Width)div 2) + ((imgReport2.Left - imgReport1.Left - 100)*(j-11));
                end;
            end;
           for j := 22 to 30 do
            begin
              if TLabel(Components[i]).Name = 'lblSpeed'+IntToStr(j) then
                begin
                  TLabel(Components[i]).Top := lblSpeed21.Top;
                  TLabel(Components[i]).Left := imgReport1.Left + (100 * (j-21)) + ((imgReport1.Width - TLabel(Components[i]).Width)div 2) + ((imgReport2.Left - imgReport1.Left - 100)*(j-21));
                end;
            end;
        end;
    end;
  if lstDaftarGambar.Items.Count - urutangambar >= 30 then
    imgNext.Visible := True;
end;

procedure TfrmMain.strngrdLaporanDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  sText : String;
  i, j : Integer;
begin
  for i := 0 to strngrdLaporan.ColCount-1 do
    for j := 0 to strngrdLaporan.RowCount-1 do
      begin
        sText := strngrdLaporan.Cells[ACol,ARow];
        if (aCol = i) and (aRow = j) then
          begin
            strngrdLaporan.Canvas.FillRect(Rect);
            DrawText(strngrdLaporan.Canvas.Handle,PChar(sText),Length(sText),Rect,DT_VCENTER + DT_SINGLELINE + DT_CENTER);
          end;
      end;
end;

procedure TfrmMain.cbbMonthlyChange(Sender: TObject);
begin
  if jenisReport = 3 then
    begin
      cbbDaily.Date := EncodeDate(2014,cbbMonthly.ItemIndex+1,1);
      cbbWeekly.Date := EncodeDate(2014,cbbMonthly.ItemIndex+1,DayOfTheMonth(EndOfAMonth(2014,cbbMonthly.ItemIndex+1)));
    end;
end;

procedure TfrmMain.btn2Click(Sender: TObject);
begin
  ShowMessage(IntToStr(lstDaftarGambar.Count));
end;

function RefToCell(ARow, ACol: Integer): string;
begin
  Result := Chr(Ord('A') + ACol - 1) + IntToStr(ARow);
end;

function SaveAsExcelFile(AGrid: TStringGrid; ASheetName, AFileName: string): Boolean;
const
  xlWBATWorksheet = -4167;
var
  XLApp, Sheet, Data: OLEVariant;
  i, j: Integer;
begin
  // Prepare Data
  Data := VarArrayCreate([1, AGrid.RowCount, 1, AGrid.ColCount], varVariant);
  for i := 0 to AGrid.ColCount - 1 do
    for j := 0 to AGrid.RowCount - 1 do
      Data[j + 1, i + 1] := AGrid.Cells[i, j];
  // Create Excel-OLE Object
  Result := False;
  XLApp := CreateOleObject('Excel.Application');
  try
    // Hide Excel
    XLApp.Visible := False;
    // Add new Workbook
    XLApp.Workbooks.Add(xlWBatWorkSheet);
    Sheet := XLApp.Workbooks[1].WorkSheets[1];
    Sheet.Name := ASheetName;
    // Fill up the sheet
    Sheet.Range[RefToCell(1, 1), RefToCell(AGrid.RowCount,
      AGrid.ColCount)].Value := Data;
    // Save Excel Worksheet
    try
      XLApp.Workbooks[1].SaveAs(AFileName);
      Result := True;
    except
      // Error ?
    end;
  finally
    // Quit Excel
    if not VarIsEmpty(XLApp) then
    begin
      XLApp.DisplayAlerts := False;
      XLApp.Quit;
      XLAPP := Unassigned;
      Sheet := Unassigned;
    end;
  end;
end;

procedure TfrmMain.imgNextClick(Sender: TObject);
begin
  urutangambar := urutangambar + 30;
  if urutangambar >= 30 then
    imgBack.Visible := True;
  if lstDaftarGambar.Items.Count - urutangambar <= 30 then
    imgNext.Visible := False;
  tampilGambar;
end;

procedure TfrmMain.btnAboutProgramClick(Sender: TObject);
begin
  frmAbout.Show;
end;

procedure TfrmMain.imgExcelClick(Sender: TObject);
  var
  namaFile : string;
begin
  case jenisReport of
  1 : namaFile := 'Report in '+FormatDateTime('d mmmmmmmm yyyy',cbbDaily.Date)+'.xls';
  2 : namaFile := 'Report in '+FormatDateTime('d mmmmmmmm yyyy',cbbDaily.Date)+' to '+FormatDateTime('d mmmmmmmm yyyy',cbbWeekly.Date)+'.xls';
  3 : namaFile := 'Report in '+cbbMonthly.Text+'.xls';
  end;

  SaveAsExcelFile(strngrdLaporan, 'Report', ExtractFilePath(Application.ExeName)+'Hasil Report\'+FormatDateTime('d mmmmmmmm yyyy',Now)+'\'+namaFile);
  ShowMessage('Data Saved');
end;

procedure TfrmMain.imgSearchClick(Sender: TObject);
var
  i, j : Integer;
  awal, akir : Integer;
  jumlahAda : Integer;
begin
  //Atur Jumlah Baris
  listPelanggar.Clear;
  lstDaftarGambar.Clear;
  jumlahAda := 0;
  case jenisReport of
    1:
      begin
        with strngrdLaporan do
          begin
            for i := 1 to RowCount-1 do
              for j := 1 to ColCount - 1 do
                Cells[i,j] := '';
            for i := 1 to RowCount-1 do
              Cells[0,i] := '';
            RowCount := (1 * 2) + 2;
            Cells[0,1] := '1';//Nomor
            Cells[0,2] := '2';//Nomor
            Cells[1,1] := FormatDateTime('d mmmmmmmm yyyy',cbbDaily.Date);
            Cells[1,2] := FormatDateTime('d mmmmmmmm yyyy',cbbDaily.Date);
            Cells[2,1] := 'Surabaya - Gresik';
            Cells[2,2] := 'Gresik - Surabaya';
            Cells[1,3] := 'TOTAL';
            Cells[3,3] := '0';
            Cells[4,1] := '0';
            Cells[4,2] := '0';
            Cells[4,3] := '0';

            for i := 1 to RowCount - 2 do
              begin
                if DirectoryExists(ExtractFilePath(Application.ExeName)+'\Hasil Capture\'+Cells[2,i]+'\'+Cells[1,i]) then
                  Cells[3,i] := IntToStr(fileCount(ExtractFilePath(Application.ExeName)+'\Hasil Capture\'+Cells[2,i]+'\'+Cells[1,i]+'\'))
                    else Cells[3,i] := '0';
                Cells[3,3] := IntToStr( StrToInt(Cells[3,3]) + StrToInt(Cells[3,i]) );
                ListFileDir(ExtractFilePath(Application.ExeName)+'\Hasil Capture\'+Cells[2,i]+'\'+Cells[1,i]+'\', listPelanggar.Items);
                ListFileDetail(ExtractFilePath(Application.ExeName)+'\Hasil Capture\'+Cells[2,i]+'\'+Cells[1,i]+'\',
                      ExtractFilePath(Application.ExeName)+'Hasil Capture\'+Cells[2,i]+'\'+Cells[1,i]+'\', lstDaftarGambar.Items);
                for j := 0 to listPelanggar.Count-1 do
                  begin
                    awal := AnsiPos('(', listPelanggar.Items[j]);
                    akir := AnsiPos(')',listPelanggar.Items[j]);
                    Cells[4,i] := FloatToStr( StrToFloat(Cells[4,i]) + StrToFloat(Copy(listPelanggar.Items[j],awal+1,akir-awal-1)) );
                  end;
                listPelanggar.Clear;
              end;

            for i := 1 to RowCount-2 do
              begin
                if Cells[4,i] <> '0' then
                  Cells[4,i] := FormatFloat('0.00', StrToFloat(Cells[4,i]) / StrToInt(Cells[3,i]) )
                else Cells[4,i] := '0';
                Cells[4,RowCount-1] := FloatToStr(  StrToFloat(Cells[4,RowCount-1]) + StrToFloat(Cells[4,i]) );
                if Cells[4,i] <> '0' then
                  jumlahAda := jumlahAda + 1;
              end;
            if Cells[4,RowCount-1] <> '0' then
              Cells[4,RowCount-1] := FormatFloat('0.00',StrToFloat(Cells[4,RowCount-1]) / jumlahAda);
            tampilGrafik;
          end;
      end;

    2:
      begin
        with strngrdLaporan do
          begin
            for i := 1 to RowCount-1 do
              for j := 1 to ColCount - 1 do
                Cells[i,j] := '';
            for i := 1 to RowCount-1 do
              Cells[0,i] := '';
            RowCount := (7 * 2) + 2;
            for i := 1 to RowCount-2 do
              Cells[0,i] := IntToStr(i);
            for i := 1 to 7 do
              begin
                Cells[1,i] := FormatDateTime('d mmmmmmmm yyyy',cbbDaily.Date + (i-1));
                Cells[2,i] := 'Surabaya - Gresik';
              end;

            for i := 8 to 14 do
              begin
                Cells[1,i] := FormatDateTime('d mmmmmmmm yyyy',cbbDaily.Date + (i-8));
                Cells[2,i] := 'Gresik - Surabaya';
              end;
            Cells[1,15] := 'TOTAL';
            Cells[3,15] := '0';
            
            for i := 1 to RowCount-1 do
              Cells[4,i] := '0';

            for i := 1 to RowCount - 2 do
              begin
                if DirectoryExists(ExtractFilePath(Application.ExeName)+'\Hasil Capture\'+Cells[2,i]+'\'+Cells[1,i]) then
                  Cells[3,i] := IntToStr(fileCount(ExtractFilePath(Application.ExeName)+'\Hasil Capture\'+Cells[2,i]+'\'+Cells[1,i]+'\'))
                    else Cells[3,i] := '0';
                Cells[3,15] := IntToStr( StrToInt(Cells[3,15]) + StrToInt(Cells[3,i]) );
                ListFileDir(ExtractFilePath(Application.ExeName)+'\Hasil Capture\'+Cells[2,i]+'\'+Cells[1,i]+'\', listPelanggar.Items);
                ListFileDetail(ExtractFilePath(Application.ExeName)+'\Hasil Capture\'+Cells[2,i]+'\'+Cells[1,i]+'\',
                      ExtractFilePath(Application.ExeName)+'Hasil Capture\'+Cells[2,i]+'\'+Cells[1,i]+'\', lstDaftarGambar.Items);
                for j := 0 to listPelanggar.Count-1 do
                  begin
                    awal := AnsiPos('(', listPelanggar.Items[j]);
                    akir := AnsiPos(')',listPelanggar.Items[j]);
                    Cells[4,i] := FloatToStr( StrToFloat(Cells[4,i]) + StrToFloat(Copy(listPelanggar.Items[j],awal+1,akir-awal-1)) );
                  end;
                listPelanggar.Clear;
              end;
            for i := 1 to RowCount-2 do
              begin
                if Cells[4,i] <> '0' then
                  Cells[4,i] := FormatFloat('0.00', StrToFloat(Cells[4,i]) / StrToInt(Cells[3,i]) )
                else Cells[4,i] := '0';
                Cells[4,RowCount-1] := FloatToStr(  StrToFloat(Cells[4,RowCount-1]) + StrToFloat(Cells[4,i]) );
                if Cells[4,i] <> '0' then
                  jumlahAda := jumlahAda + 1;
              end;
            if Cells[4,RowCount-1] <> '0' then
              Cells[4,RowCount-1] := FormatFloat('0.00',StrToFloat(Cells[4,RowCount-1]) / jumlahAda);
            tampilGrafik;
          end;
      end;
    3:
      //btn5Click(Sender);
      begin
        with strngrdLaporan do
          begin
            for i := 1 to RowCount-1 do
              for j := 1 to ColCount - 1 do
                Cells[i,j] := '';
            for i := 1 to RowCount-1 do
              begin
                Cells[0,i] := '';
                Cells[1,i] := '';
                Cells[2,i] := '';
                Cells[3,i] := '';
                Cells[4,i] := '';
              end;
            RowCount := (DayOfTheMonth(EndOfAMonth(2014,cbbMonthly.ItemIndex+1)) * 2 ) + 2;
            for i := 1 to RowCount-2 do
              Cells[0,i] := IntToStr(i);
            for i := 1 to DayOfTheMonth(EndOfAMonth(2014,cbbMonthly.ItemIndex+1)) do
              begin
                Cells[1,i] := FormatDateTime('d mmmmmmmm yyyy',cbbDaily.Date + (i-1));
                Cells[2,i] := 'Surabaya - Gresik';
              end;

            for i := DayOfTheMonth(EndOfAMonth(2014,cbbMonthly.ItemIndex+1))+1 to RowCount-2 do
              begin
                Cells[1,i] := FormatDateTime('d mmmmmmmm yyyy',cbbDaily.Date + (i-(DayOfTheMonth(EndOfAMonth(2014,cbbMonthly.ItemIndex+1)))-1) );
                Cells[2,i] := 'Gresik - Surabaya';
              end;
            Cells[1,RowCount-1] := 'TOTAL';
            Cells[3,RowCount-1] := '0';
            for i := 1 to RowCount-1 do
              Cells[4,i] := '0';
            for i := 1 to RowCount - 2 do
              begin
                if DirectoryExists(ExtractFilePath(Application.ExeName)+'\Hasil Capture\'+Cells[2,i]+'\'+Cells[1,i]) then
                  Cells[3,i] := IntToStr(fileCount(ExtractFilePath(Application.ExeName)+'\Hasil Capture\'+Cells[2,i]+'\'+Cells[1,i]+'\'))
                    else Cells[3,i] := '0';
                Cells[3,RowCount-1] := IntToStr( StrToInt(Cells[3,RowCount-1]) + StrToInt(Cells[3,i]) );
                ListFileDir(ExtractFilePath(Application.ExeName)+'\Hasil Capture\'+Cells[2,i]+'\'+Cells[1,i]+'\', listPelanggar.Items);
                ListFileDetail(ExtractFilePath(Application.ExeName)+'\Hasil Capture\'+Cells[2,i]+'\'+Cells[1,i]+'\',
                      ExtractFilePath(Application.ExeName)+'Hasil Capture\'+Cells[2,i]+'\'+Cells[1,i]+'\', lstDaftarGambar.Items);   
                for j := 0 to listPelanggar.Count-1 do
                  begin
                    awal := AnsiPos('(', listPelanggar.Items[j]);
                    akir := AnsiPos(')',listPelanggar.Items[j]);
                    Cells[4,i] := FloatToStr( StrToFloat(Cells[4,i]) + StrToFloat(Copy(listPelanggar.Items[j],awal+1,akir-awal-1)) );
                  end;
                listPelanggar.Clear;
              end;
            for i := 1 to RowCount-2 do
              begin
                if Cells[4,i] <> '0' then
                  Cells[4,i] := FormatFloat('0.00', StrToFloat(Cells[4,i]) / StrToInt(Cells[3,i]) )
                else Cells[4,i] := '0';
                Cells[4,RowCount-1] := FloatToStr(  StrToFloat(Cells[4,RowCount-1]) + StrToFloat(Cells[4,i]) );
                if Cells[4,i] <> '0' then
                  jumlahAda := jumlahAda + 1;
              end;
            if Cells[4,RowCount-1] <> '0' then
              Cells[4,RowCount-1] := FormatFloat('0.00',StrToFloat(Cells[4,RowCount-1]) / jumlahAda);
            tampilGrafik;
          end;
      end;
  end;
  urutangambar := 0;
  tampilGambar;
  imgBack.Visible := False;
end;

procedure TfrmMain.lstDaftarGambarClick(Sender: TObject);
begin
  lstDaftarGambar.Items.SaveToFile('kk.txt');
end;

procedure TfrmMain.imgBackClick(Sender: TObject);
begin
  urutangambar := urutangambar - 30;
  if urutangambar <= 30 then
    imgBack.Visible := False;
  if lstDaftarGambar.Items.Count - urutangambar >= 30 then
    imgNext.Visible := True;
  tampilGambar;
end;

end.
