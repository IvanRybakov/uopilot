unit Unit1;

{
���������� �������: 0-9 � A-z, �-�, ��������� ��������� �������������.
GetWord(n:integer):string; - ������������ ��� �� �������� �������, ����� ����� �� �������
��������� �������,
n - ����� �� ����� ����� (������� � 0 ! )
GetWord(s,-1) ���������� ���� ����� ����� ������� �����
���������� '' ���� ��� ����� ��� ������� n (��������, ����� ������) 

������ ����� - ��������, ��������� - ���������.
������� ������� �� 1 �����. ������� ����������: 2 � ����� ���� ����������� ������ "_" , ��������, end_repeat
���� ������ ����� �� �������, �� ��� ������ ��������� ������������

FIX:
� ��������� ����� �������� �� �� ������ (�� �����, �������, �������), � ����� �� ���� ��� �� ������ �����, ��� ����� �������
�������� if str
// �������� ������ � ��������� ������ � �������� �����. ���������� WM_CHAR, WM_SETFOCUS � ����� ����� ����. � ��� ��� ��. ������ ���������� ������� 3 (!)
//�������� ������ � ������� � lowercase(s) ��� ���. �������� � GetWord
//��� if ����� ���� � if_not ����� ���� �������� ������� ����������� ������ ����� ���� �� �� ����
//������ ������� ��� ������� ���� (ctrl+A)
//����� ������� msg ������ ��������������� � ���� ���� ������ OK. ��� �����
// �� ������������ ����� msg.wave ������ 400 ����

}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, HotKeyMgr, ComCtrls, Menus, ExtCtrls,jpeg,
  mmsystem, Recorder;

type
  TfmMain = class(TForm)
    pcAll: TPageControl;
    tsGeneral: TTabSheet;
    tsScript: TTabSheet;
    btAddM: TSpeedButton;
    mmScript: TMemo;
    gbC: TGroupBox;
    ed0: TEdit;
    ed1: TEdit;
    ed2: TEdit;
    ed3: TEdit;
    cb1: TComboBox;
    cb2: TComboBox;
    cb3: TComboBox;
    tsHelp: TTabSheet;
    mmHelp: TMemo;
    btS1: TSpeedButton;
    btS2: TSpeedButton;
    btS3: TSpeedButton;
    btS0: TSpeedButton;
    btStart: TSpeedButton;
    mnHotKey: TMainMenu;
    miCtrlA: TMenuItem;
    odLoad: TOpenDialog;
    tm0: TTimer;
    tm2: TTimer;
    tm3: TTimer;
    tm1: TTimer;
    HotKeyManager1: THotKeyManager;
    sdSave: TSaveDialog;
    cbM: TComboBox;
    mnCom: TPopupMenu;
    miM: TMenuItem;
    miW: TMenuItem;
    miRt: TMenuItem;
    mieRt: TMenuItem;
    miDL: TMenuItem;
    miDR: TMenuItem;
    miStop: TMenuItem;
    miD: TMenuItem;
    miS: TMenuItem;
    miMsg: TMenuItem;
    miIF: TMenuItem;
    mieIF: TMenuItem;
    Label14: TLabel;
    miIFNot: TMenuItem;
    gbOtherWindow: TGroupBox;
    btS4: TSpeedButton;
    btS5: TSpeedButton;
    ed4: TEdit;
    ed5: TEdit;
    cb4: TComboBox;
    cb5: TComboBox;
    miOpen: TMenuItem;
    miSave: TMenuItem;
    miSaveAs: TMenuItem;
    N12: TMenuItem;
    miExit: TMenuItem;
    miNew: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    miRec: TMenuItem;
    miStopRec: TMenuItem;
    miPlay: TMenuItem;
    miSpeed: TMenuItem;
    mi25: TMenuItem;
    mi50: TMenuItem;
    miRepeat: TMenuItem;
    N19: TMenuItem;
    N52: TMenuItem;
    N152: TMenuItem;
    N9991: TMenuItem;
    N20: TMenuItem;
    mi75: TMenuItem;
    mi100: TMenuItem;
    N2001: TMenuItem;
    N3001: TMenuItem;
    edM: TEdit;
    miCtrlB: TMenuItem;
    tm4: TTimer;
    tm5: TTimer;
    miAlarm: TMenuItem;
    N1: TMenuItem;
    gbScreenShot: TGroupBox;
    cbDate: TCheckBox;
    rbBmp: TRadioButton;
    rbJpg: TRadioButton;
    edScr: TEdit;
    Label4: TLabel;
    cb0: TComboBox;
    miContinue: TMenuItem;
    miBreak: TMenuItem;
    miCut: TMenuItem;
    miPaste: TMenuItem;
    miCopy: TMenuItem;
    N5: TMenuItem;
    miUndo: TMenuItem;
    btXY: TSpeedButton;
    btColor: TSpeedButton;
    cbInsertXY: TCheckBox;
    Label3: TLabel;
    Label1: TLabel;
    edPause: TEdit;
    Label2: TLabel;
    N2: TMenuItem;
    N3: TMenuItem;
    left1: TMenuItem;
    right1: TMenuItem;
    N4: TMenuItem;
    miElse: TMenuItem;
    move1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure SetCoord(Sender: TObject);
    procedure btStartClick(Sender: TObject);
    procedure btCStartClick(Sender: TObject);
    procedure tm0Timer(Sender: TObject);
    procedure HotKeyScr(Sender: TObject);
    procedure HotKeyStartScript(
      Sender: TObject);
    procedure HotKeyRec(
      Sender: TObject);
    procedure btLoadClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure miComClick(Sender: TObject);
    procedure edScrExit(Sender: TObject);
    procedure miRadioClick(Sender: TObject);
    procedure miNewClick(Sender: TObject);
    procedure miExitClick(Sender: TObject);
    procedure miCtrlBClick(Sender: TObject);
    procedure HotKeyRecStop(
      Sender: TObject);
    procedure HotKeyPlay(Sender: TObject);
    procedure miSaveClick(Sender: TObject);
    procedure HotKeyManager1HotKeyshk1HotKeyActivation(Sender: TObject);
    procedure ed1Enter(Sender: TObject);
    procedure btAddColClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetWord(s:string;n:integer):string;   // ��������� n-����� �����, ���������� �� �������� �������� (0-1, A-z, �-�)
    procedure Scan(ind:integer);
    procedure MouseClick(button:byte; XY:integer);
  end;

