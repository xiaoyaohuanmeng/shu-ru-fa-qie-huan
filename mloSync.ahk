;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; AHK�汾��		1.1.23.01
; ���ԣ�		����
; ���ߣ�		lspcieee <lspcieee@gmail.com>
; ��վ��		http://www.lspcieee.com/
; �ű����ܣ�	mlo ��ʱ�л������棬�Զ�ͬ����Ȼ���Զ���С��
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#Persistent

SetTimer, syncMlo, 15000
return

syncMlo:
TrayTip,AHK, ͬ��ʱ�䵽��
ifWinExist ahk_class TfrmMyLifeMain
{
	winactivate
	send {F9}
	sleep, 200
	WinMinimize ahk_class TfrmMyLifeMain
}
else
{
	run D:\soft\MLO4_cn\mlo.exe
	WinWait ahk_class TfrmMyLifeMain
	send {F9}
	sleep, 200
	WinMinimize ahk_class TfrmMyLifeMain
}
return


;�ű�����
!^r::
Reload  ; Reload the script by Alt+Ctrl+R.
TrayTip,AHK, �ű�������
Return
