---@class GroupObject
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
---自己独有
---@field numChildren
GroupObject = {}
---@param xContent number
---@param yContent number
---@return number
function GroupObject:contentToLocal(  xContent, yContent ) end
---@param x number
---@param y number
---@return number
function GroupObject:localToContent( x , y ) end
---@return GroupObject
function GroupObject:removeSelf( ) end
---@param deltaAngle number
---@return nil
function GroupObject:rotate( deltaAngle ) end
---@param xScale number
---@param yScale number
---@return nil
function GroupObject:scale( xScale, yScale ) end
---@param mask Mask 使用 graphics.newMask（）创建的蒙版对象
---@return nil
function GroupObject:setMask(  mask ) end
---@return nil
function GroupObject:toBack() end
---@return nil
function GroupObject:toFront() end
---@param deltaX number
---@param deltaY number
---@return nil
function GroupObject:translate( deltaX , deltaY ) end

---向对象的侦听器列表添加侦听器
---@param eventName string 需要监听的事件
---@param listener function 监听事件触发实质性的函数
---@return boolean | nil
function  GroupObject:addEventListener( eventName, listener ) end

---指定event给对象的调度
---@param event string
---@return nil
function  GroupObject:dispatchEvent( event ) end

---从对象的侦听器列表中删除指定的侦听器，以便不再向其通知与指定事件对应的事件。
---@param eventName string
---@param listener function
---@return boolean|nil
function  GroupObject:removeEventListener( eventName, listener ) end

---@overload fun(child:DisplayObject):nil
---@overload fun( index:number, child:DisplayObject ):nil
---@overload fun( child:DisplayObject,resetTransform:boolean ):nil
---@param index number
---@param child DisplayObject
---@param resetTransform boolean
---@return nil
function GroupObject:insert( index, child,  resetTransform ) end


---@param indexOrChild number|DisplayObject
---@return DisplayObject
function GroupObject:remove( indexOrChild ) end

return GroupObject