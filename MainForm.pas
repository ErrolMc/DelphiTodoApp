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
  System.Generics.Collections;

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
begin
  NewItem := TTodoItem.Create(TodoScrollBox);
  NewItem.Parent := TodoScrollBox;

  NewItem.Name := 'TodoItem_' + IntToStr(NumItems);
  NumItems := NumItems + 1;

  NewItem.LabelText.Caption := HeaderText;
  NewItem.NotesEdit.Text := NotesText;
  NewItem.Top := TodoItemList.Count * NewItem.Height; // Position the new item
  NewItem.Left := 0;
  NewItem.Visible := True;

  TodoItemList.Add(NewItem); // Add the frame to the list
end;

procedure TMainForm.dxFluentDesignFormCreate(Sender: TObject);
begin
  NumItems := 0;
  TodoItemList := TObjectList<TTodoItem>.Create(True); // True to own the objects and free them automatically
end;

procedure TMainForm.dxFluentDesignFormDestroy(Sender: TObject);
begin
  TodoItemList.Free;
end;

end.
