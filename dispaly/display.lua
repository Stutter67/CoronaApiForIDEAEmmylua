---@class display
---?内容和真实设备?
---?Corona的动态图像选择功能使用的后缀特点
---@field imageSuffix any
---取得内容的高度等比缩放前的高度?
---@field actualContentHeight  number
---取得内容的宽度等比缩放前的宽度
---@field actualContentWidth  number
---取得内容的x轴中心(config.lua中的)
---@field contentCenterX  number
---取得内容的y轴中心(config.lua中的))
---@field contentCenterY  number
---取得内容的高度(config.lua中的)
---@field contentHeight  number
---取得内容的宽度(config.lua中的)
---@field contentWidth  number
---内容像素与实际屏幕像素宽度之比。(如果指定了scale,不同规模的模式，如"letterbox"和"zoomEven"将导致不同的比例系数。)
---@field contentScaleX  number
---内容像素与实际屏幕像素宽度之比。(如果指定了scale,不同规模的模式，如"letterbox"和"zoomEven"将导致不同的比例系数。)
---@field contentScaleY  number
---当前display对象被引用的次数
---@field currentStage  number
---设备FPS
---@field fps number
---设备的真实高度
---@field pixelHeight  number
---设备的真是宽度
---@field pixelWidth  number
---从实际屏幕左侧到内容区域左侧的x距(即进行缩放适应以后裁剪的部分)
---@field screenOriginX  number
---从实际屏幕顶部到内容区域顶部的x距(即进行缩放适应以后裁剪的部分)
---@field screenOriginY  number
----一个只读属性，表示内容像素中状态栏的高度。,即将被启用
---@field statusBarHeight  number
---一个只读属性，表示内容像素中状态栏的高度。
---@field topStatusBarContentHeight  number
---包含内容坐标中可查看屏幕区域的高度(一般与config中的y内容相同)
---@field viewableContentHeight  number
---包含内容坐标中可查看屏幕区域的宽度(x)
---@field viewableContentWidth  number
---设置状态栏常数
---@field HiddenStatusBar
---@field DefaultStatusBar
---@field TranslucentStatusBar
---@field DarkStatusBar
---@field LightTransparentStatusBar
---@field DarkTransparentStatusBar


display = {}

---将指定凸显对象的图像内容捕获并且返回
---@overload fun(displayObject:DisplayObject):DisplayObject
---@param displayObject DisplayObject 引用要捕获的显示对象/组的变量
---@param options table 捕获选项表 - 有关详细信息
---@return DisplayObject
function display.capture( displayObject, options ) end

---将指定区域图像内容捕获并且返回
---@overload fun(screenBounds:DisplayObject):DisplayObject
---@param screenBounds table 需要捕获的矩形内容的坐标
---@param saveToPhotoLibrary boolean 是否保存在图片库
---@return DisplayObject
function display.captureBounds( screenBounds , saveToPhotoLibrary ) end

---将当前屏幕图像内容捕获并且返回
---@overload fun():DisplayObject
---@param saveToPhotoLibrary boolean 是否保存在图片库
---@return DisplayObject
function display.captureScreen( saveToPhotoLibrary ) end

----获取屏幕上像素的颜色。
---@param x number x坐标
---@param y number y坐标
---@param listener function 监听函数
---@return nil
function display.colorSample(  x, y, listener  ) end

---?
---返回对当前阶段对象的引用，该对象是所有显示对象和组的父组
---@return DisplayObject
function display.getCurrentStage() end

---获取系统设置的默认值
---@param key string 需要获取的默认值的键
---@return any
function display.getDefault( key ) end

---远程调用网络图片
---@param url string HTTP请求URL应指向有效的远程PNG或JPG文件
---@param method string GET默认或"POST"
---@param listener DisplayObject
---@param params table
---@param destFilename string
---@param baseDir string
---@param x number
---@param y number
---@return DisplayObject
function display.loadRemoteImage( url, method, listener , params, destFilename , baseDir , x, y ) end

