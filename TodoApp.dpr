program TodoApp;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {Form1: TdxFluentDesignForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
