unit Calculator;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls,
<<<<<<< Updated upstream
  ExtCtrls, ActnList;
=======
  ExtCtrls, ActnList, Unit1, math, DefaultTranslator, LCLType, baseConvert,
  Clipbrd, ComCtrls, System.Uitypes, LCLTranslator;
>>>>>>> Stashed changes

type

  { TFormCalculator }

  TFormCalculator = class(TForm)
<<<<<<< Updated upstream
=======
    BaseButton: TButton;
    Base2: TMenuItem;
    Base3: TMenuItem;
    Base4: TMenuItem;
    Base5: TMenuItem;
    Base6: TMenuItem;
    Base7: TMenuItem;
    Base8: TMenuItem;
    CopyButton: TButton;
    CopyValueButton: TButton;
    PasteButton: TButton;
    ModButton: TButton;
    FactButton: TButton;
    BasePopupMenu: TPopupMenu;
    PowerButton: TButton;
    LogButton: TButton;
    LnButton: TButton;
    SecButton: TButton;
    CscButton: TButton;
    CotButton: TButton;
    SinButton: TButton;
    CosButton: TButton;
    TanButton: TButton;
    ToolBar: TToolBar;
    TrigBox: TGroupBox;
    MenuButton: TButton;
    ModeButton: TMenuItem;
    DarkThemeButton: TMenuItem;
    SimpleThemeButton: TMenuItem;
    LanguageButton: TMenuItem;
    StandardModeButton: TMenuItem;
    ScientificModeButton: TMenuItem;
    EnglishButton: TMenuItem;
    RussianButton: TMenuItem;
    AboutButton: TMenuItem;
    ThemeButton: TMenuItem;
    LightThemeButton: TMenuItem;
    MainPopupMenu: TPopupMenu;
    Separator1: TMenuItem;
>>>>>>> Stashed changes
    ZeroButton: TButton;
    SevenButton: TButton;
    InverseButton: TButton;
    PercentButton: TButton;
    TwoButton: TButton;
    FiveButton: TButton;
    EightButton: TButton;
    SquareButton: TButton;
    ChangeSignButton: TButton;
    ClearAllButton: TButton;
    OneButton: TButton;
    FourButton: TButton;
    CommaButton: TButton;
    ThreeButton: TButton;
    SixButton: TButton;
    NineButton: TButton;
    SqrtButton: TButton;
    ClearButton: TButton;
    ResultButton: TButton;
    PlusButton: TButton;
    MinusButton: TButton;
    MultiplyButton: TButton;
    DeleteButton: TButton;
    DivideButton: TButton;
    EditNum: TEdit;
    StandardBox: TGroupBox;
    ResultMemo: TMemo;
