---@class LineObject
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
---@field anchorSegments
---@field strokeWidth
LineObject = {}
---@param xContent number
---@param yContent number
---@return number
function LineObject:contentToLocal(  xContent, yContent ) end
---@param x number
---@param y number
---@return number
function LineObject:localToContent( x , y ) end
---@return LineObject
function LineObject:removeSelf( ) end
---@param deltaAngle number
---@return nil
function LineObject:rotate( deltaAngle ) end
---@param xScale number
---@param yScale number
---@return nil
function LineObject:scale( xScale, yScale ) end
---@param mask Mask 使用 graphics.newMask（）创建的蒙版对象
---@return nil
function LineObject:setMask(  mask ) end
---@return nil
function LineObject:toBack() end
---@return nil
function LineObject:toFront() end
---@param deltaX number
---@param deltaY number
---@return nil
function LineObject:translate( deltaX , deltaY ) end

---向对象的侦听器列表添加侦听器
---@param eventName string 需要监听的事件
---@param listener function 监听事件触发实质性的函数
---@return boolean | nil
function  LineObject:addEventListener( eventName, listener ) end

---指定event给对象的调度
---@param event string
---@return nil
function  LineObject:dispatchEvent( event ) end

---从对象的侦听器列表中删除指定的侦听器，以便不再向其通知与指定事件对应的事件。
---@param eventName string
---@param listener function
---@return boolean|nil
function  LineObject:removeEventListener( eventName, listener ) end

--------------------------------------------------------------------------
---@param x number
---@param y number
---@return nil
function  LineObject:append( x, y , ...  ) end
---@param gray number
---@param red number
---@param green number
---@param blue number
---@param alpha number
---@return nil
function  LineObject:setStrokeColor( gray, red, green, blue, alpha  ) end

return LineObject