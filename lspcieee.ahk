;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; AHK�汾��		1.1.23.01
; ���ԣ�		����
; ���ߣ�		lspcieee <lspcieee@gmail.com>
; ��վ��		http://www.lspcieee.com/
; �ű����ܣ�	���Ի�����
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


; Win---># ; Shift--->+ ; Ctrl--->^ ; Alt--->!
; ::/d::�˸�ʽ�ӻس�ִ��
#SingleInstance force
;SendMode Input

;�ű�����
!^r::
Reload  ; Reload the script by Alt+Ctrl+R.
TrayTip,AHK, �ű�������
Return


;�е��ʵ��ݼ��򿪣��е��ʵ��Ѿ�����Ϊ�رմ����Զ��رճ��򣬽�ʡ���ܣ�
;!l::
;Run,C:\Users\lspcieee\AppData\Local\Youdao\Dict\Application\YodaoDict.exe
;Return


:*::d::  ; ��ǰ����
FormatTime, CurrentDateTime,, yyyy-MM-dd
sendbyclip(CurrentDateTime)
return

:*::t::  ; ��ǰ����
FormatTime, CurrentDateTime,, HH:mm
sendbyclip(CurrentDateTime)
return

:Z*?:`:`=::  ; ������ʽ

    ClipboardOld = %ClipboardAll%

	send +{Home}

    send ^c
	ClipWait
	Q:=Clipboard

	if fileexist("Temp.ahk")
	FileDelete Temp.ahk
	FileAppend send {End}`=`n,Temp.ahk
	FileAppend send `% %Q% ,Temp.ahk
	run Temp.ahk
    Clipboard = %ClipboardOld%  ; Restore previous contents of clipboard.

return

;mlo���֧����������
#IfWinActive, ahk_class TfrmMyLifeMain
!o::
;MouseGetPos, OutputVarX, OutputVarY, OutputVarWin, OutputVarControl
;MouseClick, left, OutputVarX, OutputVarY,5
	Send,^a
	Send,^c
	ClipWait
	StringReplace, Clipboard, Clipboard, file: ,, All
	StringReplace, Clipboard, Clipboard, `r`n ,, All
	;MsgBox,%clipboard%
	Run,%clipboard%

Return



#IfWinActive






=