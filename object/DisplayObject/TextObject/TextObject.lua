---@class TextObject
---@field alpha
---@field anchorX
---@field anchorY
---@field blendMode
---@field contentBounds
---@field contentHeight
---@field contentWidth
---@field height
---@field isHitTestMasked
---@field isHitTestable
---@field isVisible
---@field maskRotation
---@field maskScaleX
---@field maskScaleY
---@field maskX
---@field maskY
---@field parent
---@field rotation
---@field width
---@field x
---@field xScale
---@field y
---@field yScale
---@field _defined
---@field _lastChange
---@field _properties
---_defined
---@field size
---@field text
---@field baselineOffset
TextObject = {}
---@param xContent number
---@param yContent number
---@return number
function TextObject:contentToLocal(  xContent, yContent ) end
---@param x number
---@param y number
---@return number
function TextObject:localToContent( x , y ) end
---@return TextObject
function TextObject:removeSelf( ) end
---@param deltaAngle number
---@return nil
function TextObject:rotate( deltaAngle ) end
---@param xScale number
---@param yScale number
---@return nil
function TextObject:scale( xScale, yScale ) end
---@param mask Mask 使用 graphics.newMask（）创建的蒙版对象
---@return nil
function TextObject:setMask(  mask ) end
---@return nil
function TextObject:toBack() end
---@return nil
function TextObject:toFront() end
---@param deltaX number
---@param deltaY number
---@return nil
function TextObject:translate( deltaX , deltaY ) end

---向对象的侦听器列表添加侦听器
---@param eventName string 需要监听的事件
---@param listener function 监听事件触发实质性的函数
---@return boolean | nil
function  TextObject:addEventListener( eventName, listener ) end

---指定event给对象的调度
---@param event string
---@return nil
function  TextObject:dispatchEvent( event ) end

---从对象的侦听器列表中删除指定的侦听器，以便不再向其通知与指定事件对应的事件。
---@param eventName string
---@param listener function
---@return boolean|nil
function  TextObject:removeEventListener( eventName, listener ) end

---------------------------------------------------------------------------
---自己独有
------------------------------------------------------------------------
---@param gray number
---@param red number
---@param green number
---@param blue number
---@param alpha number
---@param gradient number
---@return nil
function TextObject:setFillColor( gray, red, green, blue, alpha ,gradient ) end
---@param colorTable table
---@return nil
function TextObject:setEmbossColor( colorTable  ) end

return TextObject