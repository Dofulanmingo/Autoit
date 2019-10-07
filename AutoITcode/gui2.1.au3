
#include <GUIConstants.au3>

GUICreate("您好", 200, 100)
GUICtrlCreateLabel("最近过得怎样？", 30, 10)
$okbutton = GUICtrlCreateButton("还OK吧", 70, 50, 60)
GUISetState(@SW_SHOW)

While 1
  $msg = GUIGetMsg()

  Select
    Case $msg = $okbutton
      MsgBox(0, "GUI 事件", "您按下了“还OK吧”按钮！")

    Case $msg = $GUI_EVENT_CLOSE
      MsgBox(0, "GUI 事件", "您选择了关闭！正在退出...")
      ExitLoop
  EndSelect
WEnd