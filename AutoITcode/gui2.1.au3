
#include <GUIConstants.au3>

GUICreate("����", 200, 100)
GUICtrlCreateLabel("�������������", 30, 10)
$okbutton = GUICtrlCreateButton("��OK��", 70, 50, 60)
GUISetState(@SW_SHOW)

While 1
  $msg = GUIGetMsg()

  Select
    Case $msg = $okbutton
      MsgBox(0, "GUI �¼�", "�������ˡ���OK�ɡ���ť��")

    Case $msg = $GUI_EVENT_CLOSE
      MsgBox(0, "GUI �¼�", "��ѡ���˹رգ������˳�...")
      ExitLoop
  EndSelect
WEnd