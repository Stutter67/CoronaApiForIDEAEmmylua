---@class event
---@field device nil
---当前触发的事件名称
---@field name string
---@field tap
---屏幕上的触点数目
---@field numTaps number
---触控的点的X坐标
---@field x number
---@field y number
---定时器函数,主要用来延时
---@field timer
---计时器触发侦听器的次数。如果您注册计时器多次触发，这将非常有用。
---@field count number
---定时器事件的名称
---@field name string
---已经注册的定时器事件的引用地址
---@field source nil
---相当于system.getTimer（）的时间戳。系统启动到现在的事件
---@field time number
---@field touch
---多点触控(按住屏幕拖动的事件)
---当前触摸事件的编号
---@field id number
---多点触摸事件的名称
---@field phase
---表示触摸压力的数字，通常用于检测兼容iOS设备（例如iPhone 6S）上的“3D Touch”事件
---@field pressure nil;
---@field target
---应用启动到现在的好秒速
---@field time number
---触摸的终止位置X坐标
---@field x number
---触摸的终止位置的Y轴
---@field y number
---触摸的起始位置的Y轴
---@field xStart number
---触摸的起始位置的Y轴
---@field yStart number
---@field accelerometer
---加速器事件属性
---是否要摇晃设备
---@field isShake boolean;
---上次触发加速器时间到现在的毫秒数(可能会存在误差
---@field deltaTime number;
---以下三个重力加速度都是针对与真实屏幕的X轴坐标来说的
--- x轴的重力加速度
---@field xGravity number;
---y轴的重力加速度
---@field yGravity number;
---z轴的重力加速度
---@field zGravity number;
---x轴的重力加速度变化
---@field xInstant number;
---x轴的重力加速度变化
---@field yInstant number;
---x轴的重力加速度变化
---@field zInstant number;
---@field xRaw number;
---@field yRaw number;
---@field zRaw number;
---@field audio
---音频事件
---音频是否正常播放完全部才结束
---@field completed boolean;
---触发此事件的音频对象的引用
---@field handle nil;
---触发此事件的音频通道
---@field channel number;
---@field axis number;
---输入轴事件
---提供有关生成此事件的轴的信息
---@field axis string;
--- x轴的归一化值
---@field normalizedValue number;
---从设备的轴输入接收的原始值
---@field rawValue number;
---@field collision
---碰撞事件
---碰撞点
---@field contact nil;
---全局碰撞事件中,object在碰撞中的数量
---@field element1 number;
---@field element2 number;
---全局碰撞中,对碰撞的第一个对象的引用
---@field object1 nil;
---第二个对象的引用
---@field object2 nil;
---局部碰撞事件中,other在碰撞中的数量
---@field otherElement number;
---局部碰撞事件中,target在碰撞中的数量
---@field selfElement number;
---局部碰撞中,对碰撞的第一个对象的引用
---@field target nil;
---局部碰撞中,对碰撞的第二个对象的引用
---@field other nil;
---示物理碰撞侦听器的碰撞阶段：
---"began" - 表示两个物体之间的碰撞已开始初始接触。
---"ended" - 表示两个物体之间的碰撞已完成。
---@field phase string;
---碰撞事件发生的x位置
---@field x number;
---碰撞事件发生的y位置
---@field y number;
---@field colorSample
---颜色样本事件
---样本的X轴坐标
---@field x string;
---样本的y轴坐标
---@field y string;
---样本的红色分量
---@field r string;
---样本的绿色分量
---@field g string;
---样本的蓝色分量
---@field b string;
---样本的透明度
---@field a number;
---@field completion
---交互结束事
---用户取消警告对话框后调用的事件
---@field action string;
---用户成功完成交互的属性
---@field completed boolean;
---在用户使用media.captureVideo（）或media.selectVideo（）选择或捕获视频后调度完成事件时，此属性指示视频文件的大小(以字节为单位)
---@field durantion string;
---在用户使用media.captureVideo（）或media.selectVideo（）选择或捕获视频后调度完成事件时，此属性指示视频文件的URL
---@field url string;
---用户完成摄像机会话后生成的显示图像对象。
---@field target nil;
---@field enterFrame
---帧事件
---@field time number;
---@field finalize
---引用与"finalize"事件关联的显示对象
---@field target nil;
---键盘事件
---获取按下的键
---@field descriptor string;
---@field device nil;
---指示在键事件发生时是否按下Alt键
---@field isAltDown boolean;
---指示在发生键事件时是否按下Command /⌘或Windows键。
---@field isCommandDown boolean;
---指示在发生键事件时是否按下ctrl1;键。
---@field isCtrlDown boolean;
---指示在发生键事件时是否按下shift键。
---@field isShiftDown boolean;
---密钥的唯一字符串名称。用于标识按下或释放的键。
---@field keyName string;
---@field nativeKeyCode string;
---键按下或者松开
---@field phase "up"
---@field gyroscope
---陀螺仪事件
---上次使用陀螺仪的事件
---@field deltaTime number;
---设备x轴/y轴/z轴周围的旋转速率，以弧度/秒为单位。
---@field xRotation number;
---@field yRotation number;
---@field zRotation number;
---@field heading
---指南针事件
---提供相对于地理北极的度数（顺时针
---@field geographic number;
---提供相对于磁北极的标度（顺时针）。
---@field magnetic number;
---@field inputDeviceStatus
---输入状态事件(手柄鼠标等)
---输入设备与系统的连接是否已更改
---@field connectionStateChanged boolean;
---@field reconfigured boolean;
---@field gameNetwork
---苹果游戏中心函数库
---@field data nil;
---@field errorCode string;
---@field errorMessage string;
---@field localPlayerScore string;
---@field provider string;
--- location (GPS)
---GPS事件
---以米为单位提供GPS位置的准确性
---@field accuracy number;
---提供当前GPS位置的 高度（以米为单位
---@field altitude number;
---设备从正北向顺时针方向行进的方向
---@field direction number;
---GPS错误代码
---@field errorCode nil;
---GPS错误信息
---@field errorMessage string;
---纬度
---@field latitude number;
---经度
---@field longitude number;
---GPS设备的瞬时速度，以米/秒为单位。将结果除以number;.447得到MPH（英里/小时）
---@field speed number;
---返回GPS位置事件的UTC时间戳
---@field time number;
---@field mapAddress
---地图事件
---城市或城镇。
---@field city string;
---其他城市信息，例如邻里。
---@field cityDetail string;
---国家
---@field country string;
---国家缩写
---@field countryCode string;
---错误信息
---@field errorMessage string;
---指示反向地理编码服务器是返回错误而不是位置。
---@field isError string;
---邮政编码
---@field postalCode string;
---国内，州或类似地区。
---@field region string;
---详细描述
---@field regionDetail string;
---街道
---@field street" "
---详细描述
---@field streetDetail string;
---@field mapLocation
---@field errorMessage string;
---@field isError string;
---@field latitude string;
---@field longitude string;
---@field request string;
---@field type string;
---@field mapMarker
---地图标记事件
---经纬度
---@field latitude number;
---@field longitude number;
---@field markerId number;
---@field memoryWarning
---内存警告事件
---@field mouse
---鼠标事件
---中键
---@field isMiddleButtonDown boolean;
---左键
---@field isPrimaryButtonDown boolean;
---右键
---@field isSecondaryButtonDown boolean;
---上一次按下的事件
---@field time number;
---光标的X轴
---@field x number;
---y轴
---@field y number;
---@field networkRequest
---网络响应事件,与网络库network一起使用
---此值指示给定请求预期要处理的字节数（如果已知）
---@field bytesEstimated number;
---此值指示给定请求处理的字节数
---@field bytesTransferred number;
---@field isError boolean;
---@field phase string;
---对与事件对应的请求的
---@field requestId nil;
---个字符串，包含来自服务器的响应
---@field response string;
---提供带字符串键的响应头值的表。
---@field responseHeaders {};
---响应的编码类型
---@field responseType string;
---从服务器返回的状态代码。例如，在成功的请求中，这通常是2number;number;。
---@field status number;
---与请求对应的URL
---@field url string;
---@field networkStatus
---网络状态更改的主机
---@field address string;
---是否自动连接
---@field isConnectionOnDemand boolean;
---连接是否已经启动
---@field isConnectionRequired boolean;
---此属性是boolean;用户将需要与应用程序交互以（重新）连接到主机，例如，如果用户需要输入密码。
---@field isInteractionRequired boolean;
---主机是否可访问
---@field isReachable boolean;
---是否可以通过移动数据访问
---@field isReachableViaCellular boolean;
---是否可以通过WIFI访问
---@field isReachableViaWiFi boolean;
---@field notification
---设备通知事件
---通知的字符串值
---@field alert string;
---收到通知时的应用状态
---@field applicationState "active"
---IOS 通知的计数
---@field badge number;
---在安排或推送通知时提供的表。
---@field custom {};
---通知提示音(提示音的地址)
---@field sound "1;"
---通知事件的类型
---@field type string;
---@field orientation
---方向改变事件
---提供结束和起始方向之间的角度差异（以度为单位）
---@field delta number;
---使用以下值之一标识设备新方向的字符串：
---"portrait"
---"landscapeLeft"
---"portraitUpsideDown"
---"landscapeRight"
---"faceUp"
---"faceDown"
---@field type string;
---@field particleCollision
---粒子和刚体碰撞的事件
---粒子的透明度
---@field a number;
---粒子蓝色值
---@field b number;
---粒子绿色值
---@field g number;
---粒子红色值
---@field r number;
---粒子的X轴
---@field x number;
---粒子的Y轴
---@field y number;
---在碰撞中遇到的object的元素索引。
---@field element number;
---碰撞法线的x方向。
---@field normalX number;
---碰撞法线的y方向。
---@field normalY number;
---引用粒子碰撞中涉及的对象。
---@field object nil;
---引用碰撞中涉及的粒子的父粒子系统。
---@field particleSystem nil;
---粒子碰撞的阶段
---@field phase string;
---@field popup
---界面弹出事件
---@field postCollision
---碰撞检测事件
---与当前事件一起报告的碰撞后的直接力量。
---@field force number;
---与当前事件一起报告的碰撞后的摩擦力。
---@field friction number;
---@field preCollision
---@field relativeTouch
---外部触摸设备事件
---@field id number;
---@field phase string;
---@field tapCount number;
---@field time number;
---@field x number;
---@field y number;
---@field resize
---设备画面改变事件
---精灵动画事件
---@field phase number;
---@field sprite number;
---@field target number;
---@field system
---系统事件
---命令行参数
---@field commandLineArgs {};
---提供commandLineArgs的工作目录的绝对路径。
---@field commandLineDir string;
---标识应用程序要打开的资源的URL
---@field url string;
---@field unhandledError
---当应用程序遇到运行时错误时会发生这些事件
---@field errorMessage nil;
---@field stackTrace number;
---@field urlRequest
---urlRequest将事件分派给使用native.newWebView（）和native.showWebPopup（）函数注册的侦听器。
---错误代码 一般为5number;2
---@field errorCode number;
---一个字符串，其中包含对native.newWebView（）或native.showWebPopup（）调用的URL请求中发生的错误的描述。
---@field errorMessage string;
---@field type string;
---错误访问的URL连接
---@field url string;
---@field userInput
---用户输入事件
---userInput事件用于侦听用户与TextField和TextBox对象交互所导致的文本输入事件
---新键入的字符后的内容(包括之前已经输入的)
---@field newCharacters string;
---已经删除的字符串数量
---每次修改都是删除旧的字符串,然后新建一个字符串?
---所以删除的数量总是旧字符串的长度
---@field numDeleted number;
---在为事件键入任何新字符之前，TextField或TextBox中存在的字符。
---与newCharacters差别就在新输入的那个字符
---@field oldText string;
---事件发生时光标所在的位置。
---@field startPosition number;
---直接引用与TextField或TextBox事件关联的本机对象。
---@field target string;
---TextField或TextBox的文本内容。
---@field text string;
---@field video
---视频事件
event = {}
return event