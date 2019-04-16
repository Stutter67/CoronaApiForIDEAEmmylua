---@class tiemer
timer = {}
---取消以timer.performWithDelay（）启动的计时器
---@param timerId number  来自 timer.performWithDelay（）的计时器ID。
---@return number 返回一个数字，表示剩余的时间量，以毫秒为单位
function timer.cancel( timerId ) end

---暂停以timer.performWithDelay（）启动的计时器
---@param timerId number  来自 timer.performWithDelay（）的计时器ID。
---@return number 返回一个数字，表示剩余的时间量，以毫秒为单位
function timer.pause( timerId ) end

---恢复使用timer.pause（）暂停的计时器。
---@param timerId number 来自 timer.performWithDelay（）的计时器ID。
---@return number 它返回一个数字，表示计时器中剩余的时间量。
function timer.resume( timerId ) end

---@overload fun(delay:number,listener:function):table
---@param delay number 以毫秒为单位的延迟(不会比帧率的1/60小)
---@param listener function 监听函数
---@param iterations number 重复的次数
---@return table
function timer.performWithDelay( delay, listener , iterations ) end

return timer