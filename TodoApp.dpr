program TodoApp;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {MainForm: TdxFluentDesignForm},
  AddTodoForm in 'AddTodoForm.pas' {AddTodoForm: TForm},
  TodoItem in 'TodoItem.pas' {TodoItem: TFrame},
  CompletedSpacerControl in 'CompletedSpacerControl.pas' {CompletedSpacerControl: TFrame},
  CommonUnit in 'CommonUnit.pas',
  TodoItemData in 'TodoItemData.pas',
  TodoItemDataList in 'TodoItemDataList.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainFormInstance);
  Application.CreateForm(TAddTodoForm, AddTodoFormInstance);
  Application.Run;
end.
