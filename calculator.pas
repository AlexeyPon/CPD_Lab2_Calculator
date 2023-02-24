unit Calculator;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls,
  ExtCtrls, ActnList;

type

  { TFormCalculator }

  TFormCalculator = class(TForm)
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
       EditNum.Caption:= '0,'
  else EditNum.Caption:= EditNum.Caption + ',';
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
  ResultMemo.Lines.Clear;
  Flag := False;
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

procedure TFormCalculator.TwoButtonClick(Sender: TObject);
begin
  EditNum.Caption:= EditNum.Caption + '2';
end;

end.

