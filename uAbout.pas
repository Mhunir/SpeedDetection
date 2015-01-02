unit uAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, dxGDIPlusClasses, StdCtrls;

type
  TfrmAbout = class(TForm)
    imgAbout: TImage;
    lblAbout: TLabel;
    lblSpeed: TLabel;
    lblDetection: TLabel;
    btnClose: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure tamilanAwalAbout;
  end;

var
  frmAbout: TfrmAbout;

implementation

{$R *.dfm}

procedure TfrmAbout.tamilanAwalAbout;
begin
  Width := 600;
  Height := 300;

  with imgAbout do
    begin
      Height := frmAbout.Height;
      Width := Height;
      Top := 0;
      Left := 0;
    end;
  with lblSpeed do
    begin
      Left := imgAbout.Width + 50;
      Top := 6;
    end;
  with lblDetection do
    begin
      Left := lblSpeed.Left;
      Top := lblSpeed.Top + lblSpeed.Height ;
    end;
  with lblAbout do
    begin
      Left := lblSpeed.Left;
      Top := lblDetection.Top + lblDetection.Height + 5;
    end;
  with btnClose do
    begin
      Left := (imgAbout.Width - Width) div 2;
      Top := frmAbout.Height - btnClose.Height - 40;
    end;

end;

procedure TfrmAbout.FormCreate(Sender: TObject);
begin
  tamilanAwalAbout;
end;                                            

procedure TfrmAbout.btnCloseClick(Sender: TObject);
begin
  frmAbout.Close;
end;

end.
