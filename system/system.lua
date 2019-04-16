---@class system
---@field ApplicationSupportDirectory userdata
---@field CachesDirectory userdata
---@field DocumentsDirectory userdata
---@field ResourceDirectory userdata
---@field TemporaryDirectory userdata
---@field orientation string
system {}

---激活系统功能
---@param feature string 需要激活的系统功能
---目前支持两个参数"multitouch"(多点触控) "controllerUserInteraction"
---@return nil
function system.activate( feature ) end

---取消激活系统功能
------@param feature string 需要取消激活的系统功能
-----目前支持两个参数"multitouch"(多点触控) "controllerUserInteraction"
-----@return nil
function system.deactivate( feature ) end

--返回一个布尔值，确认是否可以通过system.openURL（）打开URL 。
---@param usr string 需要被打开的url
---@return boolean
function system.canOpenURL( url ) end

---从存储中删除首选项。
---@param ategory string 需要设置的首选项名称
---@param preferenceNames table 指示要从存储中删除的唯一首选项名称。
---@return boolean
function system.deletePreferences( ategory, preferenceNames ) end

---返回是否启用应用程序空闲计时器。
---@return boolean
function system.getIdleTimer() end

---返回有关运行应用程序的系统的信息。
---@param property string 与所需信息对应的属性名称(详见API文档)
---@return any
function system.getInfo( property ) end

---回当前连接到系统的InputDevice设备数组
---@return any
function system.getInputDevices() end

---返回请求的首选项的值。
---@overload fun( category :string , name :string  ):any
---@param category string 指示从哪里读取首选项("app","locale"."ui")
---@param name string  要读取的首选项的唯一名称
---@param type string  指示此函数返回的值类型 "locale"和"ui"类别的所有首选项都存储为字符串 "app"类型("string" （默认）"boolean""number")
---@return any
function system.getPreference( category, name , type ) end

---回自应用程序启动以来的毫秒数
---@return number
function system.getTimer() end

---返回布尔值true或false取决于系统是否传递与之对应的事件eventName。
---@param eventName string 事件名称
---@return boolean
function system.hasEventSource(  eventName ) end

---返回一个新的EventDispatcher，允许您设置自己的私有事件通信。
---@return EventDispatcher
function system.newEventDispatcher() end

---在浏览器中打开网页，创建电子邮件或拨打电话号码。执行此功能将关闭应用程序并切换到内置浏览器，电子邮件或电话应用程序。
---即使用默认的应用程序打开URL连接
---@param usl string 电子邮箱/电话号码/网络连接
---@return boolean
function system.openURL( usl ) end

---将首选项值表写入存储。如果存储中不存在任何给定的首选项，则将插入它们。如果存储中已存在任何给定的首选项，则它们将被覆盖。
---@param category string 指示应在系统上访问哪组首选项(目前仅"app")
---@param preferences table 要写入存储的首选项表
---@return boolean true:所有给定的首选项都已成功写入存储. false:至少一个没有被写入存储设备。
function system.setPreferences(  category, preferences ) end

---使用系统定义的目录作为基础生成绝对路径
---@overload fun(filename:string):string
---@param filename string 文件名
---@param baseDirectory  system system中的系统常量
---@return string
function system.pathForFile( filename , baseDirectory ) end

---控制是否启用空闲计时器
---@param enabled boolean 果设置为true，则计时器将处于活动状态（默认）或处于非活动状态false
---@return nil
function system.setIdleTimer( enabled ) end

---将所需的位置（GPS）事件精度设置为以米为单位的距离
---@param distance number 位置精度（米）
---@return nil
function system.setLocationAccuracy( distance ) end
--设置在发送下一个位置（GPS）事件之前必须经过的距离（以米为单位）
---@param distance number 距离 米
---@return
function system.setLocationThreshold(distance) end
---检测到点击和点击事件传递之间的延迟时间。默认情况下，此时间为0。
---这对于区分单击和双击事件很有用。没有设置延迟，所有点击都被解释为单击事件。
---@param delayTime number 延迟时间
---@return nil
function system.setTapDelay( delayTime ) end

---振动手机
---@return any
function system.vibrate() end


---设置加速度计事件的频率。
---@param frequency number 测量间隔，单位为Hz
---@return nil
function system.setAccelerometerInterval( frequency ) end
---设置陀螺仪事件的频率
---@param frequency number 设置以HZ为单位的采样间隔(多少Hz就是一秒进行多少次检测)
---@return nil
function system.setGyroscopeInterval( frequency ) end


-- 本地推送通知,已经移除到Notifications插件
---@return nil
function system.cancelNotification() end
---@return userdata
function system.scheduleNotification() end
return system;