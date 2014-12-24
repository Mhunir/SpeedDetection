unit uAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TfrmAbout = class(TForm)
    procedure FormCreate(Sender: TObject);
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
end;

procedure TfrmAbout.FormCreate(Sender: TObject);
begin
  tamilanAwalAbout;
end;

end.
