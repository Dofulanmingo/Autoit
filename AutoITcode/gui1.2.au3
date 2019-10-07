#include <GUIConstants.au3>

GUICreate("您好", 200, 100)
GUICtrlCreateLabel("最近过得怎样？", 30, 10)
GUICtrlCreateButton("还OK吧", 70, 50, 60)
GUISetState(@SW_SHOW)
Sleep(2000)