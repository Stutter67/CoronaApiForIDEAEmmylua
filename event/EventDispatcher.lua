---@class EventDispatcher
EventDispatcher = {}

---向对象的侦听器列表添加侦听器
---@param eventName string 需要监听的事件
---@param listener function 监听事件触发实质性的函数
---@return boolean | nil
function  EventDispatcher:addEventListener( eventName, listener ) end

---指定event给对象的调度
---@param event string
---@return nil
function  EventDispatcher:dispatchEvent( event ) end

---从对象的侦听器列表中删除指定的侦听器，以便不再向其通知与指定事件对应的事件。
---@param eventName string
---@param listener function
---@return boolean|nil
function  EventDispatcher:removeEventListener( eventName, listener ) end
return EventDispatcher