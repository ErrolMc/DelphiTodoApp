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
  System.Generics.Collections, CommonUnit, TodoItemData, TodoItemDataList,
  cxLabel, CompletedSpacerControl;

type
  TMainForm = class(TdxFluentDesignForm)
    dxSkinController1: TdxSkinController;
    AddTodoButton: TcxButton;
    MainPanel: TdxPanel;
    dxNavBar1: TdxNavBar;
    cxLabel1: TcxLabel;
    ScrollerControlGroup_Root: TdxLayoutGroup;
    ScrollerControl: TdxLayoutControl;
    ScrollerPanelParent: TdxPanel;
    procedure AddTodoButtonClick(Sender: TObject);
    procedure dxFluentDesignFormCreate(Sender: TObject);
    procedure dxFluentDesignFormDestroy(Sender: TObject);
  private
    { Private declarations }
    NumItems: integer;
    TodoItemList: TObjectList<TFrame>;
    TodoItemData: TTodoItemDataList;
    Spacer: TCompletedSpacerControl;

    procedure HandleTodoAdded(Sender: TObject; const HeaderText, NotesText: String);
    procedure DeleteTodoItemMessage(var Msg: TMessage); message WM_DELETE_TODO_ITEM;
    procedure ToggleExpandTodoItemMessage(var Msg: TMessage); message WM_TOGGLE_EXPAND_TODO_ITEM;
    procedure SaveTodoItemsMessage(var Msg: TMessage); message WM_SAVE_TODO_ITEMS;
    procedure AddTodoItem(const HeaderText, NotesText: string);
    procedure SpawnTodoItem(ItemData: TTodoItemData);
  public
    { Public declarations }
  end;

var
  MainFormInstance: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.dxFluentDesignFormCreate(Sender: TObject);
var
  LoadedItem: TTodoItemData;
  SpacerLayoutItem: TdxLayoutItem;
begin
  NumItems := 0;
  TodoItemList := TObjectList<TFrame>.Create(True); // True to own the objects and free them automatically
  TodoItemData := TTodoItemDataList.Create();
  TodoItemData.LoadFromFile('TodoItems.json');

  // Spawn TodoItem controls for each loaded item
  for LoadedItem in TodoItemData.FTodoItems do
  begin
    SpawnTodoItem(LoadedItem);
  end;

  // spawn spacer
  Spacer := TCompletedSpacerControl.Create(ScrollerControl);
  Spacer.Visible := True;
  Spacer.SetExpanded(true);
  SpacerLayoutItem := ScrollerControlGroup_Root.CreateItemForControl(Spacer);

  TodoItemList.Add(Spacer);

  // spawn completed items
  for LoadedItem in TodoItemData.FCompletedItems do
  begin
    SpawnTodoItem(LoadedItem);
  end;
end;

procedure TMainForm.HandleTodoAdded(Sender: TObject; const HeaderText, NotesText: String);
begin
  AddTodoItem(HeaderText, NotesText);
end;

procedure TMainForm.AddTodoItem(const HeaderText, NotesText: string);
var
  ItemData: TTodoItemData;
begin
  ItemData := TodoItemData.AddTodoItem(HeaderText, NotesText);
  TodoItemData.SaveToFile('TodoItems.json');

  SpawnTodoItem(ItemData);
end;

procedure TMainForm.SpawnTodoItem(ItemData: TTodoItemData);
var
  NewItem: TTodoItem;
  LayoutItem: TdxLayoutItem;
begin
  if Assigned(ItemData) = false then
    Exit();

  NewItem := TTodoItem.Create(ScrollerControl);
  NewItem.ItemData := ItemData;
  NewItem.NoNotify := True;

  NewItem.Name := 'TodoItem_' + IntToStr(NumItems);
  NumItems := NumItems + 1;

  NewItem.LabelText.Caption := ItemData.Header;
  NewItem.NotesEdit.Text := ItemData.Notes;
  NewItem.CompletedCheckEdit.Checked := ItemData.Completed;
  NewItem.Visible := True;

  NewItem.Width := ScrollerControl.ClientWidth - 25;

  LayoutItem := ScrollerControlGroup_Root.CreateItemForControl(NewItem);

  NewItem.Visible := True;
  NewItem.NoNotify := False;	
  NewItem.OnShow();

  TodoItemList.Add(NewItem);
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
    if Item.ItemData <> nil then
      begin
        TodoItemData.RemoveTodoItem(Item.ItemData);
        TodoItemData.SaveToFile('TodoItems.json');
      end;

    TodoItemList.Delete(ItemIndex);
  end;
end;

procedure TMainForm.ToggleExpandTodoItemMessage(var Msg: TMessage);
begin
  Exit();
end;

procedure TMainForm.SaveTodoItemsMessage(var Msg: TMessage);
begin
  TodoItemData.SaveToFile('TodoItems.json');
end;

procedure TMainForm.dxFluentDesignFormDestroy(Sender: TObject);
begin
  TodoItemList.Free;
  TodoItemData.Free;
end;

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

end.
