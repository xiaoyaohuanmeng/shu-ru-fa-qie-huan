# 本项目为根据别的项目更改
# 详见https://github.com/lspcieee/lspcieee_ahk

##IME.ahk
实现了自动根据不同切换输入法：

###1.根据不同的程序，启动后，自动切换到中文，英文输入法。
比如 qq 使用搜狗拼音，vs启动后自动切换到英文输入法。

###2.在 Visual Studio 等IDE/编辑器中(可配置)，自动切换输入法。
- 方便加入注释：输入注释//加空格，自动切换到中文输入法。无视当前输入法状态，如果为中文，“、、”自动更正为//
- 方便输入中文字符串：输入引号加空格，自动切换到中文输入法。
- 方便切换回英文输入法：输入分号，换行时，自动切换到英文输入法。同样无视当前输入法状态，自动将全角分号更正为半角分号；输入分号加空格，自动切换回英文输入法，自动将全角分号修正为半角分号

###3.在 Visual Studio 等IDE/编辑器中(可配置)，更高效的手动切换输入法

手动切换时，操作简单，便于记忆，空格代表中文输入法（智能abc用户表示输入的字符都是空格上屏），分号代表英文输入法，这个 c# 码农都懂的。

- 连续输入两个分号，切换到英文输入法
- 连续输入两个空格，切换到中文输入法

连击两次键切换，比按下windows，contrl 等组合键好多了。别跟我说 shirt 键切换，容易搞混当前输入法状态。

代码测试通过环境：win10 64 位，vs2012/vs2013/vs2015/Notepad++/Notepad，ahkv1.1.23.01

为了方便未安装ahk的童鞋，增加编译后的exe文件，默认设置如下：
- AHK切换中文输入法发送快捷键为Control+（搜狗输入法默认设置）,切换英文输入法发送快捷键为Ctrl+Space
- 已设置Visual Studio，Notepad++，记事本为编辑器，支持开发自动切换：
- 已设置qq，word，MindManager自动切换为中文输入法。
- 已经设置Visual Studio，Notepad++，Directory Opus自动切换为英文输入法。
如需要变更，请下载ahk代码修改



##lspcieee.ahk
实现了一些个性化的需求。
- Alt+Ctrl+R重启脚本，便于修改ahk的时候重启调试
- 在任意位置，输入:d,会自动上屏录入当前日期，比如2016-02-19
- 在任意位置，输入:t,会自动上屏录入当前时间，比如15:15
- 在任意位置，输入一串表达式，然后输入:=,会自动上屏得到表达式运算结果，比如先输入2+2，然后输入:=,屏幕上会自动得到结果4.
- 在MLO软件的备注属性界面，按下alt+0，自动打开中文路径文件。使用此功能来变相让mlo支持中文路径链接。
