unit TodoItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinWXI,
  dxSkinXmas2008Blue, cxGeometry, dxFramedControl, dxPanel, Vcl.StdCtrls,
  cxContainer, cxEdit, cxCheckBox, cxLabel, cxTextEdit, cxMemo, Vcl.Menus,
  cxButtons, CommonUnit, TodoItemData;

type
  TOnChangeCompleted = procedure(Sender: TObject) of object;
  TOnEditNotes = procedure(Sender: TObject) of object;

  TTodoItem = class(TFrame)
    procedure DeleteButtonClick(Sender: TObject);
    procedure MainPanelMouseEnter(Sender: TObject);
    procedure MainPanelMouseLeave(Sender: TObject);
    procedure MainPanelClick(Sender: TObject);
    procedure CompletedCheckEditClick(Sender: TObject);
    procedure NotesEditChange(Sender: TObject);
  private
    MainPanel: TdxPanel;
    CompletedCheckEdit: TcxCheckBox;
    LabelText: TcxLabel;
    NotesEdit: TcxMemo;
    DeleteButton: TcxButton;
    FOnChangeCompleted: TOnChangeCompleted;
    FOnEditNotes: TOnEditNotes;

    procedure SetExpandedState(State: Boolean);
  public
    NoNotify: Boolean;
    Collapsed: Boolean;
    ItemData: TTodoItemData;
    procedure Setup(Data: TTodoItemData);
    procedure OnShow();
    property OnChangeCompleted: TOnChangeCompleted read FOnChangeCompleted write FOnChangeCompleted;
    property OnEditNotes: TOnEditNotes read FOnEditNotes write FOnEditNotes;
  end;

implementation

{$R *.dfm}

procedure TTodoItem.CompletedCheckEditClick(Sender: TObject);
var
  CheckBox: TcxCheckBox;
begin
  if NoNotify then
     Exit();

  CheckBox := Sender as TcxCheckBox;
  ItemData.Completed := CheckBox.Checked;

  if Assigned(OnChangeCompleted) then
    OnChangeCompleted(Self);
end;

procedure TTodoItem.DeleteButtonClick(Sender: TObject);
begin
  // Have to use postmessage and not an event because there was a null when using an event.
  // Probably because the delete was triggered on button press but on button up behind the scenes
  // it was trying to access the deleted item. Using postmessage gets around this somehow.
  PostMessage(Application.MainForm.Handle, WM_DELETE_TODO_ITEM, WPARAM(Self), 0);
end;

procedure TTodoItem.MainPanelClick(Sender: TObject);
begin
  SetExpandedState(not Collapsed);
end;

procedure TTodoItem.MainPanelMouseEnter(Sender: TObject);
begin
  MainPanel.Color := RGB(65, 65, 65);
end;

procedure TTodoItem.MainPanelMouseLeave(Sender: TObject);
begin
  MainPanel.Color := RGB(50, 50, 50);
end;

procedure TTodoItem.OnShow();
begin
  SetExpandedState(True);
  NotesEdit.Properties.OnChange := NotesEditChange;
end;

procedure TTodoItem.Setup(Data: TTodoItemData);
begin
  ItemData := Data;
  LabelText.Caption := ItemData.Header;
  NotesEdit.Text := ItemData.Notes;
  CompletedCheckEdit.Checked := ItemData.Completed;
end;

procedure TTodoItem.SetExpandedState(State: Boolean);
begin
  if State then
    begin
      Self.Height := 170;
      NotesEdit.Show();

      Self.Refresh();
      MainPanel.Refresh();
      NotesEdit.Refresh();
    end
  else
    begin
      Self.Height := 40;
      NotesEdit.Hide();
      NotesEdit.Refresh();
    end;

  Collapsed := State;
end;

procedure TTodoItem.NotesEditChange(Sender: TObject);
begin
  ItemData.Notes := NotesEdit.Text;

  if Assigned(OnEditNotes) then
    OnEditNotes(Self);
end;

end.
