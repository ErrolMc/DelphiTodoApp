program TodoApp;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {Form1: TdxFluentDesignForm},
  AddTodoForm in 'AddTodoForm.pas' {Form2},
  TodoItem in 'TodoItem.pas' {Frame1: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
