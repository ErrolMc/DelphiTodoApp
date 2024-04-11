program TodoApp;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {MainForm: TdxFluentDesignForm},
  AddTodoForm in 'AddTodoForm.pas' {AddTodoForm: TForm},
  TodoItem in 'TodoItem.pas' {TodoItem: TFrame},
  CommonUnit in 'CommonUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainFormInstance);
  Application.CreateForm(TAddTodoForm, AddTodoFormInstance);
  Application.Run;
end.
