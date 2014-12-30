program DetSpeed;

uses
  Forms,
  uMain in 'uMain.pas' {frmMain},
  uAbout in 'uAbout.pas' {frmAbout};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmAbout, frmAbout);
  Application.Run;
end.
