unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfunct = function ( x: real ): real;stdcall;
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var Handle: Thandle;
    funct: Tfunct;
begin
//��������� ����������� 
Handle:= LoadLibrary('Project2.dll');
// �������� ����� �������
@funct:= getProcAddress(Handle,'funct');
showMessage ( floatToStr ( funct ( 10.2 ) ) );
end;

end.

