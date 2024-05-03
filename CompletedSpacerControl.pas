unit CompletedSpacerControl;

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
  cxButtons, Vcl.ExtCtrls, dxGDIPlusClasses, cxImage, CommonUnit;

type
  TOnToggleCompletedExpanded = procedure(Sender: TObject; IsExpanded: Boolean) of object;

  TCompletedSpacerControl = class(TFrame)
    MainPanel: TdxPanel;
    CompletedLabel: TcxLabel;
    CompletedAmtText: TcxLabel;
    ArrowImageSide: TcxImage;
    ArrowImageDown: TcxImage;
    procedure MainPanelMouseEnter(Sender: TObject);
    procedure MainPanelMouseLeave(Sender: TObject);
    procedure MainPanelClick(Sender: TObject);
  private
    FOnToggleCompletedExpanded: TOnToggleCompletedExpanded;
  public
    IsExpanded: boolean;
    procedure SetExpanded(State: boolean);
    procedure SetCompletedAmount(amount: integer);
    property OnToggleCompletedExpanded: TOnToggleCompletedExpanded read FOnToggleCompletedExpanded write FOnToggleCompletedExpanded;
  end;

implementation

{$R *.dfm}

procedure TCompletedSpacerControl.SetCompletedAmount(amount: integer);
begin
  CompletedAmtText.Caption := IntToStr(amount);
end;

procedure TCompletedSpacerControl.SetExpanded(State: boolean);
begin
  IsExpanded := State;
  ArrowImageSide.Visible := not IsExpanded;
  ArrowImageDown.Visible := IsExpanded;
end;

procedure TCompletedSpacerControl.MainPanelClick(Sender: TObject);
begin
  SetExpanded(not IsExpanded);
  if Assigned(OnToggleCompletedExpanded) then
    OnToggleCompletedExpanded(Self, IsExpanded);
end;

procedure TCompletedSpacerControl.MainPanelMouseEnter(Sender: TObject);
begin
  MainPanel.Color := RGB(65, 65, 65);
end;

procedure TCompletedSpacerControl.MainPanelMouseLeave(Sender: TObject);
begin
  MainPanel.Color := RGB(50, 50, 50);
end;

end.
