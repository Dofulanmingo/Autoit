#include <GUIConstants.au3>

Opt("GUIOnEventMode", 1)  ; 切换为 OnEvent 模式
$mainwindow = GUICreate("您好", 200, 100) ; 创建窗口并返回窗口句柄
GUISetOnEvent($GUI_EVENT_CLOSE, "CLOSEClicked") ; 设置窗口关闭事件
GUICtrlCreateLabel("最近过得怎样？", 30, 10)
$okbutton = GUICtrlCreateButton("还OK吧", 70, 50, 60)
GUICtrlSetOnEvent($okbutton, "OKButton")
GUISetState(@SW_SHOW)

While 1
  Sleep(1000)  ; 不做任何事
WEnd

Func OKButton()
  ;注意：此时 @GUI_CTRLID 的值将等价于 $okbutton，
  ;而 @GUI_WINHANDLE 则等价于 $mainwindow
  MsgBox(0, "GUI 事件", "您按下了“还OK吧”按钮！")
EndFunc

Func CLOSEClicked()
  ;注意：此时 @GUI_CTRLID 的值将等价于 $GUI_EVENT_CLOSE，
  ;而 @GUI_WINHANDLE 则等价于 $mainwindow
  MsgBox(0, "GUI 事件", "您选择了关闭！正在退出...")
  Exit
EndFunc