---@class composer
---切换“Composer Debug Mode”，如果设置为true，则在某些情况下将有用的调试信息输出到Corona Simulator控制台。
---@field isDebug boolean
---如果操作系统发出低内存警告，Composer将自动回收最近最少使用的场景。如果需要禁用自动回收功能，设置为false。默认是true。
---@field recycleOnLowMemory boolean
---默认情况下，在更改场景时，Composer会将当前场景的视图（self.view）保留在内存中，如果频繁访问相同的场景，则可以提高性能。如果设置composer.recycleOnSceneChange为true，self.view则将删除场景的显示组，但其场景对象将保留在内存中。默认值为false。
---@field recycleOnSceneChange boolean
---@field stage any

composer = {}
---取得特定的场景(一般是场景文件名)
---@param sceneName string 场景对象的名称。
---@return table|nil 返回从composer.newScene（）返回的指定场景对像
function composer.getScene( sceneName ) end

---场景跳转
---@overload fun(sceneName:string):nil
---@param sceneName string 场景文件名称
---@param options table 此表包含几个与转换相关的选项(effect:过渡效果;time:效果持续时间;params:传递的数据,可以使用event.params参数)
---@return nil
function composer.gotoScene( sceneName , options) end

---场景移除
---@overload fun(sceneName:string):nil
---@param sceneName string 需要回收的场景名
---@param shouldRecycle boolean 是否保留在内存中
---@return nil
function composer.removeScene(sceneName , shouldRecycle) end

---叠加一个覆盖场景(同样可以使用scene-impl模板进行四个场景的调用)
---@overload fun(sceneName:string):nil
---@param sceneName string 需要回收的场景名
---@param options table 规格参数
---@return nil
function composer.showOverlay( sceneName , options ) end

---隐藏一个覆层场景
---这个调用可以来自覆层场景，也可以来自父场景，或者来自其他事件处理函数，例如安卓的“back”键。当你通过composer.gotoScene()跳转到其他场景时，就会自动将覆层场景隐藏。
---@overload fun(sceneName:string):nil
---@param sceneName string 需要回收的场景名
---@param options table 规格参数
---@return nil
function composer.hideOverlay( sceneName , options ) end
---存储全局的名值对变量到composer模块中，这些值可以在场景间被互相访问。(set/get)
---@param variableName string 变量名
---@param value any 变量值
---@return nil
function composer.setVariable( variableName, value ) end
---@param variableName string 变量名
---@return any 变量值
function composer.getVariable( variableName ) end

---获得一个场景名
---@param sceneType string 要检索的场景的名称。可能的值"current"(当前场景名)，"previous"(前一个场景名)或"overlay"(覆盖在当前场景上的场景名)。
---@return string
function composer.getSceneName( sceneType ) end

---创建一个新的场景对象
---@return table
function composer.newScene() end
---此功能删除（或可选地回收）除当前活动场景之外的所有场景
---@param shouldRecycle boolean 是否保留在内存中(true为保留),false为完全删除
---@return nil
function composer.removeHidden( shouldRecycle ) end

---加载指定并且场景隐藏在当前场景后面的，而不进行场景跳转
---@param sceneName string 加载的场景的名称，隐藏在当前场景的后面。
---@param doNotLoadView boolean  设置为true仅加载场景的对象，而不是其self.view显示组。假设它尚不存在，将仅在场景上调度 create事件self.view。
---@param params table 一个可选表，包含应传输到场景的任何类型的自定义数据。在指定的场景，该数据可以通过访问event.params
---@return nil
function composer.loadScene( sceneName , doNotLoadView , params ) end

return composer