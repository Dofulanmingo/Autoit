#include <GUIConstants.au3>

Opt("GUIOnEventMode", 1)  ; �л�Ϊ OnEvent ģʽ
$mainwindow = GUICreate("����", 200, 100) ; �������ڲ����ش��ھ��
GUISetOnEvent($GUI_EVENT_CLOSE, "CLOSEClicked") ; ���ô��ڹر��¼�
GUICtrlCreateLabel("�������������", 30, 10)
$okbutton = GUICtrlCreateButton("��OK��", 70, 50, 60)
GUICtrlSetOnEvent($okbutton, "OKButton")
GUISetState(@SW_SHOW)

While 1
  Sleep(1000)  ; �����κ���
WEnd

Func OKButton()
  ;ע�⣺��ʱ @GUI_CTRLID ��ֵ���ȼ��� $okbutton��
  ;�� @GUI_WINHANDLE ��ȼ��� $mainwindow
  MsgBox(0, "GUI �¼�", "�������ˡ���OK�ɡ���ť��")
EndFunc

Func CLOSEClicked()
  ;ע�⣺��ʱ @GUI_CTRLID ��ֵ���ȼ��� $GUI_EVENT_CLOSE��
  ;�� @GUI_WINHANDLE ��ȼ��� $mainwindow
  MsgBox(0, "GUI �¼�", "��ѡ���˹رգ������˳�...")
  Exit
EndFunc