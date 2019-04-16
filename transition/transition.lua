---动画库。
---transition库提供了创建动画和补间动画的方法，同时帧与帧之间还能够控制暂停、复原和取消控制。
---因为当前帧与目标帧的对象状态不同，需要设置目标帧的状态，也可以设置延迟、播放时间等。
---可以配合easing.*库来控制数值的变化方式
---@class transition
transition = {}

---取消正在进行的动画
---@overload fun( transitionReference:DisplayObject ):nil
---@overload fun( displayObject:DisplayObject ):nil
---@overload fun( tagName:string ):nil
---@return nil
function transition.cancel() end

---暂停正在进行的动画
---@overload fun( transitionReference:DisplayObject ):nil
---@overload fun( displayObject:DisplayObject ):nil
---@overload fun( tagName:string ):nil
---@return nil
function transition.pause() end

---恢复正在进行的动画
---@overload fun( transitionReference:DisplayObject ):nil
---@overload fun( displayObject:DisplayObject ):nil
---@overload fun( tagName:string ):nil
---@return nil
---
function transition.resume() end

---与transition.to（）类似，不同之处在于在参数表中指定了起始属性值，并且最终值是调用之前对象的相应属性值。
---即from时从设置的X,Y点移动到最终图像是显示的位置
---@param target table 显示图像
---@param params table 规格参数属性
---@return table
function transition.from( target, params ) end
--与transition.from（）类似
---即to时从设置的图像移动到最终设定的X,Y 位置
---@param target table 显示图像
---@param params table 规格参数属性
---@return table
function transition.to( target , params ) end




---指定的对象展示 闪烁 效果
---@overload fun(target:table):DisplayObject
---@param target table 显示对象
---@param params table 参数
---@return DisplayObject
function transition.blink( target, params ) end

---将图像1 转变为图像2 实现淡出淡入的效果
---@overload fun(object1:DisplayObject, object2:DisplayObject,time:number):DisplayObject
---@overload fun(object1:DisplayObject, object2:DisplayObject,delay:number):DisplayObject
---@param object1 DisplayObject 初始显示对象
---@param object2 DisplayObject 最终的显示对象。
---@param time number 指定转换的持续时间（以毫秒为单位）(默认500毫秒)
---@param delay number 指定转换开始之前的延迟（以毫秒为单位)(默认0毫秒)
---@return Object
function transition.dissolve(object1, object2, time, delay) end

---淡入图像(在指定时间内将对象淡入为不透明 )
---@overload fun(target):Object
---@param target table 显示对象
---@param params table 规格参数
---@return Object
function transition.fadeIn( target , params ) end

---淡出图像(在指定时间内将对象淡化为全透明 )
---@overload fun(target):Object
---@param target table 显示对象
---@param params table 规格参数
---@return Object
function transition.fadeOut( target , params ) end

---功能一样?
---在指定时间内按指定x和y坐标量移动对象。
---@param target table 显示对象
---@param params table 规格参数
---@return Object
function transition.moveBy(target , params) end
---将对象移动到指定时间内的指定x和y坐标。
---@param target table 显示对象
---@param params table 规格参数
---@return Object
function transition.moveTo( target , params) end

---?功能不同
---在指定时间内按指定xScale和yScale金额缩放对象。
---@param target table 显示对象
---@param params table 规格参数
---@return Object
function transition.scaleBy( target, params ) end
---在指定时间内按指定xScale和yScale金额缩放对象。
---@param target table 显示对象
---@param params table 规格参数
---@return Object
function transition.scaleTo( target, params ) end
return transition;
