;MsgBox(4096, "测试", "此对话框将会在10秒后自动消失", 2)
Run("notepad.exe")
WinWaitActive("无标题 - 记事本")
Send("This is some text.")
WinClose("*无标题 - 记事本")
;WinWaitActive("记事本", "文件 无标题 的文字已经改变")
WinWaitActive("记事本")
Send("!n")