<<<<<<< Updated upstream
=======
    procedure Base2Click(Sender: TObject);
    procedure Base3Click(Sender: TObject);
    procedure Base4Click(Sender: TObject);
    procedure Base5Click(Sender: TObject);
    procedure Base6Click(Sender: TObject);
    procedure Base7Click(Sender: TObject);
    procedure Base8Click(Sender: TObject);
    procedure BaseButtonClick(Sender: TObject);
    procedure CopyButtonClick(Sender: TObject);
    procedure CopyValueButtonClick(Sender: TObject);
    procedure EditNumResize(Sender: TObject);
    procedure EnglishButtonClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure PasteButtonClick(Sender: TObject);
    procedure DarkThemeButtonClick(Sender: TObject);
    procedure EditNumChange(Sender: TObject);
    procedure EditNumKeyPress(Sender: TObject; var Key: char);
    procedure FactButtonClick(Sender: TObject);
    procedure LightThemeButtonClick(Sender: TObject);
    procedure LnButtonClick(Sender: TObject);
    procedure LogButtonClick(Sender: TObject);
    procedure ResultMemoResize(Sender: TObject);
    procedure RussianButtonClick(Sender: TObject);
    procedure StandardBoxResize(Sender: TObject);
    procedure StandardBoxStartDock(Sender: TObject;
      var DragObject: TDragDockObject);
    procedure StandardModeButtonClick(Sender: TObject);
    procedure ModButtonClick(Sender: TObject);
    procedure PowerButtonClick(Sender: TObject);
    procedure CosButtonClick(Sender: TObject);
    procedure CotButtonClick(Sender: TObject);
    procedure CscButtonClick(Sender: TObject);
    procedure SecButtonClick(Sender: TObject);
    procedure SimpleThemeButtonClick(Sender: TObject);
    procedure SinButtonClick(Sender: TObject);
    procedure StandardBoxClick(Sender: TObject);
    procedure TanButtonClick(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure MainMenuClick(Sender: TObject);
>>>>>>> Stashed changes
    procedure ChangeSignButtonClick(Sender: TObject);
    procedure ClearAllButtonClick(Sender: TObject);
    procedure ClearButtonClick(Sender: TObject);
    procedure DeleteButtonClick(Sender: TObject);
    procedure DivideButtonClick(Sender: TObject);
    procedure EightButtonClick(Sender: TObject);
    procedure FiveButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FourButtonClick(Sender: TObject);
    procedure InverseButtonClick(Sender: TObject);
<<<<<<< Updated upstream
=======
    procedure MenuButtonClick(Sender: TObject);
    procedure AboutButtonClick(Sender: TObject);
    procedure ModeButtonClick(Sender: TObject);
    procedure ThemeButtonClick(Sender: TObject);
>>>>>>> Stashed changes
    procedure MinusButtonClick(Sender: TObject);
    procedure MultiplyButtonClick(Sender: TObject);
    procedure NineButtonClick(Sender: TObject);
    procedure OneButtonClick(Sender: TObject);
    procedure PercentButtonClick(Sender: TObject);
    procedure PlusButtonClick(Sender: TObject);
    procedure ResultButtonClick(Sender: TObject);
    procedure SevenButtonClick(Sender: TObject);
    procedure SixButtonClick(Sender: TObject);
    procedure SqrtButtonClick(Sender: TObject);
    procedure SquareButtonClick(Sender: TObject);
    procedure ThreeButtonClick(Sender: TObject);
<<<<<<< Updated upstream
=======
    procedure ToolBarClick(Sender: TObject);
    procedure ToolBarResize(Sender: TObject);
    procedure TrigBoxClick(Sender: TObject);
    procedure TrigBoxResize(Sender: TObject);
>>>>>>> Stashed changes
    procedure TwoButtonClick(Sender: TObject);
    procedure ZeroButtonClick(Sender: TObject);
    procedure CommaButtonClick(Sender: TObject);
    procedure ResultMemoChange(Sender: TObject);
  private

  public

  end;

var
  FormCalculator: TFormCalculator;
  Flag : Boolean;

implementation

{$R *.lfm}

{ TFormCalculator }

resourcestring
  SmtWrong = 'Something went wrong';
  DivZero = 'Cannot divide by zero';

procedure TFormCalculator.ResultMemoChange(Sender: TObject);
begin

end;

procedure TFormCalculator.CommaButtonClick(Sender: TObject);
begin
  if EditNum.Caption = '' then
<<<<<<< Updated upstream
       EditNum.Caption:= '0,'
  else EditNum.Caption:= EditNum.Caption + ',';
=======
       EditNum.Caption:= '0'+ DefaultFormatSettings.DecimalSeparator
  else if pos(DefaultFormatSettings.DecimalSeparator,EditNum.Caption) = 0 then
       begin
       EditNum.Caption:= EditNum.Caption + DefaultFormatSettings.DecimalSeparator;
       end
  else if pos(DefaultFormatSettings.DecimalSeparator,EditNum.Caption) <> 0 then
  begin

  end;
>>>>>>> Stashed changes
end;

procedure TFormCalculator.ZeroButtonClick(Sender: TObject);
begin
  EditNum.Caption:= EditNum.Caption + '0';
end;

procedure TFormCalculator.OneButtonClick(Sender: TObject);
begin
  EditNum.Caption:= EditNum.Caption + '1';
end;

procedure TFormCalculator.PercentButtonClick(Sender: TObject);
begin
  if (ResultMemo.Lines[0] <> '') and (EditNum.Caption <> '') and (pos('base', ResultMemo.Text) = 0) then
       EditNum.Caption:= FloatToStr(StrToFloat(ResultMemo.Lines[0]) * (StrToFloat(EditNum.Caption)/100))
  else
  begin

  end
end;

procedure TFormCalculator.PlusButtonClick(Sender: TObject);
begin
  if (ResultMemo.Lines[1] = '+') and (EditNum.Caption = '') then
     begin

     end
  else if (ResultMemo.Lines[0] = '') and (EditNum.Caption = '') then
     begin

     end
  else if (ResultMemo.Lines[0] <> '')and (EditNum.Caption = '') and (ResultMemo.Lines[1] <> '+') then
     begin
      ResultMemo.Lines[1] := '+';
     end
  else if (ResultMemo.Lines[0] = '') and (EditNum.Caption <> '') then
    begin
      ResultMemo.Lines.Clear;
      ResultMemo.Lines.Add(EditNum.Caption);
      ResultMemo.Lines.Add('+');
      EditNum.Caption:= '';
    end
  else if (ResultMemo.Lines[0] <> '') and (EditNum.Caption <> '') and (ResultMemo.Lines[1] <> '') and (ResultMemo.Lines[2] <> '') and (ResultMemo.Lines[3] <> '')then
    begin
      Flag:= False;
      ResultMemo.Lines.Clear;
      ResultMemo.Lines.Add(EditNum.Caption);
      ResultMemo.Lines.Add('+');
      EditNum.Caption:= '';
    end
  else if (ResultMemo.Lines[0] <> '') and (EditNum.Caption <> '') and (ResultMemo.Lines[1] <> '+') then
    begin
      ResultMemo.Lines[1] := '+';
    end
  else if (ResultMemo.Lines[0] <> '') and (ResultMemo.Lines[1] = '+') and (EditNum.Caption <> '') and (Flag = False) then
     begin
      Flag := True;
      ResultMemo.Lines.Add(EditNum.Caption);
      ResultMemo.Lines.Add('=');
      EditNum.Caption:= FloatToStr(StrToFloat(ResultMemo.Lines[0]) + StrToFloat(EditNum.Caption));
    end
  else if (Flag = True) then
      begin

      end
  else
      begin
       ShowMessage(SmtWrong);
       Application.Terminate;
      end;
end;

procedure TFormCalculator.ResultButtonClick(Sender: TObject);
begin
  try
  if (ResultMemo.Lines[0] <> '')and (ResultMemo.Lines[1] <> '') and (EditNum.Caption <> '') then
      if (ResultMemo.Lines[2] = '') then
        begin
              if pos('base', ResultMemo.Text) <> 0 then begin

                end
              else if ResultMemo.Lines[1] = '+' then
                begin
                     Flag := True;
                     ResultMemo.Lines[2] := EditNum.Caption;
                     ResultMemo.Lines[3] := '=';
                     EditNum.Caption := FloatToStr((StrToFloat(ResultMemo.Lines[0]) + StrToFloat(EditNum.Caption)));
                end
              else if  ResultMemo.Lines[1] = '-' then
                begin
                     Flag := True;
                     ResultMemo.Lines[2] := EditNum.Caption;
                     ResultMemo.Lines[3] := '=';
                     EditNum.Caption := FloatToStr((StrToFloat(ResultMemo.Lines[0]) - StrToFloat(EditNum.Caption)));
                end
              else if  ResultMemo.Lines[1] = '×' then
                begin
                     Flag := True;
                     ResultMemo.Lines[2] := EditNum.Caption;
                     ResultMemo.Lines[3] := '=';
                     EditNum.Caption := FloatToStr((StrToFloat(ResultMemo.Lines[0]) * StrToFloat(EditNum.Caption)));
                end
              else if  (ResultMemo.Lines[1] = '÷') and (EditNum.Caption = '0') then
                begin
                     ShowMessage(DivZero);
                     EditNum.Caption:= '';
                end
              else if  ResultMemo.Lines[1] = '÷' then
                begin
                     Flag := True;
                     ResultMemo.Lines[2] := EditNum.Caption;
                     ResultMemo.Lines[3] := '=';
                     EditNum.Caption := FloatToStr((StrToFloat(ResultMemo.Lines[0]) / StrToFloat(EditNum.Caption)));
                end
        end
      else if (ResultMemo.Lines[3] <> '') then
          begin
                if ResultMemo.Lines[1] = '+' then
                  begin
                       ResultMemo.Lines[0] := EditNum.Caption;
                       EditNum.Caption := FloatToStr((StrToFloat(ResultMemo.Lines[0]) + StrToFloat(ResultMemo.Lines[2])));
                  end
                else if  ResultMemo.Lines[1] = '-' then
                  begin
                       ResultMemo.Lines[0] := EditNum.Caption;
                       EditNum.Caption := FloatToStr((StrToFloat(ResultMemo.Lines[0]) - StrToFloat(ResultMemo.Lines[2])));
                  end
                else if  ResultMemo.Lines[1] = '×' then
                  begin
                       ResultMemo.Lines[0] := EditNum.Caption;
                       EditNum.Caption := FloatToStr((StrToFloat(ResultMemo.Lines[0]) * StrToFloat(ResultMemo.Lines[2])));
                  end
                else if  (ResultMemo.Lines[1] = '÷') and (EditNum.Caption = '0') then
                  begin
                       ShowMessage(DivZero);
                       EditNum.Caption:= '';
                  end
                else if  ResultMemo.Lines[1] = '÷' then
                  begin
                       ResultMemo.Lines[0] := EditNum.Caption;
                       EditNum.Caption := FloatToStr((StrToFloat(ResultMemo.Lines[0]) / StrToFloat(ResultMemo.Lines[2])));
                  end
           end
  except
    ShowMessage(SmtWrong);
    Application.Terminate;
  end;
end;

<<<<<<< Updated upstream
=======
procedure TFormCalculator.ScientificModeButtonClick(Sender: TObject);
begin
  TrigBox.Enabled:= True;
  TrigBox.Visible:= True;
  //TrigBox.AnchorToNeighbour(akRight,5,StandardBox);
  //TrigBox.AnchorToNeighbour(akTop,5,EditNum);
  //TrigBox.AnchorToNeighbour(akBottom,5,nil);
  //TrigBox.AnchorToNeighbour(akleft,5,nil);
  TrigBox.Align:= alClient;;
end;

>>>>>>> Stashed changes
procedure TFormCalculator.SevenButtonClick(Sender: TObject);
begin
  EditNum.Caption:= EditNum.Caption + '7';
end;

procedure TFormCalculator.SixButtonClick(Sender: TObject);
begin
  EditNum.Caption:= EditNum.Caption + '6';
end;

procedure TFormCalculator.SqrtButtonClick(Sender: TObject);
begin
  try
  EditNum.Caption:= FloatToStr(Sqrt(StrToFloat(EditNum.Caption)));
  except

  end;
end;

procedure TFormCalculator.SquareButtonClick(Sender: TObject);
begin
  try
  EditNum.Caption:= FloatToStr(Sqr(StrToFloat(EditNum.Caption)));
  except

  end;
end;

procedure TFormCalculator.FourButtonClick(Sender: TObject);
begin
  EditNum.Caption:= EditNum.Caption + '4';
end;

procedure TFormCalculator.InverseButtonClick(Sender: TObject);
begin
  try
  EditNum.Caption:= FloatToStr(1 / StrToFloat(EditNum.Caption));
  except

  end;
end;

<<<<<<< Updated upstream
=======
procedure TFormCalculator.MenuButtonClick(Sender: TObject);
begin
  MainPopupMenu.PopUp;
end;

procedure TFormCalculator.AboutButtonClick(Sender: TObject);
begin
  AboutForm.ShowModal;
end;

procedure TFormCalculator.ModeButtonClick(Sender: TObject);
begin

end;

procedure TFormCalculator.ThemeButtonClick(Sender: TObject);
begin

end;

>>>>>>> Stashed changes
procedure TFormCalculator.MinusButtonClick(Sender: TObject);
begin
  if (ResultMemo.Lines[1] = '-') and (EditNum.Caption = '') then
     begin

     end
  else if (ResultMemo.Lines[0] = '') and (EditNum.Caption = '') then
     begin

     end
  else if (ResultMemo.Lines[0] <> '')and (EditNum.Caption = '') and (ResultMemo.Lines[1] <> '-') then
     begin
        ResultMemo.Lines[1] := '-';
     end
  else if (ResultMemo.Lines[0] = '') and (EditNum.Caption <> '') then
    begin
      ResultMemo.Lines.Clear;
      ResultMemo.Lines.Add(EditNum.Caption);
      ResultMemo.Lines.Add('-');
      EditNum.Caption:= '';
    end
  else if (ResultMemo.Lines[0] <> '') and (EditNum.Caption <> '') and (ResultMemo.Lines[1] <> '') and (ResultMemo.Lines[2] <> '') and (ResultMemo.Lines[3] <> '')then
    begin
      Flag:= False;
      ResultMemo.Lines.Clear;
      ResultMemo.Lines.Add(EditNum.Caption);
      ResultMemo.Lines.Add('-');
      EditNum.Caption:= '';
    end
  else if (ResultMemo.Lines[1] <> '') and (EditNum.Caption = '') then
     begin
      ResultMemo.Lines[1] := '-';
     end
  else if (ResultMemo.Lines[0] <> '') and (EditNum.Caption <> '') and (ResultMemo.Lines[1] <> '-') then
    begin
      ResultMemo.Lines[1] := '-';
    end
  else if (ResultMemo.Lines[0] <> '') and (ResultMemo.Lines[1] = '-') and (EditNum.Caption <> '') and (Flag = False) then
     begin
      Flag := True;
      ResultMemo.Lines.Add(EditNum.Caption);
      ResultMemo.Lines.Add('=');
      EditNum.Caption:= FloatToStr(StrToFloat(ResultMemo.Lines[0]) - StrToFloat(EditNum.Caption));
    end
  else if (Flag = True) then
      begin

      end
  else
      begin
       ShowMessage(SmtWrong);
       Application.Terminate;
      end;
end;

procedure TFormCalculator.MultiplyButtonClick(Sender: TObject);
begin
  if (ResultMemo.Lines[1] = '×') and (EditNum.Caption = '') then
     begin

     end
  else if (ResultMemo.Lines[0] = '') and (EditNum.Caption = '') then
     begin

     end
  else if (ResultMemo.Lines[0] <> '') and (EditNum.Caption = '') and (ResultMemo.Lines[1] <> '×') then
     begin
      ResultMemo.Lines[1] := '×';
     end
  else if (ResultMemo.Lines[0] = '') and (EditNum.Caption <> '') then
    begin
      ResultMemo.Lines.Clear;
      ResultMemo.Lines.Add(EditNum.Caption);
      ResultMemo.Lines.Add('×');
      EditNum.Caption:= '';
    end
  else if (ResultMemo.Lines[0] <> '') and (EditNum.Caption <> '') and (ResultMemo.Lines[1] <> '') and (ResultMemo.Lines[2] <> '') and (ResultMemo.Lines[3] <> '')then
    begin
      Flag:= False;
      ResultMemo.Lines.Clear;
      ResultMemo.Lines.Add(EditNum.Caption);
      ResultMemo.Lines.Add('×');
      EditNum.Caption:= '';
    end
  else if (ResultMemo.Lines[1] <> '') and (EditNum.Caption = '') then
     begin
      ResultMemo.Lines[1] := '×';
     end
  else if (ResultMemo.Lines[0] <> '') and (EditNum.Caption <> '') and (ResultMemo.Lines[1] <> '×') then
    begin
      ResultMemo.Lines[1] := '×';
    end
  else if (ResultMemo.Lines[0] <> '') and (ResultMemo.Lines[1] = '×') and (EditNum.Caption <> '') and (Flag = False) then
     begin
      Flag := True;
      ResultMemo.Lines.Add(EditNum.Caption);
      ResultMemo.Lines.Add('=');
      EditNum.Caption:= FloatToStr(StrToFloat(ResultMemo.Lines[0]) * StrToFloat(EditNum.Caption));
    end
  else if (Flag = True) then
      begin

      end
  else
      begin
       ShowMessage(SmtWrong);
       Application.Terminate;
      end;
end;

procedure TFormCalculator.NineButtonClick(Sender: TObject);
begin
  EditNum.Caption:= EditNum.Caption + '9';
end;

procedure TFormCalculator.FiveButtonClick(Sender: TObject);
begin
  EditNum.Caption:= EditNum.Caption + '5';
end;

procedure TFormCalculator.FormCreate(Sender: TObject);
begin
<<<<<<< Updated upstream
=======

  ResultMemo.Align:= alTop;
  EditNum.Align:= alTop;
  StandardBox.Align:= alBottom;

  FormCalculator.ChildSizing.VerticalSpacing:=5;
  FormCalculator.ChildSizing.HorizontalSpacing:=5;

  ToolBar.AutoSize := True;
  //ToolBar.ButtonWidth:= Round(FormCalculator.ClientWidth / 4);

  ActiveControl := EditNum;

  CommaButton.Caption:= DefaultFormatSettings.DecimalSeparator;

>>>>>>> Stashed changes
  ResultMemo.Lines.Clear;

  SetDefaultLang('en');

  Flag := False;
<<<<<<< Updated upstream
=======
  TrigBox.ChildSizing.Layout:= cclLeftToRightThenTopToBottom;
  TrigBox.ChildSizing.ControlsPerLine:= 4;
  TrigBox.ChildSizing.VerticalSpacing:= 2;
  TrigBox.ChildSizing.HorizontalSpacing:= 2;
  TrigBox.ChildSizing.LeftRightSpacing:= 2;
  TrigBox.ChildSizing.TopBottomSpacing:= 2;
  TrigBox.ChildSizing.EnlargeHorizontal:= crsHomogenousChildResize;
  TrigBox.ChildSizing.EnlargeVertical:= crsHomogenousChildResize;

  StandardBox.ChildSizing.Layout:= cclLeftToRightThenTopToBottom;
  StandardBox.ChildSizing.ControlsPerLine:= 4;
  StandardBox.ChildSizing.VerticalSpacing:= 2;
  StandardBox.ChildSizing.HorizontalSpacing:= 2;
  StandardBox.ChildSizing.LeftRightSpacing:= 2;
  StandardBox.ChildSizing.TopBottomSpacing:= 2;
  StandardBox.ChildSizing.EnlargeHorizontal:= crsHomogenousChildResize;
  StandardBox.ChildSizing.EnlargeVertical:= crsHomogenousChildResize;
>>>>>>> Stashed changes
end;

procedure TFormCalculator.EightButtonClick(Sender: TObject);
begin
  EditNum.Caption:= EditNum.Caption + '8';
end;

procedure TFormCalculator.ChangeSignButtonClick(Sender: TObject);
begin
  try
    EditNum.Caption:= FloatToStr(-1 * StrToFloat(EditNum.Caption));
  except

  end;
end;

<<<<<<< Updated upstream
=======
procedure TFormCalculator.MainMenuClick(Sender: TObject);
begin

end;

procedure TFormCalculator.FormClick(Sender: TObject);
begin

end;

procedure TFormCalculator.TanButtonClick(Sender: TObject);
begin
  try
  EditNum.Caption:= FloatToStr(Tan(StrToFloat(EditNum.Caption)))
  except

  end;
end;

procedure TFormCalculator.SinButtonClick(Sender: TObject);
begin
  try
  EditNum.Caption:= FloatToStr(Sin(StrToFloat(EditNum.Caption)))
  except

  end;
end;

procedure TFormCalculator.StandardBoxClick(Sender: TObject);
begin

end;

procedure TFormCalculator.CosButtonClick(Sender: TObject);
begin
  try
  EditNum.Caption:= FloatToStr(Cos(StrToFloat(EditNum.Caption)))
  except

  end;
end;

procedure TFormCalculator.PowerButtonClick(Sender: TObject);
begin
  if (ResultMemo.Lines[1] = '^') and (EditNum.Caption = '') then
     begin

     end
  else if (ResultMemo.Lines[0] = '') and (EditNum.Caption = '') then
     begin

     end
  else if (ResultMemo.Lines[0] <> '')and (EditNum.Caption = '') and (ResultMemo.Lines[1] <> '^') then
     begin
      ResultMemo.Lines[1] := '^';
     end
  else if (ResultMemo.Lines[0] = '') and (EditNum.Caption <> '') then
    begin
      ResultMemo.Lines.Clear;
      ResultMemo.Lines.Add(EditNum.Caption);
      ResultMemo.Lines.Add('^');
      EditNum.Caption:= '';
    end
  else if (ResultMemo.Lines[0] <> '') and (EditNum.Caption <> '') and (ResultMemo.Lines[1] <> '') and (ResultMemo.Lines[2] <> '') and (ResultMemo.Lines[3] <> '')then
    begin
      Flag:= False;
      ResultMemo.Lines.Clear;
      ResultMemo.Lines.Add(EditNum.Caption);
      ResultMemo.Lines.Add('^');
      EditNum.Caption:= '';
    end
  else if (ResultMemo.Lines[0] <> '') and (EditNum.Caption <> '') and (ResultMemo.Lines[1] <> '^') then
    begin
      ResultMemo.Lines[1] := '^';
    end
  else if (ResultMemo.Lines[0] <> '') and (ResultMemo.Lines[1] = '^') and (EditNum.Caption <> '') and (Flag = False) then
     begin
      Flag := True;
      ResultMemo.Lines.Add(EditNum.Caption);
      ResultMemo.Lines.Add('=');
      EditNum.Caption:= FloatToStr(Power(StrToFloat(ResultMemo.Lines[0]),StrToFloat(EditNum.Caption)));
    end
  else if (Flag = True) then
      begin

      end
  else
      begin
       ShowMessage(SmtWrong);
       Application.Terminate;
      end;
end;

procedure TFormCalculator.ModButtonClick(Sender: TObject);
begin
  begin
  if (ResultMemo.Lines[1] = 'mod') and (EditNum.Caption = '') then
     begin

     end
  else if (ResultMemo.Lines[0] = '') and (EditNum.Caption = '') then
     begin

     end
  else if (ResultMemo.Lines[0] <> '')and (EditNum.Caption = '') and (ResultMemo.Lines[1] <> 'mod') then
     begin
      ResultMemo.Lines[1] := 'mod';
     end
  else if (ResultMemo.Lines[0] = '') and (EditNum.Caption <> '') then
    begin
      ResultMemo.Lines.Clear;
      ResultMemo.Lines.Add(EditNum.Caption);
      ResultMemo.Lines.Add('mod');
      EditNum.Caption:= '';
    end
    else if (EditNum.Caption = '0') and (ResultMemo.Lines[0] <> '') and (ResultMemo.Lines[1] = 'mod') and (Flag = False) then
      begin
         Flag := True;
         ResultMemo.Lines.Add('0');
         ResultMemo.Lines.Add('=');
         EditNum.Caption:= '0';
      end
  else if (ResultMemo.Lines[0] <> '') and (EditNum.Caption <> '') and (ResultMemo.Lines[1] <> '') and (ResultMemo.Lines[2] <> '') and (ResultMemo.Lines[3] <> '')then
    begin
      Flag:= False;
      ResultMemo.Lines.Clear;
      ResultMemo.Lines.Add(EditNum.Caption);
      ResultMemo.Lines.Add('mod');
      EditNum.Caption:= '';
    end
  else if (ResultMemo.Lines[0] <> '') and (EditNum.Caption <> '') and (ResultMemo.Lines[1] <> 'mod') then
    begin
      ResultMemo.Lines[1] := 'mod';
    end
  else if (ResultMemo.Lines[0] <> '') and (ResultMemo.Lines[1] = 'mod') and (EditNum.Caption <> '') and (Flag = False) then
     begin
      Flag := True;
      ResultMemo.Lines.Add(EditNum.Caption);
      ResultMemo.Lines.Add('=');
      EditNum.Caption:= FloatToStr(StrToFloat(ResultMemo.Lines[0]) mod StrToFloat(EditNum.Caption));
    end
  else if (Flag = True) then
      begin

      end
  else
      begin
       ShowMessage(SmtWrong);
       Application.Terminate;
      end;
end;
end;

procedure TFormCalculator.LogButtonClick(Sender: TObject);
begin
  try
  if StrToFloat(EditNum.Caption) > 0 then
  try
  EditNum.Caption:= FloatToStr(Log10(StrToFloat(EditNum.Caption)));
  except
    ShowMessage(InvalidInput);
  end
  else
  begin
    ShowMessage(InvalidInput);
  end;
  except
  end;
end;

procedure TFormCalculator.ResultMemoResize(Sender: TObject);
begin
  if TrigBox.Enabled = False then
  ResultMemo.Height:= Round((FormCalculator.ClientHeight - ToolBar.Height) / 3) -20
  else if TrigBox.Enabled = True then begin
  ResultMemo.Height:= Round((FormCalculator.ClientHeight  - ToolBar.Height)/ 6) -20
  end;
end;

procedure TFormCalculator.RussianButtonClick(Sender: TObject);
begin
  SetDefaultLang('ru');
end;

procedure TFormCalculator.StandardBoxResize(Sender: TObject);
begin
  if TrigBox.Enabled = False then
  StandardBox.Height:= Round((FormCalculator.ClientHeight  - ToolBar.Height)/ 2) + 30
  else if TrigBox.Enabled = True then begin
  StandardBox.Height:= Round((FormCalculator.ClientHeight  - ToolBar.Height)/ 2) +30
  end;
end;

procedure TFormCalculator.StandardBoxStartDock(Sender: TObject;
  var DragObject: TDragDockObject);
begin

end;

procedure TFormCalculator.StandardModeButtonClick(Sender: TObject);
begin
  TrigBox.Enabled:= False;
  TrigBox.Visible:= False;
  TrigBox.Align:= alNone;
  FormCalculator.AutoSize:= True;
end;

procedure TFormCalculator.LnButtonClick(Sender: TObject);
begin
  try
  if StrToFloat(EditNum.Caption) > 0 then
  try
  EditNum.Caption:= FloatToStr(LogN(Exp(1),StrToFloat(EditNum.Caption)));
  except
    ShowMessage(InvalidInput);
  end
  else
  begin
    ShowMessage(InvalidInput);
  end;
  except
  end;
end;

procedure TFormCalculator.BaseButtonClick(Sender: TObject);
begin
  BasePopupMenu.PopUp;
end;

procedure TFormCalculator.Base2Click(Sender: TObject);
begin
  try
  begin
  ResultMemo.Lines.Clear;
  ResultMemo.Lines[0] := EditNum.Caption + ' base 10 is ' + baseToBase(EditNum.Caption,10,2) + ' base 2';
  end
  except
  end;
end;

procedure TFormCalculator.Base3Click(Sender: TObject);
begin
  try
  begin
  ResultMemo.Lines.Clear;
  ResultMemo.Lines[0] := EditNum.Caption + ' base 10 is ' + baseToBase(EditNum.Caption,10,3) + ' base 3';
  end
  except
  end;
end;

procedure TFormCalculator.Base4Click(Sender: TObject);
begin
  try
  begin
  ResultMemo.Lines.Clear;
  ResultMemo.Lines[0] := EditNum.Caption + ' base 10 is ' + baseToBase(EditNum.Caption,10,4) + ' base 4';
  end
  except
  end;
end;

procedure TFormCalculator.Base7Click(Sender: TObject);
begin
  try
  begin
  ResultMemo.Lines.Clear;
  ResultMemo.Lines[0] := EditNum.Caption + ' base 10 is ' + baseToBase(EditNum.Caption,10,7) + ' base 7';
  end
  except
  end;
end;

procedure TFormCalculator.Base8Click(Sender: TObject);
begin
  try
  begin
  ResultMemo.Lines.Clear;
  ResultMemo.Lines[0] := EditNum.Caption + ' base 10 is ' + baseToBase(EditNum.Caption,10,8) + ' base 8';
  end
  except
  end;
end;

procedure TFormCalculator.Base6Click(Sender: TObject);
begin
  try
  begin
  ResultMemo.Lines.Clear;
  ResultMemo.Lines[0] := EditNum.Caption + ' base 10 is ' + baseToBase(EditNum.Caption,10,6) + ' base 6';
  end
  except
  end;
end;

procedure TFormCalculator.Base5Click(Sender: TObject);
begin
  try
  begin
  ResultMemo.Lines.Clear;
  ResultMemo.Lines[0] := EditNum.Caption + ' base 10 is ' + baseToBase(EditNum.Caption,10,5) + ' base 5';
  end
  except
  end;
end;

procedure TFormCalculator.CopyButtonClick(Sender: TObject);
begin
  if pos('base',ResultMemo.Text) <> 0 then begin
    ResultMemo.SelectAll;
    Clipboard.AsText:= ResultMemo.Text;
    ResultMemo.SelLength := 0;
  end
  else
    ResultMemo.Lines.Delimiter := ' ';
    ResultMemo.Lines.StrictDelimiter := True;
    Clipboard.AsText:= ResultMemo.Lines.DelimitedText + EditNum.Text;
end;

procedure TFormCalculator.CopyValueButtonClick(Sender: TObject);
begin
  Clipboard.AsText:= EditNum.Text;
end;

procedure TFormCalculator.EditNumResize(Sender: TObject);
begin
  if TrigBox.Enabled = False then
  EditNum.Height:= Round((FormCalculator.ClientHeight  - ToolBar.Height)/ 6) -20
  else if TrigBox.Enabled = True then begin
   EditNum.Height:= Round((FormCalculator.ClientHeight  - ToolBar.Height)/ 12) -20
  end;
end;

procedure TFormCalculator.EnglishButtonClick(Sender: TObject);
begin
  SetDefaultLang('en');
end;

procedure TFormCalculator.FormResize(Sender: TObject);
begin

end;

procedure TFormCalculator.PasteButtonClick(Sender: TObject);
var TestString : string;
    s : Extended;
begin
  TestString := Clipboard.AsText;
  if not TryStrToFloat(TestString,s) then begin

  end
  else EditNum.Text:= TestString;
end;

procedure TFormCalculator.DarkThemeButtonClick(Sender: TObject);
begin
  FormCalculator.Color:= clSilver;
  ResultMemo.Color:= clSilver;
  EditNum.Color:= clSilver;
end;

procedure TFormCalculator.EditNumChange(Sender: TObject);
var
  v: extended;
begin
  if not TryStrToFloat(EditNum.Text, v) then begin
     EditNum.Caption  := '';     // default value

  end else begin

  end;
end;

procedure TFormCalculator.EditNumKeyPress(Sender: TObject; var Key: char);
const
  Backspace = #8;
  AllowKeys: set of Char = ['0'..'9', Backspace];
begin
  if Key = #47 then DivideButton.Click
  else if Key = #43 then PlusButton.Click
  else if Key = #42 then MultiplyButton.Click
  else if Key = #45 then MinusButton.Click
  else if Key = #13 then ResultButton.Click
  else if Key = '.' then Key := DefaultFormatSettings.DecimalSeparator;
  if not ((Key in AllowKeys) or
    (Key = DefaultFormatSettings.DecimalSeparator) and (Pos(Key, EditNum.Text) = 0)) then
  begin
    Key := #0;
  end
end;

procedure TFormCalculator.FactButtonClick(Sender: TObject);
begin
  try
  EditNum.Caption:= IntToStr(factorial(StrToInt(EditNum.Caption)));
  except

  end;
end;

procedure TFormCalculator.LightThemeButtonClick(Sender: TObject);
begin
  FormCalculator.Color:= clNone;
  ResultMemo.Color:= clNone;
  EditNum.Color:= clNone;
end;

procedure TFormCalculator.CotButtonClick(Sender: TObject);
begin
  try
  EditNum.Caption:= FloatToStr(Cotan(StrToFloat(EditNum.Caption)))
  except

  end;
end;

procedure TFormCalculator.CscButtonClick(Sender: TObject);
begin
  try
  EditNum.Caption:= FloatToStr(Cosecant(StrToFloat(EditNum.Caption)))
  except
  end;
end;

procedure TFormCalculator.SecButtonClick(Sender: TObject);
begin
  try
  EditNum.Caption:= FloatToStr(Secant(StrToFloat(EditNum.Caption)))
  except
  end;
end;

procedure TFormCalculator.SimpleThemeButtonClick(Sender: TObject);
begin
  FormCalculator.Color:= TColor($808000);
  ResultMemo.Color:= TColor($C0DCC0);
  EditNum.Color:=  TColor($F0CAA6);
end;

>>>>>>> Stashed changes
procedure TFormCalculator.ClearAllButtonClick(Sender: TObject);
begin
  EditNum.Caption:= '';
end;

procedure TFormCalculator.ClearButtonClick(Sender: TObject);
begin
  ResultMemo.Lines.Clear;
  EditNum.Caption:= '';
  Flag := False;
end;

procedure TFormCalculator.DeleteButtonClick(Sender: TObject);
var
  a : string;
begin
  a := EditNum.Caption;
  if (length(a) = 2) and (a[1] = '-') then
     begin
       a := '';
       EditNum.Caption:= a;
     end
  else
      begin
       delete(a,length(a),1);
       EditNum.Caption:= a;
      end;
end;

procedure TFormCalculator.DivideButtonClick(Sender: TObject);
begin
  if (ResultMemo.Lines[1] = '÷') and (EditNum.Caption = '') then
     begin

     end
  else if (ResultMemo.Lines[0] = '') and (EditNum.Caption = '') then
     begin

     end
  else if (ResultMemo.Lines[0] <> '')and (EditNum.Caption = '') and (ResultMemo.Lines[1] <> '÷') then
     begin
       ResultMemo.Lines[1] := '÷';
     end
  else if (ResultMemo.Lines[0] = '') and (EditNum.Caption <> '') then
    begin
      ResultMemo.Lines.Clear;
      ResultMemo.Lines.Add(EditNum.Caption);
      ResultMemo.Lines.Add('÷');
      EditNum.Caption:= '';
    end
  else if (ResultMemo.Lines[0] <> '') and (EditNum.Caption <> '') and (ResultMemo.Lines[1] <> '') and (ResultMemo.Lines[2] <> '') and (ResultMemo.Lines[3] <> '')then
    begin
      Flag:= False;
      ResultMemo.Lines.Clear;
      ResultMemo.Lines.Add(EditNum.Caption);
      ResultMemo.Lines.Add('÷');
      EditNum.Caption:= '';
    end
  else if (ResultMemo.Lines[0] <> '') and (EditNum.Caption <> '') and (ResultMemo.Lines[1] <> '÷') then
    begin
      ResultMemo.Lines[1] := '÷';
    end
  else if (ResultMemo.Lines[1] <> '÷') then
     begin
      ResultMemo.Lines[1] := '÷';
     end
  else if (ResultMemo.Lines[0] <> '')  and (ResultMemo.Lines[1] = '÷') and (EditNum.Caption <> '') and (Flag = False) and (EditNum.Caption <> '0') then
     begin
      Flag := True;
      ResultMemo.Lines.Add(EditNum.Caption);
      ResultMemo.Lines.Add('=');
      EditNum.Caption:= FloatToStr(StrToFloat(ResultMemo.Lines[0]) / StrToFloat(EditNum.Caption));
    end
  else if (Flag = True) then
      begin

      end
  else if (EditNum.Caption = '0') then
      begin
         ShowMessage(DivZero);
         EditNum.Caption := '';
      end
  else
      begin
       ShowMessage(SmtWrong);
       Application.Terminate;
      end;
end;

procedure TFormCalculator.ThreeButtonClick(Sender: TObject);
begin
  EditNum.Caption:= EditNum.Caption + '3';
end;

<<<<<<< Updated upstream
=======
procedure TFormCalculator.ToolBarClick(Sender: TObject);
begin

end;

procedure TFormCalculator.ToolBarResize(Sender: TObject);
begin
  ToolBar.ButtonWidth:= Round(FormCalculator.ClientWidth / 4);
end;

procedure TFormCalculator.TrigBoxClick(Sender: TObject);
begin

end;

procedure TFormCalculator.TrigBoxResize(Sender: TObject);
begin
  TrigBox.Height:= Round((FormCalculator.ClientHeight  - ToolBar.Height)/ 4);
end;

>>>>>>> Stashed changes
procedure TFormCalculator.TwoButtonClick(Sender: TObject);
begin
  EditNum.Caption:= EditNum.Caption + '2';
end;

end.