TLegalSymbols = set of char;

var
  fmMain                  :TfmMain;
  wnd1,wnd2               :HWND; //���� �������
  doScript,isRec          :boolean;
  ptC                     :integer ;   // ���� ������� ����� ��������
  doBreak                 :integer;    // ������� ���������� �����. ���� 1 ��� ������ - �� ����������� ������� ����, ���� 2 � ����� - �� �����. ����� ������������ ������
  fileNameSave            :string;

  
const

  KeyCodes: array[0..27] of Integer =
    (
     VK_F1, VK_F2, VK_F3, VK_F4, VK_F5, VK_F6, VK_F7, VK_F8, VK_F9, VK_F10, VK_F11, VK_F12,
     VK_UP, VK_DOWN, VK_LEFT, VK_RIGHT, VK_ESCAPE, VK_TAB, VK_INSERT, VK_DELETE,
     VK_HOME, VK_END, VK_PRIOR, VK_NEXT, VK_BACK, VK_RETURN, VK_PAUSE, VK_SCROLL );

  KeyLabels: array[0..27] of string =
    (
     'F1', 'F2', 'F3', 'F4', 'F5', 'F6', 'F7', 'F8', 'F9', 'F10', 'F11', 'F12',
     'Up', 'Down', 'Left', 'Right', 'Escape', 'Tab', 'Insert', 'Delete',
     'Home', 'End', 'PageUp', 'PageDown','Backspace','Enter','Pause', 'ScrolLsock');

LegalSymbols:TLegalSymbols = ['0'..'9','A'..'z','�'..'�']; // ���������� ������� � ����� (������� ���. �������)

implementation

{$R *.DFM}


function TfmMain.GetWord(s:string; n:integer):string;  // n=0 - ������ ����� � ������
var ts:string; i,tn:integer;  // ts - ������� �����, tn - ������� ����� ����� � ������
begin
// ����: ���������� �� ������� ��� �������, ���� ���������, �� ��������� � ts. ���� �����������, �� ���� �� ���� ���� ��� ����������� (�.�. ts='' , ��� �� ������ ���������), �� �����. ���� �����������, �� ts<>'' (�.�. ���������), �� �������� ��� ���� ������� �����, �������� ��� �����.
tn:=0; ts:='';             // �������� �� ������ ������ (��� ����� ��� �� ����� :-))
// ------ ��� �������� -------
for i:=1 to length(s) do    // ���������� ������ ������
begin
// ���� n=-1, �� ������� ��� ������ ����� ������� �����, ��������: s='say vendor buy', ������� 'vendor buy'
if (s[i] in LegalSymbols)or((n=-1) and (tn=1)) then begin ts:=ts+s[i]; continue; end;  // ����������� ���������� ������
//--- ���������� ����������� ������
if ts='' then continue; // ��� ������, ����� ��� ���� ��� ����������� ������. ������ ���������� ������������������ ����������� ��������
if tn=n then break; // ��, �������� ������� ����� (� ������ ��������, � ���. ��������� ����� ���� ������!)
// ����� ���������, �� ��� �� ��� ����� �����! �������� ������� � ������� ts
inc(tn);
ts:='';
end; //for
//----------------------------
if (n=-1) or (n=tn) then result:=LowerCase(ts) else result:=''; // ���� '', �� ������ �� �����
end;



procedure TfmMain.Scan(ind:integer);
var i,k,sel,key,nif,c,nrepeat,nElse:integer; s,str,command:string; FirstTick:Longint; DC:HDC; pt,pt1:integer;   //str - ��������� ������

             procedure Delay(ms:string);      // ����� � �������������
             begin
                    if (ms='') or (ms='0') then exit;
                    FirstTick := GetTickCount;
                     repeat
                         if doScript=false then begin btStart.Down:=false; mmScript.Enabled:=true; exit; end;  // ���� ������ ������ ������ �������
                         Application.ProcessMessages;
                     until GetTickCount - FirstTick >= strtoint(ms);
             end;

