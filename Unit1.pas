unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.Layouts, FMX.ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ImageViewer1: TImageViewer;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses Unit2;
{$R *.fmx}
{$R *.SmXhdpiPh.fmx ANDROID}

procedure TForm1.Button1Click(Sender: TObject);
var
user:string;
pass:string;
begin
user:='erlan';
pass:='123';
if (edit1.text=user) and (edit2.text=pass) then
begin
showMessage('welcome user');
form1.Hide;
form2.show;
end
else if (edit1.text='')and(edit2.text='') then
begin
showMessage('data belum ada')
end else
showMessage('data salah');
edit1.text:='';
edit2.text:='' ;
end;

end.
