unit U_Calculadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit;

type
  TForm1 = class(TForm)
    btn0: TButton;
    btn2: TButton;
    btn1: TButton;
    btn3: TButton;
    btn5: TButton;
    btn4: TButton;
    btn6: TButton;
    btn8: TButton;
    btn7: TButton;
    btn9: TButton;
    btnSomar: TButton;
    btnSubtrair: TButton;
    btnMultiplicar: TButton;
    btnIgual: TButton;
    btnDividir: TButton;
    btnVirgula: TButton;
    btnClean: TButton;
    lbOperador: TLabel;
    lbN1: TLabel;
    lbN2: TLabel;
    lbResultado: TLabel;
    lbIgual: TLabel;
    btnLimpar: TButton;
    btnC: TButton;
    procedure btnSomarClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure btnIgualClick(Sender: TObject);
    procedure btnCleanClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn0Click(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnVirgulaClick(Sender: TObject);
    procedure btnCClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btn0Click(Sender: TObject);
begin
if lbOperador.Text = '.' then
  begin
    lbN1.Text := lbN1.Text + '0';
  end
  else
  begin
    lbN2.Text := lbN2.Text + '0';
  end;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  if lbOperador.Text = '.' then
  begin
    lbN1.Text := lbN1.Text + '1';
  end
  else
  begin
    lbN2.Text := lbN2.Text + '1';
  end;

end;

procedure TForm1.btn2Click(Sender: TObject);
begin
if lbOperador.Text = '.' then
  begin
    lbN1.Text := lbN1.Text + '2';
  end
  else
  begin
    lbN2.Text := lbN2.Text + '2';
  end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
if lbOperador.Text = '.' then
  begin
    lbN1.Text := lbN1.Text + '3';
  end
  else
  begin
    lbN2.Text := lbN2.Text + '3';
  end;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
if lbOperador.Text = '.' then
  begin
    lbN1.Text := lbN1.Text + '4';
  end
  else
  begin
    lbN2.Text := lbN2.Text + '4';
  end;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
if lbOperador.Text = '.' then
  begin
    lbN1.Text := lbN1.Text + '5';
  end
  else
  begin
    lbN2.Text := lbN2.Text + '5';
  end;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
if lbOperador.Text = '.' then
  begin
    lbN1.Text := lbN1.Text + '6';
  end
  else
  begin
    lbN2.Text := lbN2.Text + '6';
  end;
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
if lbOperador.Text = '.' then
  begin
    lbN1.Text := lbN1.Text + '7';
  end
  else
  begin
    lbN2.Text := lbN2.Text + '7';
  end;
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
if lbOperador.Text = '.' then
  begin
    lbN1.Text := lbN1.Text + '8';
  end
  else
  begin
    lbN2.Text := lbN2.Text + '8';
  end;
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
if lbOperador.Text = '.' then
  begin
    lbN1.Text := lbN1.Text + '9';
  end
  else
  begin
    lbN2.Text := lbN2.Text + '9';
  end;
end;

procedure TForm1.btnCClick(Sender: TObject);
begin
  if lbOperador.Text = '.' then
  begin
    lbN1.Text := '';
  end
  else
  begin
    lbN2.Text := '';
  end;
end;

procedure TForm1.btnCleanClick(Sender: TObject);
begin
  lbN1.Text := '';
  lbN2.Text := '';
  lbIgual.Visible := false;
  lbResultado.Visible := false;
  lbOperador.Text := '.'

end;

procedure TForm1.btnDividirClick(Sender: TObject);
begin
  lbOperador.Text := '/';
end;

procedure TForm1.btnIgualClick(Sender: TObject);
var n1, n2, total : double;
var opr : char;

begin
  n1 := StrToFloat(lbN1.Text);
  n2 := StrToFloat(lbN2.Text);
  lbIgual.Visible := true;
  lbResultado.Visible := true;

  opr :=  lbOperador.Text[1];

  case opr of
    '+': begin
      total := n1 + n2;
      lbResultado.Text := FloatToStr(total);
    end;
    '-': begin
      total := n1 - n2;
      lbResultado.Text := FloatToStr(total);
    end;
    'x': begin
      total := n1 * n2;
      lbResultado.Text := FloatToStr(total);
    end;
    '/': begin
      total := n1 / n2;
      lbResultado.Text := FloatToStr(total);
    end;
  end;
end;

procedure TForm1.btnLimparClick(Sender: TObject);
begin
if lbOperador.Text = '.' then
  begin
    lbN1.Text := copy(lbN1.Text, 0, length(lbN1.Text) -1);
  end
  else
  begin
    lbN2.Text := copy(lbN2.Text, 0, length(lbN2.Text) -1);
  end;
end;

procedure TForm1.btnMultiplicarClick(Sender: TObject);
begin
  lbOperador.Text := 'x';
end;

procedure TForm1.btnSomarClick(Sender: TObject);
begin
  lbOperador.Text := '+';
end;

procedure TForm1.btnSubtrairClick(Sender: TObject);
begin
  lbOperador.Text := '-';
end;

procedure TForm1.btnVirgulaClick(Sender: TObject);
begin
  if lbOperador.Text = '.' then
  begin
    lbN1.Text := lbN1.Text + ',';
  end
  else
  begin
    lbN2.Text := lbN2.Text + ',';
  end;
end;

end.
