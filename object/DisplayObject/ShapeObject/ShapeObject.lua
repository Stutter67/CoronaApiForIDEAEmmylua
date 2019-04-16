---@class ShapeObject
---继承自DisplayObject
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
---自己拥有的
---@field fills
---@field path
---@field stroke
---@field trokeWidth

ShapeObject = {}
---继承自DisplayObject
---@param xContent number
---@param yContent number
---@return number
function ShapeObject:contentToLocal(  xContent, yContent ) end
---@param x number
---@param y number
---@return number
function ShapeObject:localToContent( x , y ) end
---@return ShapeObject
function ShapeObject:removeSelf( ) end
---@param deltaAngle number
---@return nil
function ShapeObject:rotate( deltaAngle ) end
---@param xScale number
---@param yScale number
---@return nil
function ShapeObject:scale( xScale, yScale ) end
---@param mask Mask 使用 graphics.newMask（）创建的蒙版对象
---@return nil
function ShapeObject:setMask(  mask ) end
---@return nil
function ShapeObject:toBack() end
---@return nil
function ShapeObject:toFront() end
---@param deltaX number
---@param deltaY number
---@return nil
function ShapeObject:translate( deltaX , deltaY ) end

---向对象的侦听器列表添加侦听器
---@param eventName string 需要监听的事件
---@param listener function 监听事件触发实质性的函数
---@return boolean | nil
function  ShapeObject:addEventListener( eventName, listener ) end

---指定event给对象的调度
---@param event string
---@return nil
function  ShapeObject:dispatchEvent( event ) end

---从对象的侦听器列表中删除指定的侦听器，以便不再向其通知与指定事件对应的事件。
---@param eventName string
---@param listener function
---@return boolean|nil
function  ShapeObject:removeEventListener( eventName, listener ) end

---自己独立拥有的
---@param gray number
---@param red number
---@param green number
---@param blue number
---@param alpha number
---@param gradient number
---@return nil
function  ShapeObject:setFillColor( gray, red, green, blue, alpha ,gradient ) end
---@param gray number
---@param red number
---@param green number
---@param blue number
---@param alpha number
---@return nil
function  ShapeObject:setStrokeColor( gray, red, green, blue, alpha ) end
return ShapeObject