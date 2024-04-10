unit AddTodoForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinWXI, dxSkinXmas2008Blue, cxLabel, cxGeometry,
  dxFramedControl, cxTextEdit, dxPanel, cxMemo, Vcl.Menus, cxButtons;

type
  TTodoAddedEvent = procedure(Sender: TObject; const HeaderText, NotesText: String) of object;

  TForm2 = class(TForm)
    HeaderLabel: TcxLabel;
    MainPanel: TdxPanel;
    HeaderEdit: TcxTextEdit;
    NotesEdit: TcxMemo;
    NotesLabel: TcxLabel;
    AddTodoButton: TcxButton;
    CancelButton: TcxButton;
    procedure AddTodoButtonClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);


  private
    { Private declarations }
    FOnTodoAdded: TTodoAddedEvent;
  public
    { Public declarations }
    property OnTodoAdded: TTodoAddedEvent read FOnTodoAdded write FOnTodoAdded;
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.AddTodoButtonClick(Sender: TObject);
begin
  if Assigned(FOnTodoAdded) then
    FOnTodoAdded(Self, HeaderEdit.Text, NotesEdit.Text);
  Close;
end;

procedure TForm2.CancelButtonClick(Sender: TObject);
begin
  Close;
end;

end.