begin
try
{������������ � ���������� �������}
if mmScript.Text='' then begin btStart.Down:=false; mmScript.Enabled:=true; exit; end; // ������ ������, �����
i:=ind; // ��� ���� �� �������� �� � ������ �������, ��������, ���� ��� ������� if
while i<mmScript.Lines.Count do begin     // ��� ������ ������ �������...
Delay(edPause.Text); // ����� ����� �������� �������
if mmScript.Lines.Strings[i]='' then begin inc(i); continue; end; // ������� ������� ������
if doScript=false then begin btStart.Down:=false; mmScript.Enabled:=true; exit; end;  // ���� ������ ������ ������ �������
s:=mmScript.Lines.Strings[i]; //������� ������

//--- ������ ������� ������ ������ � ������� ������ (����, ������ ��� � ��� �������? :-))
sel:=0;
for k:=0 to i do sel:=sel+(length(mmScript.Lines.Strings[k])+2);
sel:=sel-(length(mmScript.Lines.Strings[i])+2);
mmScript.SelStart:=sel;mmScript.SelLength:=1;
//---

// ----- ����� ������������ �������� --------------

command:=GetWord(s,0);  // ����� ��� ����� ������� ��������� ��� �� ������������ ������� (������ �����)

if command='wait' then delay(GetWord(s,1)); // -wait
//----------------------------------------
if command='msg' then showmessage(GetWord(s,-1));
//----------------------------------------
if command='say' then begin
str:=GetWord(s,-1);
for k:=1 to length(str) do begin
PostMessage(wnd1,WM_KEYDOWN,ord(str[k]),0);
PostMessage(wnd1,WM_CHAR,ord(str[k]),0);
PostMessage(wnd1,WM_KEYUP,ord(str[k]),0);
                             end;// - for
PostMessage(wnd1,WM_CHAR,VK_RETURN,0);
                   end; // -say

//----------------------------------------
if command='send' then begin
str:=GetWord(s,1);  // ������� ���� backspace  (������, ��� LowerCase(keylabels[k]), �.�. ���������� ������, � ��� GetWord �������� � ������ ��������)
for k:=0 to high(keylabels) do if comparetext(str,LowerCase(keylabels[k]))=0 then key:=keycodes[k];
PostMessage(wnd1,WM_KEYDOWN ,key,0);
PostMessage(wnd1,WM_KEYUP,key,0);
if GetWord(s,2)<>'' then Delay(GetWord(s,2));  // �������� ����� ������� �� ������� (���� ����)
                    end;
//----------------------------------------
if (command='if')or(command='if_not') then begin
//����: ���� �����. ������� �����������, �� ����� Scan(i+1), ���� ��� �� ���� ��� else � Scan(numElse). ����� ����� ���� ��� end_if � ��������� �� ���� (� �.�. � ����� inc(i), �� ������� �� ��������� ������� ����� ����)

//--- ���� ��� end_if � nElse - ����� ������ � ����� else:
k:=i+1;     // ����� ������ � ����� end_if , �������� ������� ���-�� ��������� ������� if � if_not �� ����. �� �������
nif:=0;     // ������� ���-�� ��������� ������� if � if-not. ���� <0 �� �� ����� ��� end_if
nElse:=0;   // ����� ������ � ����� else, ���� ����. ���� ����, �� 0
while k<mmScript.Lines.Count do begin
if (GetWord(mmScript.Lines.Strings[k],0)='if') or (GetWord(mmScript.Lines.Strings[k],0)='if_not') then inc(nif);
if GetWord(mmScript.Lines.Strings[k],0)='end_if' then dec(nif);
if GetWord(mmScript.Lines.Strings[k],0)='else' then if nif=0 then nElse:=k; // ���� ���-�� ������. �������=0 (�.�. ���� �������)
if nif<0 then begin break; end;   // k=������ ������ � ����� end_if
inc(k);
                                end;
if k=mmScript.Lines.Count then begin doScript:=false; btStart.Down:=false; mmScript.Enabled:=true; showmessage('�� ���� ����� ����� �������: "End_IF", ��������� ������'); exit; end; // ���� while ����� �� ����� ������� � �� ����� end_if

//---  ������ ���������, ����� �� ���� ����� ��� ���.
DC:=GetDC(wnd1);
c:=GetPixel(DC,strtoint(GetWord(s,1)),strtoint(GetWord(s,2))); // 1 � 2 ��������� -���������� �����, 3 - ���� �����, � ���. ���� ��������
ReleaseDC(wnd1,DC);
//--- ������� �������� ������� (� ���� ���� else, �� �� ����, ���� ������� �� �����������)
if GetWord(s,4)='' then begin   // ��� ���� ����� ������ ����
if command='if' then if c=strtoint(GetWord(s,3)) then Scan(i+1) else if nElse<>0 then Scan(nElse+1);
if command='if_not' then if c<>strtoint(GetWord(s,3)) then Scan(i+1) else if nElse<>0 then  Scan(nElse+1);
                        end 
                        else begin // ��� ���� ������ �������� �����
if command='if' then if ((c>=strtoint(GetWord(s,3)))and(c<=strtoint(GetWord(s,4)))) then Scan(i+1) else if nElse<>0 then Scan(nElse+1);
if command='if_not' then if not ((c>=strtoint(GetWord(s,3))) and(c<=strtoint(GetWord(s,4)))) then Scan(i+1) else if nElse<>0 then  Scan(nElse+1);

                             end;
