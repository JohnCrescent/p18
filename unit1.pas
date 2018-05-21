unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  priemer:real;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var n,i,min,max,sucet,znamka:integer;

begin
  n:=strTOint(edit1.text);
  min:=10;
  max:=0;
  sucet:=0;
  for i:=1 to n do
  begin
    znamka:=strTOint(inputbox('Známka','Porotca č. '+intTOstr(i),''));
    sucet:=sucet+znamka;
    if znamka<min then min:=znamka;
    if znamka>max then max:=znamka;
  end;
  priemer:=(sucet-min-max)/ (n-2);
  button2.enabled:=true;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  showmessage(floattostr(priemer));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

end.

