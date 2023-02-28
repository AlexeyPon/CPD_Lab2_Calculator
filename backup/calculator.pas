unit Calculator;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls,
  ExtCtrls, ActnList, Unit1, math, DefaultTranslator, LCLType;

type

  { TFormCalculator }

  TFormCalculator = class(TForm)
    BaseButton: TButton;
    Base2: TMenuItem;
    Base3: TMenuItem;
    Base4: TMenuItem;
    Base5: TMenuItem;
    Base6: TMenuItem;
    Base7: TMenuItem;
    Base8: TMenuItem;
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
    TrigBox: TGroupBox;
    MenuButton: TButton;
    ModeButton: TMenuItem;
    DarkThemeButton: TMenuItem;
    SimpleThemeButton: TMenuItem;
    LanguageButton: TMenuItem;
    MenuItem3: TMenuItem;
    ScientificModeButton: TMenuItem;
    EnglishButton: TMenuItem;
    RussianButton: TMenuItem;
    AboutButton: TMenuItem;
    LayoutButton: TMenuItem;
    LightTeme: TMenuItem;
    MainPopupMenu: TPopupMenu;
    Separator1: TMenuItem;
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
    procedure BaseButtonClick(Sender: TObject);
    procedure DarkThemeButtonClick(Sender: TObject);
    procedure EditNumChange(Sender: TObject);
    procedure EditNumKeyPress(Sender: TObject; var Key: char);
    procedure FactButtonClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure LightTemeClick(Sender: TObject);
    procedure LnButtonClick(Sender: TObject);
    procedure LogButtonClick(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure ModButtonClick(Sender: TObject);
    procedure PowerButtonClick(Sender: TObject);
    procedure CosButtonClick(Sender: TObject);
    procedure CotButtonClick(Sender: TObject);
    procedure CscButtonClick(Sender: TObject);
    procedure SecButtonClick(Sender: TObject);
    procedure SinButtonClick(Sender: TObject);
    procedure StandardBoxClick(Sender: TObject);
    procedure TanButtonClick(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure MainMenuClick(Sender: TObject);
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
    procedure MenuButtonClick(Sender: TObject);
    procedure AboutButtonClick(Sender: TObject);
    procedure ModeButtonClick(Sender: TObject);
    procedure LayoutButtonClick(Sender: TObject);
    procedure MinusButtonClick(Sender: TObject);
    procedure MultiplyButtonClick(Sender: TObject);
    procedure NineButtonClick(Sender: TObject);
    procedure OneButtonClick(Sender: TObject);
    procedure PercentButtonClick(Sender: TObject);
    procedure PlusButtonClick(Sender: TObject);
    procedure ResultButtonClick(Sender: TObject);
    procedure ScientificModeButtonClick(Sender: TObject);
    procedure SevenButtonClick(Sender: TObject);
    procedure SixButtonClick(Sender: TObject);
    procedure SqrtButtonClick(Sender: TObject);
    procedure SquareButtonClick(Sender: TObject);
    procedure ThreeButtonClick(Sender: TObject);
    procedure TrigBoxClick(Sender: TObject);
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
  InvalidInput = 'Invalid input';

function factorial(num: Integer): Integer;
var
  i: Integer;
begin
   Result := num;
   for i := num-1 downto 1 do
     Result := Result * i;
end;

procedure TFormCalculator.ResultMemoChange(Sender: TObject);
begin

end;

procedure TFormCalculator.CommaButtonClick(Sender: TObject);
begin
  if EditNum.Caption = '' then
       EditNum.Caption:= '0'+ SysUtils.DecimalSeparator
  else if pos(SysUtils.DecimalSeparator,EditNum.Caption) = 0 then
       begin
       EditNum.Caption:= EditNum.Caption + SysUtils.DecimalSeparator;
       end
  else if pos(SysUtils.DecimalSeparator,EditNum.Caption) <> 0 then
  begin

  end;
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
  if (ResultMemo.Lines[0] <> '') and (EditNum.Caption <> '') then
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
        //procedure if there is no = in the memo
        begin
              if ResultMemo.Lines[1] = '+' then
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
              else if  ResultMemo.Lines[1] = '^' then
                begin
                     Flag := True;
                     ResultMemo.Lines[2] := EditNum.Caption;
                     ResultMemo.Lines[3] := '=';
                     EditNum.Caption:= FloatToStr(Power(StrToFloat(ResultMemo.Lines[0]),StrToFloat(EditNum.Caption)));
                end
              else if  ResultMemo.Lines[1] = 'mod' then
                begin
                     if EditNum.Caption <> '0' then
                     begin
                       Flag := True;
                       ResultMemo.Lines[2] := EditNum.Caption;
                       ResultMemo.Lines[3] := '=';
                       EditNum.Caption:= FloatToStr(StrToFloat(ResultMemo.Lines[0]) mod StrToFloat(EditNum.Caption));
                     end
                     else
                     begin
                       Flag := True;
                       ResultMemo.Lines[2] := '0';
                       ResultMemo.Lines[3] := '=';
                       EditNum.Caption:= '0';
                     end
                end
        end
      else if (ResultMemo.Lines[3] <> '') then
        //if there is a = in the memo
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
                else if  ResultMemo.Lines[1] = '^' then
                  begin
                       ResultMemo.Lines[0] := EditNum.Caption;
                       EditNum.Caption:= FloatToStr(Power(StrToFloat(ResultMemo.Lines[0]),StrToFloat(EditNum.Caption)));
                  end
                else if  ResultMemo.Lines[1] = 'mod' then
                  begin
                       if EditNum.Caption <> '0' then
                         begin
                           ResultMemo.Lines[0] := EditNum.Caption;
                           EditNum.Caption:= FloatToStr(StrToFloat(ResultMemo.Lines[0]) mod StrToFloat(EditNum.Caption));
                         end
                       else
                       begin

                       end
                  end
           end
  except
    ShowMessage(SmtWrong);
    Application.Terminate;
  end;
end;

procedure TFormCalculator.ScientificModeButtonClick(Sender: TObject);
begin
  TrigBox.Visible:= True;
  TrigBox.AnchorToNeighbour(akRight,5,StandardBox);
  TrigBox.AnchorToNeighbour(akTop,5,EditNum);
  TrigBox.AnchorToNeighbour(akBottom,5,nil);
  TrigBox.AnchorToNeighbour(akleft,5,nil);
end;

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

procedure TFormCalculator.LayoutButtonClick(Sender: TObject);
begin

end;

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

  ActiveControl := EditNum;

  CommaButton.Caption:= SysUtils.DecimalSeparator;

  ResultMemo.Lines.Clear;
  Flag := False;
  TrigBox.ChildSizing.Layout:= cclLeftToRightThenTopToBottom;
  TrigBox.ChildSizing.ControlsPerLine:= 3;
  TrigBox.ChildSizing.VerticalSpacing:= 2;
  TrigBox.ChildSizing.HorizontalSpacing:= 2;
  TrigBox.ChildSizing.LeftRightSpacing:= 2;
  TrigBox.ChildSizing.TopBottomSpacing:= 2;
  TrigBox.ChildSizing.EnlargeHorizontal:= crsHomogenousChildResize;
  TrigBox.ChildSizing.EnlargeVertical:= crsHomogenousChildResize;

  //FormCalculator.Height:= 200;
  //FormCalculator.Width:= 150;

  StandardBox.ChildSizing.Layout:= cclLeftToRightThenTopToBottom;
  StandardBox.ChildSizing.ControlsPerLine:= 4;
  StandardBox.ChildSizing.VerticalSpacing:= 2;
  StandardBox.ChildSizing.HorizontalSpacing:= 2;
  StandardBox.ChildSizing.LeftRightSpacing:= 2;
  StandardBox.ChildSizing.TopBottomSpacing:= 2;
  StandardBox.ChildSizing.EnlargeHorizontal:= crsHomogenousChildResize;
  StandardBox.ChildSizing.EnlargeVertical:= crsHomogenousChildResize;
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

procedure TFormCalculator.MainMenuClick(Sender: TObject);
begin

end;

procedure TFormCalculator.FormClick(Sender: TObject);
begin

end;

procedure TFormCalculator.TanButtonClick(Sender: TObject);
begin
  EditNum.Caption:= FloatToStr(Tan(StrToFloat(EditNum.Caption)));
end;

procedure TFormCalculator.SinButtonClick(Sender: TObject);
begin
  EditNum.Caption:= FloatToStr(Sin(StrToFloat(EditNum.Caption)));
end;

procedure TFormCalculator.StandardBoxClick(Sender: TObject);
begin

end;

procedure TFormCalculator.CosButtonClick(Sender: TObject);
begin
  EditNum.Caption:= FloatToStr(Cos(StrToFloat(EditNum.Caption)));
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
end;

procedure TFormCalculator.MenuItem3Click(Sender: TObject);
begin
  TrigBox.Visible:= False;
end;

procedure TFormCalculator.LnButtonClick(Sender: TObject);
begin
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
end;

procedure TFormCalculator.BaseButtonClick(Sender: TObject);
begin
  BasePopupMenu.PopUp;
end;

procedure TFormCalculator.DarkThemeButtonClick(Sender: TObject);
begin
  FormCalculator.Color:= clGray;
  ResultMemo.Color:= clGray;
  EditNum.Color:= clGray;
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
begin
  if Key = #127 then DeleteButton.Click
  else if Key = #47 then DivideButton.Click
  else if Key = #43 then PlusButton.Click
  else if Key = #42 then MultiplyButton.Click
  else if Key = #45 then MinusButton.Click
  else if Key = #13 then ResultButton.Click
end;

procedure TFormCalculator.FactButtonClick(Sender: TObject);
begin
  try
  EditNum.Caption:= IntToStr(factorial(StrToInt(EditNum.Caption)));
  except

  end;
end;

procedure TFormCalculator.FormKeyPress(Sender: TObject; var Key: char);
begin
  if Key = #127 then DeleteButton.Click
  else if Key = #47 then DivideButton.Click
  else if Key = #43 then PlusButton.Click
  else if Key = #42 then MultiplyButton.Click
  else if Key = #45 then MinusButton.Click
  else if Key = #13 then ResultButton.Click
end;

procedure TFormCalculator.LightTemeClick(Sender: TObject);
begin
  FormCalculator.Color:= clDefault;
  ResultMemo.Color:= clDefault;
  EditNum.Color:= clDefault;
end;

procedure TFormCalculator.CotButtonClick(Sender: TObject);
begin
  EditNum.Caption:= FloatToStr(Cotan(StrToFloat(EditNum.Caption)));
end;

procedure TFormCalculator.CscButtonClick(Sender: TObject);
begin
  EditNum.Caption:= FloatToStr(Cosecant(StrToFloat(EditNum.Caption)));
end;

procedure TFormCalculator.SecButtonClick(Sender: TObject);
begin
  EditNum.Caption:= FloatToStr(Secant(StrToFloat(EditNum.Caption)));
end;

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

procedure TFormCalculator.TrigBoxClick(Sender: TObject);
begin

end;

procedure TFormCalculator.TwoButtonClick(Sender: TObject);
begin
  EditNum.Caption:= EditNum.Caption + '2';
end;

end.