//---
i:=k; // k=end_repeat, � � ����� ����� inc(i), ������� ������� �� ��������� ������� ����� end_if
                 end; // -"if"


//------------------------------------------
if command='left' then begin
MouseClick(1,MakeLong(strtoint(GetWord(s,1)),strtoint(GetWord(s,2))));
                   end else // -left
if command='right' then begin
MouseClick(2,MakeLong(strtoint(GetWord(s,1)),strtoint(GetWord(s,2))));
                   end; // -left
if command='double_left' then begin
MouseClick(11,MakeLong(strtoint(GetWord(s,1)),strtoint(GetWord(s,2))));
                   end; // -double left & right
if command='double_right' then begin
MouseClick(22,MakeLong(strtoint(GetWord(s,1)),strtoint(GetWord(s,2))));
                   end; // -double left & right
//-------------------------------------------------
if command='alarm' then begin
PlaySound(pChar('Msg.wav'), 0, SND_FILENAME or SND_ASYNC or SND_NOWAIT);
delay('400');  // ����� �� ������������ �����.
                             end; //alarm
//--------------------------------------------------
if command='drag' then begin
pt:=MakeLong(strtoint(GetWord(s,1)),strtoint(GetWord(s,2))); // (x1,y1) (x2,y2) (�o��������, ���� �� ������� ��� all, �� ���)
pt1:=MakeLong(strtoint(GetWord(s,3)),strtoint(GetWord(s,4)));
// --- ���������� ��������������:
PostMessage(wnd1, WM_LBUTTONDOWN,0,pt);
PostMessage(wnd1, WM_SETCURSOR, wnd1, MakeLong(HTCLIENT,WM_LBUTTONDOWN));
PostMessage(wnd1, WM_MOUSEMOVE,0,pt1);
PostMessage(wnd1, WM_SETCURSOR, wnd1, MakeLong(HTCLIENT,WM_MOUSEMOVE));
delay('400');   // ����� �� ���������...
PostMessage(wnd1, WM_LBUTTONUP,0,pt1);
PostMessage(wnd1, WM_SETCURSOR, wnd1, MakeLong(HTCLIENT,WM_LBUTTONUP));
str:=GetWord(s,5);        // ��� ��������� ������������� ���-�� ��������������� ��������
//������ �������  (���������� WM_CHAR, � WM_KEYDOWN/UP � �� ����???)
if (str<>'')and(str<>'all') then for k:=1 to length(str) do begin PostMessage(wnd1,WM_CHAR,ord(str[k]),0);end;
//� ����� ������ ������ Enter, � ���� ����� ���� � ���������� �� ����� �����, �� ������ ���
PostMessage(wnd1,WM_CHAR,VK_RETURN,0);
// �������, ����� �������
PostMessage(wnd1, WM_LBUTTONDOWN,0,pt1);
PostMessage(wnd1, WM_SETCURSOR, wnd1, MakeLong(HTCLIENT,WM_LBUTTONDOWN));
PostMessage(wnd1, WM_LBUTTONUP,0,pt1);
PostMessage(wnd1, WM_SETCURSOR, wnd1, MakeLong(HTCLIENT,WM_LBUTTONUP));
                   end; // -drag
//--------------------------------------------------
if command='end_script' then doScript:=false;     // ������ ��� ��� ������� (Scan) �� ����� �������� ����������, ��� ��� ������ ����� �� �������
//--------------------------------------------------
if (command='end_repeat') or (command='continue') or (command='else') or (command='end_if') then exit;  // � ������������ ���������, ��������, ���� ���� (��������)
//--------------------------------------------------
if command='break' then begin if (GetWord(s,1)='')or (GetWord(s,1)='0') then doBreak:=1 else doBreak:=strtoint(GetWord(s,1)); exit; end; // � ������������ ���������, ��������, ���� ���� (��������)
//--------------------------------------------------
if command='repeat' then begin
//����: ������� ������� ������� ���� ��� scan(i+1) (����� ��� ������� end_repeat �������� � ��� �����), � ����� ���������� �� ������� � ����� end_repeat.
for k:=1 to strtoint(GetWord(s,1)) do begin
                                      if doBreak>0 then begin doBreak:=doBreak-1; break; end; // ���� � ���� ����� �������� break , �� ��������� ���������� �������� �����.
                                      Scan(i+1);
                                      end;
//---  ���������� �� ��� end_repeat
k:=i+1;     // ����� ����. ������ ����� repeat
nrepeat:=0; // ����� ��������� ������

while k<mmScript.Lines.Count do begin
if GetWord(mmScript.Lines.Strings[k],0)='repeat' then inc(nrepeat);
if GetWord(mmScript.Lines.Strings[k],0)='end_repeat' then dec(nrepeat);
if nrepeat<0 then begin i:=k; break; end;   // ������ i=k=������ � ����� end_repeat, ���������� ���� ����� ������ � ����� ������ �����, � ����� ���������� �� ������ ����� endrepeat
inc(k);
                                end;
if k=mmScript.Lines.Count then begin doScript:=false; btStart.Down:=false; mmScript.Enabled:=true; showmessage('�� ���� ����� ����� �����: "End_Repeat", ��������� ������'); exit; end; // �� ����� �����. ����� ����� end_repeat
//---
                          end; // -repeat
