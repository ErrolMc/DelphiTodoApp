unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  cxControls, cxGraphics, cxLookAndFeelPainters, cxLookAndFeels,
  dxSkinsCore, cxContainer, cxEdit, dxNavBar, cxClasses,
  dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinsForm, dxSkinsFluentDesignForm, dxSkinOffice2019Colorful, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinWXI,
  dxSkinXmas2008Blue, dxCore, Vcl.Menus, Vcl.StdCtrls, cxButtons, AddTodoForm,
  cxGeometry, dxFramedControl, dxPanel, cxScrollBox, TodoItem, System.Contnrs,
  System.Generics.Collections, CommonUnit;

type
  TMainForm = class(TdxFluentDesignForm)
    dxSkinController1: TdxSkinController;
    AddTodoButton: TcxButton;
    MainPanel: TdxPanel;
    TodoScrollBox: TcxScrollBox;
    procedure AddTodoButtonClick(Sender: TObject);
    procedure dxFluentDesignFormCreate(Sender: TObject);
    procedure dxFluentDesignFormDestroy(Sender: TObject);
  private
    { Private declarations }
    NumItems: integer;
    TodoItemList: TObjectList<TTodoItem>;

    procedure HandleTodoAdded(Sender: TObject; const HeaderText, NotesText: String);
    procedure DeleteTodoItemMessage(var Msg: TMessage); message WM_DELETE_TODO_ITEM;
    procedure AddTodoItem(const HeaderText, NotesText: string);
  public
    { Public declarations }
  end;

var
  MainFormInstance: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.AddTodoButtonClick(Sender: TObject);
begin
  AddTodoFormInstance := TAddTodoForm.Create(nil);
  try
    AddTodoFormInstance.OnTodoAdded := HandleTodoAdded;
    AddTodoFormInstance.ShowModal;
  finally
    AddTodoFormInstance.Free;
  end;
end;

procedure TMainForm.HandleTodoAdded(Sender: TObject; const HeaderText, NotesText: String);
begin
  AddTodoItem(HeaderText, NotesText);
end;

procedure TMainForm.AddTodoItem(const HeaderText, NotesText: string);
var
  NewItem: TTodoItem;
  ItemSpacing: Integer;
  NewTop: Integer;
  Padding: Integer;
begin
  NewItem := TTodoItem.Create(TodoScrollBox);
  NewItem.Parent := TodoScrollBox;

  NewItem.Name := 'TodoItem_' + IntToStr(NumItems);
  NumItems := NumItems + 1;

  ItemSpacing := 10;
  Padding := 5;

  if TodoItemList.Count = 0 then
    NewTop := Padding
  else
    NewTop := TodoItemList.Last.Top + TodoItemList.Last.Height + ItemSpacing;

  NewItem.Top := NewTop;

  NewItem.LabelText.Caption := HeaderText;
  NewItem.NotesEdit.Text := NotesText;
  NewItem.Left := Padding;
  NewItem.Visible := True;
  NewItem.Width := TodoScrollBox.Width - (Padding * 3);

  TodoItemList.Add(NewItem);
end;

procedure TMainForm.dxFluentDesignFormCreate(Sender: TObject);
begin
  NumItems := 0;
  TodoItemList := TObjectList<TTodoItem>.Create(True); // True to own the objects and free them automatically
end;

procedure TMainForm.DeleteTodoItemMessage(var Msg: TMessage);
var
  Item: TTodoItem;
  ItemIndex: Integer;
begin
  Item := TTodoItem(Msg.WParam);
  ItemIndex := TodoItemList.IndexOf(Item);

  if ItemIndex <> -1 then
  begin
    TodoItemList.Delete(ItemIndex);
  end;
end;

procedure TMainForm.dxFluentDesignFormDestroy(Sender: TObject);
begin
  TodoItemList.Free;
end;

end.
