; 这是我写的第二个脚本（带自定义函数）
MsgBox(0, "第二个脚本！", "此对话框从主脚本中调出！")
TestFunc()

Func TestFunc()
    MsgBox(0, "第二个脚本！", "此对话框函数中调出！")
EndFunc