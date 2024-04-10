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
  cxGeometry, dxFramedControl, dxPanel, cxScrollBox, TodoItem;

type
  TForm1 = class(TdxFluentDesignForm)
    dxSkinController1: TdxSkinController;
    AddTodoButton: TcxButton;
    MainPanel: TdxPanel;
    TodoScrollBox: TcxScrollBox;
    procedure AddTodoButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure HandleTodoAdded(Sender: TObject; const HeaderText, NotesText: String);
    procedure AddTodoItem(const HeaderText, NotesText: string);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AddTodoButtonClick(Sender: TObject);
begin
  Form2 := TForm2.Create(nil);
  try
    Form2.OnTodoAdded := HandleTodoAdded;
    Form2.ShowModal;
  finally
    Form2.Free;
  end;
end;

procedure TForm1.HandleTodoAdded(Sender: TObject; const HeaderText, NotesText: String);
begin
  AddTodoItem(HeaderText, NotesText);
end;

procedure TForm1.AddTodoItem(const HeaderText, NotesText: string);
var
  NewItem: TFrame1;
begin
  NewItem := TFrame1.Create(TodoScrollBox); // Assuming ScrollBox1 is your TScrollBox
  NewItem.Parent := TodoScrollBox;
  NewItem.LabelText.Caption := HeaderText; // Set the header text
  NewItem.NotesEdit.Text := NotesText; // Set the notes text
  NewItem.Top := TodoScrollBox.ControlCount * NewItem.Height; // Position the new item
  NewItem.Left := 0;
  NewItem.Visible := True;
end;

end.