//--------------------------------------------------
if command='move' then begin // �������� ������, ������ SetCursorPos(x,y);
PostMessage(wnd1,WM_MOUSEMOVE,0,MakeLong(strtoint(GetWord(s,1)),strtoint(GetWord(s,2))));
                       end;
//--------------------------------------------------
                          
//------------------- ����� �������� ���������� (������) -----------------------

inc(i); // ����������� ����� ������ � ��������
                                end;  //-while ��������� ������
Application.ProcessMessages;
if doScript then Scan(0) else begin btStart.Down:=false; mmScript.Enabled:=true; exit; end;
except
doScript:=false; btStart.Down:=false; mmScript.Enabled:=true; showmessage('������! ��������� ������������ �������!');
end;

end;  //��������� Scan



procedure TfmMain.MouseClick(button:byte; XY:integer);
begin
if button=11 then begin {��. ����}
PostMessage(wnd1,WM_LBUTTONDOWN,0,XY);
PostMessage( wnd1,WM_SETCURSOR,wnd1,MakeLong(HTCLIENT,WM_LBUTTONDOWN));
PostMessage(wnd1,WM_LBUTTONUP,0,XY);
PostMessage( wnd1,WM_SETCURSOR,wnd1,MakeLong(HTCLIENT,WM_LBUTTONUP));
//----- ��! ����� ����� ������� �� ����, �� �� ����� ������������ ��� ��������� ����
PostMessage(wnd1,WM_LBUTTONDOWN,0,XY);
PostMessage( wnd1,WM_SETCURSOR,wnd1,MakeLong(HTCLIENT,WM_LBUTTONDOWN));
PostMessage(wnd1,WM_LBUTTONUP,0,XY);
PostMessage( wnd1,WM_SETCURSOR,wnd1,MakeLong(HTCLIENT,WM_LBUTTONUP));
//-------
PostMessage(wnd1,WM_LBUTTONDBLCLK,0,XY);
PostMessage( wnd1,WM_SETCURSOR,wnd1,MakeLong(HTCLIENT,WM_LBUTTONDBLCLK));
PostMessage(wnd1,WM_LBUTTONUP,0,XY);
PostMessage( wnd1,WM_SETCURSOR,wnd1,MakeLong(HTCLIENT,WM_LBUTTONUP));
                        end;

if button=22 then begin {��. ���� ������}
PostMessage(wnd1,WM_RBUTTONDOWN,0,XY);
PostMessage( wnd1,WM_SETCURSOR,wnd1,MakeLong(HTCLIENT,WM_RBUTTONDOWN));
PostMessage(wnd1,WM_RBUTTONUP,0,XY);
PostMessage( wnd1,WM_SETCURSOR,wnd1,MakeLong(HTCLIENT,WM_RBUTTONUP));
//----- ��! ����� ����� ������� �� ����, �� �� ����� ������������ ��� ��������� ����
PostMessage(wnd1,WM_RBUTTONDOWN,0,XY);
PostMessage( wnd1,WM_SETCURSOR,wnd1,MakeLong(HTCLIENT,WM_RBUTTONDOWN));
PostMessage(wnd1,WM_RBUTTONUP,0,XY);
PostMessage( wnd1,WM_SETCURSOR,wnd1,MakeLong(HTCLIENT,WM_RBUTTONUP));
//-------
PostMessage(wnd1,WM_RBUTTONDBLCLK,0,XY);
PostMessage( wnd1,WM_SETCURSOR,wnd1,MakeLong(HTCLIENT,WM_RBUTTONDBLCLK));
PostMessage(wnd1,WM_RBUTTONUP,0,XY);
PostMessage( wnd1,WM_SETCURSOR,wnd1,MakeLong(HTCLIENT,WM_RBUTTONUP));
                        end;

if button=1 then begin {����� ����}
PostMessage(wnd1,WM_LBUTTONDOWN,0,XY);
PostMessage( wnd1,WM_SETCURSOR,wnd1,MakeLong(HTCLIENT,WM_LBUTTONDOWN));
PostMessage(wnd1,WM_LBUTTONUP,0,XY);
PostMessage( wnd1,WM_SETCURSOR,wnd1,MakeLong(HTCLIENT,WM_LBUTTONUP));
                        end;

if button=2 then begin {������ ����}
PostMessage(wnd1,WM_RBUTTONDOWN,0,XY);
PostMessage( wnd1,WM_SETCURSOR,wnd1,MakeLong(HTCLIENT,WM_RBUTTONDOWN));
PostMessage(wnd1,WM_RBUTTONUP,0,XY);
PostMessage( wnd1,WM_SETCURSOR,wnd1,MakeLong(HTCLIENT,WM_RBUTTONUP));
                        end;
end;


procedure TfmMain.FormCreate(Sender: TObject);
var i:integer;
begin
TheRecorder.SpeedFactor:=miSpeed.Tag;

// �������� ����������� ������. ��� �� �������: ��������� ����� 1 ������, � ��������� ������ ��������� �� ����������� ��� ������������ ������ � cb1
cb1.Items.Clear;
for i:=0 to High(keylabels) do begin
cb1.Items.Add(keylabels[i]);
                            end;
cb2.Items:=cb1.Items;
cb3.Items:=cb1.Items;
cb4.Items:=cb1.Items;
cb5.Items:=cb1.Items;
cbM.Items:=cb1.Items;
//-����������

