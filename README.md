# CoronaApiForIDEAEmmylua
最近学习上需要使用**CoronaSDK**(基于Lua开发的2D手机引擎)<br/>用习惯了IDEA.可是Corona官方只提供了一个SublimeText的插件使用。
为了能继续使用IDEA进行开发，花了一点时间结合IDEA的插件**EmmyLua**，整理了一下官方文档，最后这折腾出一个可以勉强提供函数提示的文件来。

使用方法：
1.IDEA -> file -> Setting ->Plugins -> Marketplace
输入"EmmyLua",下载Lua插件安装并且重启IDEA.

2.打开corona项目,然后选择file ->Project Structure(或者 Crtl+Shift+Alt+S)
选择SDKs添加LuaSDK,然后再classpath中选择本文件目录即可