---创建一个半径半径以指定坐标（xCenter，yCenter）为中心的圆。
---@overload fun(xCenter:number, yCenter:number, radius:number):DisplayObject
---@param parent DisplayObject
---@param xCenter number
---@param yCenter number
---@param radius number
---@return ShapeObject
function display.newCircle( parent, xCenter, yCenter, radius ) end

---?创建一个掩码容器
---@overload fun(width:number, height:number):DisplayObject
---@param parent number
---@param width number
---@param height number
---@return GroupObject
function display.newContainer( parent, width, height ) end

---创建一个字体
---@param parent DisplayObject
---@param text string
---@param x number
---@param y number
---@param width number
---@param height number
---@param font string
---@param fontSize number
---@return TextObject
function display.newEmbossedText(  parent, text, x, y, width, height, font, fontSize  ) end

---显示粒子动画效果
---@overload fun(emitterParams:table):DisplayObject
---@param emitterParams table
---@param baseDir Constant
---@return EmitterObject
function display.newEmitter( emitterParams , baseDir ) end

---创建一个父容器用于存放图片
---@return GroupObject
function display.newGroup() end

---屏幕上显示图像文件
---@param parent GroupObject 用于插入图像对象的可选显示组。
---@param filename string
---@param baseDir Constant
---@param x number 图像的 x坐标
---@param y number 图像的 x坐标
---@return DisplayObject
function display.newImage( parent, filename , baseDir, x, y ) end
---@overload fun( filename:string, width:number, height:number):DisplayObject
---@overload fun( parent:GroupObject, filename:string, width:number, height:number):DisplayObject
---@overload fun( filename:string, baseDir:Constant, width:number, height:number):DisplayObject
---@param parent GroupObject 用于插入图像对象的可选显示组。
---@param filename string
---@param baseDir Constant
---@param width number 图像的宽度(参考屏幕比例)
---@param height number 图像的高度(参考屏幕比例)
---@return DisplayObject
function display.newImageRect( parent, filename, baseDir, width, height ) end
---@param parent GroupObject 用于插入图像对象的可选显示组。
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param x3 number
---@param y3 number
---@param ... number 每一组都已前一组的坐标作为起点
---@return LineObject
function display.newLine( parent, x1, y1, x2, y2 , x3, y3, ...  ) end
---通过提供形状的顶点来绘制网格形状
---@param parent GroupObject
---@param x number
---@param y number
---@param options table
---@return ShapeObject
function display.newMesh( parent, x, y, options ) end

---@param parent GroupObject
---@param x number
---@param y number
---@param vertices table
---@return ShapeObject
function display.newPolygon( parent, x, y, vertices) end
---@param parent GroupObject
---@param x number
---@param y number
---@param width number
---@param height number
---@return ShapeObject
function display.newRect( parent, x, y, width, height ) end
---@param parent GroupObject
---@param x number
---@param y number
---@param width number
---@param height number
---@param cornerRadius number
---@return ShapeObject
function display.newRoundedRect( parent, x, y, width, height, cornerRadius ) end
---@param parent GroupObject
---@param w number
---@param h number
---@return SnapshotObject
function display.newSnapshot( parent, w, h ) end
---@param parent GroupObject
---@param imageSheet ImageSheet
---@param sequenceData table
---@return 	SpriteObject
function display.newSprite( parent, imageSheet, sequenceData ) end
---@param options table
---@return 	TextObject
function display.newText( options ) end
---@param object DisplayObject
---@return nil
function display.remove(object) end
---@param displayObject DisplayObject
---@param options table
---@return nil
function display.save( displayObject, options ) end
---@param key string
---@param gray number
---@param r number
---@param g number
---@param b number
---@param alpha number
---@return nil
function display.setDefault( key ,gray, r, g, b, alpha   ) end
---@param key string
---@param value string
---@return nil
function display.setDrawMode( key, value ) end
---@param  mode Constant
---@return nil
function display.setStatusBar( mode) end
---@return number
function display.getSafeAreaInsets() end

return display