end;

procedure TfmMain.SetCoord(Sender: TObject);
var c: Integer; p:tpoint; DC:HDC;
begin
GetCursorPos(p);
wnd1:=WindowFromPoint(p);
if wnd1=0 then begin showmessage('�� ���� ����� ���� UO'); exit; end;
windows.ScreenToClient(wnd1,p);
if pcAll.ActivePage=tsGeneral then begin   // ������ ��� ��������
ptC:=MakeLong(p.x,p.y);   // ��� �����. ���� �������
btS0.Caption:=inttostr(p.x)+', '+inttostr(p.y);
                                   end;

if pcAll.ActivePage=tsScript then begin   // ������ ��� �������
DC:=GetDC(wnd1);
c:=GetPixel(DC,p.x,p.y);
btColor.Caption:=inttostr(c);
btXY.Caption:=inttostr(p.x)+', '+inttostr(p.y);
if cbInsertXY.Checked then mmScript.SelText:=btXY.Caption+' ';
ReleaseDC(wnd1,DC);
                                   end;
end;

procedure TfmMain.btStartClick(Sender: TObject);        // �����/���� �������
begin
if btStart.Down then begin            // ������ ��� ������ (����)
if wnd1=0 then wnd1:=FindWindow(Pchar('Ultima Online'),nil);
if wnd1=0 then begin btStart.Down:=false; showmessage('�� ���� ����� UO, ���������� ������� ��� �������������:'+#13+#10+'���������� ������ ���� ��� ����� UO � ������� "Ctrl+A"');exit; end;

mmScript.Enabled:=false;
doScript:=true;                       // ��� ������ ��� ��������� ������
scan(0);                              // � �������� ����������� ����� � ������ ������
                                end else begin          // ������ ��� ������ (����)
mmScript.Enabled:=true;
doScript:=false;
                                         end;
end;


procedure TfmMain.btCStartClick(Sender: TObject);
var interval:integer;  c:TComponent;
begin
//���� �������� �� ������� ��� 2-�� ����, ��������, ���� �� ���� uo
if ((sender as TSpeedButton).Name='btS4')or((sender as TSpeedButton).Name='btS5') then
begin
if wnd2=0 then wnd2:=FindWindow(Pchar('Ultima Online'),nil);
if wnd2=0 then begin (Sender as TSpeedButton).Down:=false; showmessage('�� ���� ����� UO, ���������� ������� ��� �������������:'+#13+#10+'���������� ������ ���� ��� ����� UO � ������� "Ctrl+B"');exit; end;
end else begin  // ����� ��� ������� ����
if wnd1=0 then wnd1:=FindWindow(Pchar('Ultima Online'),nil);
if wnd1=0 then begin (Sender as TSpeedButton).Down:=false; showmessage('�� ���� ����� UO, ���������� ������� ��� �������������:'+#13+#10+'���������� ������ ���� ��� ����� UO � ������� "Ctrl+A"');exit; end;
         end;
// --- ������ ��������/��������� ������� ---
if (Sender as TSpeedButton).Down then begin  // ������ ��� ������ ������
// ��������, ������� �� �������, ��������� Tag ������ ��� ����������� cb � ed
if (Sender as TSpeedButton).Name='btS0' then begin if cb0.Text='' then begin showmessage('�������� ��� ��������'); btS0.Down:=false; exit; end; end // 2 end ��-�� else
else if (fmMain.FindComponent('cb'+inttostr((Sender as TComponent).Tag)) as TComboBox).Text='' then begin showmessage('������� �������'); (Sender as TSpeedButton).Down:=false; exit; end;
  try
interval:=strtoint((fmMain.FindComponent('ed'+inttostr((Sender as TComponent).Tag)) as TEdit).Text);
(fmMain.FindComponent('tm'+inttostr((Sender as TComponent).Tag)) as TTimer).Interval:=interval;
(fmMain.FindComponent('tm'+inttostr((Sender as TComponent).Tag)) as TTimer).Enabled:=true;
//--- �������� enable ��� cd � ed
(fmMain.FindComponent('cb'+inttostr((Sender as TComponent).Tag)) as TComboBox).Enabled:=false;
(fmMain.FindComponent('ed'+inttostr((Sender as TComponent).Tag)) as TEdit).Enabled:=false;
//---
  except showmessage('������� ���������� �������� (� �������������)'); (Sender as TSpeedButton).Down:=false; exit; end;
                                      end else begin  // ������ ��� ������ ������
(fmMain.FindComponent('tm'+inttostr((Sender as TComponent).Tag)) as TTimer).Enabled:=false;
//--- ������� enable ��� cd � ed
(fmMain.FindComponent('cb'+inttostr((Sender as TComponent).Tag)) as TComboBox).Enabled:=true;
(fmMain.FindComponent('ed'+inttostr((Sender as TComponent).Tag)) as TEdit).Enabled:=true;
//---
                                               end;
end;


procedure TfmMain.tm0Timer(Sender: TObject);
var s1:string; i:integer;         // PostMessage(wnd,WM_MOUSEMOVE,0{MK_LBUTTON},ptC.l);
begin

if (Sender as TTimer).Name='tm0' then begin
if cb0.ItemIndex=0 then {��. ����}        MouseClick(11,ptC);
if cb0.ItemIndex=1 then {��. ���� ������} MouseClick(22,ptC);
if cb0.ItemIndex=2 then {����� ����}      MouseClick(1,ptC);
if cb0.ItemIndex=3 then {������ ����}     MouseClick(2,ptC);
                                         end
   else begin
//--- ��������� �������, ��������� Tag � �������
s1:=(fmMain.FindComponent('cb'+inttostr((Sender as TComponent).Tag)) as TComboBox).Text;
//---
try
i:= 0;
  while i < High(KeyLabels) do
  begin
    Inc(i);
    if CompareText(s1, KeyLabels[i]) = 0 then
      Break;
  end;
if ((sender as TTimer).Name='tm4')or((sender as TTimer).Name='tm5') then
begin
PostMessage(wnd2,WM_KEYDOWN ,keycodes[i],0 );
PostMessage(wnd2,WM_KEYUP,keycodes[i],0);
end else begin
PostMessage(wnd1,WM_KEYDOWN ,keycodes[i],0 );
PostMessage(wnd1,WM_KEYUP,keycodes[i],0);
         end;
except
showmessage('������ ��� ������� ���������� �������');
end;
        end;
end;

procedure TfmMain.HotKeyScr(Sender: TObject);    // �����������
var fs:TSearchRec; attr,n, Found:integer; bmp: TBitmap; jpg:TJPEGImage; DC: HDC; s:string;
begin
try
{}
// --------  ���� ��������� �� ������, �� -----------
if not cbDate.Checked then begin
n:=0;
Found := FindFirst(ExtractFilePath(edScr.text)+'*.*',attr,fs);
while Found = 0 do
begin
   try
// ��������, ��� ����� ������ �������� �� ��������, � �� �� ����������� ������ (10 ���� ������ 9 !)
if copy(fs.Name,1,3)='Pic' then if n<strtoint(copy(fs.Name,4,Length(fs.Name)-7)) then n:=strtoint(copy(fs.Name,4,Pos('.',fs.Name)-4));
   except //���� ���������� �� Pic , �� �� ������� ���������� �����
   end; // except
Found := FindNext(fs);
end;  // while
FindClose(fs);
inc(n);  // ������ ������� 1, � ���� ���� �����, �� �� 1 ������ ���������� ������
s:=ExtractFilePath(edScr.text)+'Pic'+inttostr(n);   // ��� ����� ��� ���������� (!), �.�. ����� ���������, jpg ��� bmp
                      end;// if miNum
// --------  ���� ��������� �� ����, �� -----------
if cbDate.Checked then begin
s:=ExtractFilePath(edScr.text)+'Pic'+FormatDateTime('dd.mm_hh.nn.ss',Now);
// ���� ����� ���� ����������, �� �������� ���� ��� �� �� 1 ������� �����
if FileExists(s+'.bmp') or FileExists(s+'.jpg') then s:=ExtractFilePath(edScr.text)+'Pic'+FormatDateTime('dd.mm_hh.nn.ss',Now+strtotime('00:00:01'));
                       end; // if midate

// --- ��� ����� ������ ------
DC:=GetDC(0);

bmp:=TBitmap.Create;
bmp.Height:=Screen.Height;
bmp.Width:=Screen.Width;
bitblt(bmp.Canvas.Handle, 0, 0, Screen.Width, Screen.Height,DC, 0, 0, SRCCOPY);

if rbJpg.Checked then begin
jpg:=TJPEGImage.Create;
jpg.Assign(bmp);
jpg.CompressionQuality:=70;
jpg.Compress;
jpg.SaveToFile(s+'.jpg');
jpg.Free;
                      end;

if rbBmp.Checked then begin
bmp.SaveToFile(s+'.bmp');
                      end; // if bmp

bmp.FreeImage;
bmp.Free;

ReleaseDC(0, DC);
//----------------------------
except
showmessage('������! ���������, ��� �������, ���� ��������� �����, ����������');
end;
end;

procedure TfmMain.HotKeyStartScript(
  Sender: TObject);
begin
{}
pcAll.ActivePage:=tsScript;
if not btStart.Down then begin
if wnd1=0 then wnd1:=FindWindow(Pchar('Ultima Online'),nil);
if wnd1=0 then begin btStart.Down:=false; showmessage('�� ���� ����� UO, ���������� ������� ��� �������������:'+#13+#10+'���������� ������ ���� ��� ����� UO � ������� "Ctrl+A"');exit; end;
btStart.Down:=true;
mmScript.Enabled:=false;
doScript:=true;
scan(0);
                                end else begin
btStart.Down:=false;
mmScript.Enabled:=true;
doScript:=false;
                                         end;
end;

procedure TfmMain.HotKeyRec(Sender: TObject);  // ������ ������ �������
begin
    {}
TheRecorder.FStream.free;
TheRecorder.FStream := TMemoryStream.Create;

  TheRecorder.SpeedFactor:=miSpeed.Tag;
  TheRecorder.DoStop;
  TheRecorder.DoRecord(true);
end;

procedure TfmMain.btLoadClick(Sender: TObject);  // �������� �������
var s:string; f:textfile;
begin
odLoad.InitialDir:=ExtractFilePath(Application.ExeName);
odLoad.FileName:='';
odLoad.Title:='��������� ������...';
if odLoad.Execute then assignfile(f,odLoad.FileName) else exit;
reset(f);
mmScript.Clear;
while not eof(f) do begin
ReadLn(f,s);
mmScript.Lines.Add(s);
                    end;
CloseFile(f);
end;

procedure TfmMain.btSaveClick(Sender: TObject);   // ���������� �������
var s:string; i:integer; f:textfile;
begin
sdSave.InitialDir:=ExtractFilePath(Application.ExeName);
sdSave.FileName:='';
sdSave.Title:='��������� ������ ���...';
if sdSave.Execute then assignfile(f,sdSave.FileName) else exit;
fileNameSave:=sdSave.FileName;
rewrite(f);
i:=0;
while i<mmScript.Lines.Count do begin
s:=mmScript.Lines.Strings[i];
WriteLn(f,s);
inc(i);
                    end;
CloseFile(f);
end;

procedure TfmMain.miComClick(Sender: TObject);  // �������� �� ������������ ���� � ���������
var s:string;
begin
// ������� Copy, Paste, Cut, Undo
if (Sender as TMenuItem).Name='miPaste' then begin mmScript.PasteFromClipboard; exit; end;
if (Sender as TMenuItem).Name='miCopy' then begin mmScript.CopyToClipboard; exit; end;
if (Sender as TMenuItem).Name='miCut' then begin mmScript.CutToClipboard; exit; end;
if (Sender as TMenuItem).Name='miUndo' then begin mmScript.Perform(WM_UNDO,0,0); exit; end;

s:=GetWord((Sender as TMenuItem).Caption,0)+' ';
mmScript.SelText:=s;
end;


procedure TfmMain.edScrExit(Sender: TObject);  // ������� ���� � ����� ����. � ����?
begin
if copy(edScr.text,length(edScr.text),1)<>'\' then edScr.text:=edScr.text+'\';
end;


procedure TfmMain.miRadioClick(Sender: TObject);  // �������� ���� checked + ����������� �������� � ���-�� �������
begin
(Sender as TMenuItem).Checked:=true;
if (Sender as TMenuItem).Parent.Name='miSpeed' then TheRecorder.SpeedFactor:=(Sender as TMenuItem).Tag;
if (Sender as TMenuItem).Parent.Name='miRepeat' then TheRecorder.Tag:=(Sender as TMenuItem).Tag;

end;

procedure TfmMain.miNewClick(Sender: TObject);  // ������������� �� ������� ������� TODO: ���� ������ ���� �� ��������
begin
if mmScript.Text<>'' then if MessageDlg('�� �������, ��� ������'+#13+'�������� ������������ ������?',mtConfirmation,[mbYes,mbNo],0)=mrYes then mmScript.Clear;
end;


procedure TfmMain.miExitClick(Sender: TObject);    // �����
begin
Application.Terminate;
end;

procedure TfmMain.miCtrlBClick(Sender: TObject);    // ����� 2-�� ����
var p:tpoint;
begin
GetCursorPos(p);
wnd2:=WindowFromPoint(p);
if wnd2=0 then begin showmessage('�� ���� ����� ���� UO'); exit; end
else gbOtherWindow.Caption:='�������! ��� ������ �������: (Ctrl+B)';
end;


procedure TfmMain.HotKeyRecStop(Sender: TObject);   // ���� ������ � ������������  �����
begin
  TheRecorder.DoStop;
end;

procedure TfmMain.HotKeyPlay(Sender: TObject);      // ��������������� �����
var i:integer;
begin
  TheRecorder.DoStop;
  TheRecorder.DoPlay;
end;

procedure TfmMain.miSaveClick(Sender: TObject);      // ���������� �������
var s:string;i:integer; f:textfile;
begin
if fileNameSave='' then begin miSaveAs.Click; exit; end;
assignfile(f,fileNameSave);
rewrite(f);
i:=0;
while i<mmScript.Lines.Count do begin
s:=mmScript.Lines.Strings[i];
WriteLn(f,s);
inc(i);
                    end;
CloseFile(f);
end;

procedure TfmMain.HotKeyManager1HotKeyshk1HotKeyActivation(Sender: TObject);
begin
//showmessage(Copy((Sender as THotKeyItem).Name,3,1));
(fmMain.FindComponent('btS'+Copy((Sender as THotKeyItem).Name,3,1)) as TSpeedButton).Down:= not (fmMain.FindComponent('btS'+Copy((Sender as THotKeyItem).Name,3,1)) as TSpeedButton).Down;
(fmMain.FindComponent('btS'+Copy((Sender as THotKeyItem).Name,3,1)) as TSpeedButton).click;
end;

procedure TfmMain.ed1Enter(Sender: TObject);
begin
(sender as TEdit).SelectAll;
end;




procedure TfmMain.btAddColClick(Sender: TObject);
var s:string;
begin
// ������� ���������� � ����, ���� ������� � �����
if (Sender as TSpeedButton).Name='btColor' then s:=btColor.Caption+' ';
if (Sender as TSpeedButton).Name='btXY' then s:=btXY.Caption+' ';
if (Sender as TSpeedButton).Name='btAddM' then if cbM.Text='' then begin showmessage('������� �������'); exit; end else s:=cbM.text+' '+edM.text;

mmScript.SelText:=s;
mmScript.SetFocus;
end;

end.
