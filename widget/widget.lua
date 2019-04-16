---UI控件库。
---提供了包括按钮Button、列表TableView、进度条ProgressView、
---加载动画Spinner、步进计数Stepper、百分比控制拉条Slider、
---选项卡SegmentedControl、选择框Switch（单选、复选、开关）、
---可放大的区域ScrollView和菜单栏TabBar。
---控制位置时需要display的辅助。
---@class widget
widget = {}

---@class PickerWheelWidget
---@class ProgressViewWidget
---@class ScrollViewWidget
---@class SegmentedControlWidget
---@class SliderWidget
---@class SpinnerWidget
---@class StepperWidget
---@class SwitchWidget
---@class TabBarWidget
---@class TableViewWidget
---创建ButtonWidget对象。
---@param options table 参数规格
---@return ButtonWidget
function widget.newButton( options ) end

---滑动滚轮列表
---创建一个PickerWheelWidget对象。
---@param options table 参数规格
---@return PickerWheelWidget
function widget.newPickerWheel( options ) end

---进度条
---创建一个newProgressView对象。
---@param options table 参数规格
---@return ProgressViewWidget
function widget.newProgressView( options ) end

---内嵌的内容框
---创建一个newScrollView对象。
---@param options table 参数规格
---@return ScrollViewWidget
function widget.newScrollView( options ) end

---列表选择器
---创建一个newSegmentedControl对象。
---@param options table 参数规格
---@return SegmentedControlWidget
function widget.newSegmentedControl( options ) end

---滑动条列表
---创建一个newSlider对象。
---@param options table 参数规格
---@return SliderWidget
function widget.newSlider( options ) end
---创建一个旋转的图片
---创建一个newSpinner对象。
---@param options table 参数规格
---@return SpinnerWidget
function widget.newSpinner( options ) end

--- +-步进选择器
---创建一个newStepper对象。
---@param options table 参数规格
---@return StepperWidget
function widget.newStepper( options ) end

---实现单选(二选一)的按钮
---创建一个newSwitch对象。
---@param options table 参数规格
---@return SwitchWidget
function widget.newSwitch( options ) end

---顶栏或者底栏内容
---创建一个newTabBar对象。
---@param options table 参数规格
---@return TabBarWidget
function widget.newTabBar( options ) end

---行视图(行列表视图)
---创建一个newTableView对象。
---@param options table 参数规格
---@return TableViewWidget
function widget.newTableView( options ) end

---设置ButtonWidget插件风格
---创建一个PickerWheelWidget对象。
---@param theme string 主题名称
---@return nil
function widget.setTheme( theme ) end
return widget