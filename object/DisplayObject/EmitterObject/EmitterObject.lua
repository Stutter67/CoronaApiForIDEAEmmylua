---@class EmitterObject
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
------------
--全局
-----------
---@field state
---@field textureFileName
---@field maxParticles
---@field angle
---@field angleVariance
---@field emitterType
---@field absolutePosition
---@field duration
---@field particleLifespan
---@field particleLifespanVariance
---@field startParticleSize
---@field startParticleSizeVariance
---@field finishParticleSize
---@field finishParticleSizeVariance
---@field rotationStart
---@field rotationStartVariance
---@field rotationEnd
---@field rotationEndVariance
--------
---使用与点线矩阵
---@field speed
---@field speedVariance
---@field sourcePositionVariancex
---@field sourcePositionVariancey
---@field gravityx
---@field gravityy
---@field radialAcceleration
---@field radialAccelVariance
---@field tangentialAcceleration
---@field tangentialAccelVariance
----------
---径向即圆周
---@field maxRadius
---@field maxRadiusVariance
---@field minRadius
---@field minRadiusVariance
---@field rotatePerSecond
---@field rotatePerSecondVariance
-----------
----颜色/透明度
---@field startColorRed
---@field startColorGreen
---@field startColorBlue
---@field startColorAlpha
---@field startColorVarianceRed
---@field startColorVarianceGreen
---@field startColorVarianceBlue
---@field startColorVarianceAlpha
---@field finishColorRed
---@field finishColorGreen
---@field finishColorBlue
---@field finishColorAlpha
---@field finishColorVarianceRed
---@field finishColorVarianceGreen
---@field finishColorVarianceBlue
---@field finishColorVarianceAlpha
---混合模式
---@field blendFuncSource
---@field blendFuncDestination

EmitterObject = {}
---@param xContent number
---@param yContent number
---@return number
function EmitterObject:contentToLocal(  xContent, yContent ) end
---@param x number
---@param y number
---@return number
function EmitterObject:localToContent( x , y ) end
---@return EmitterObject
function EmitterObject:removeSelf( ) end
---@param deltaAngle number
---@return nil
function EmitterObject:rotate( deltaAngle ) end
---@param xScale number
---@param yScale number
---@return nil
function EmitterObject:scale( xScale, yScale ) end
---@param mask Mask 使用 graphics.newMask（）创建的蒙版对象
---@return nil
function EmitterObject:setMask(  mask ) end
---@return nil
function EmitterObject:toBack() end
---@return nil
function EmitterObject:toFront() end
---@param deltaX number
---@param deltaY number
---@return nil
function EmitterObject:translate( deltaX , deltaY ) end

---向对象的侦听器列表添加侦听器
---@param eventName string 需要监听的事件
---@param listener function 监听事件触发实质性的函数
---@return boolean | nil
function  EmitterObject:addEventListener( eventName, listener ) end

---指定event给对象的调度
---@param event string
---@return nil
function  EmitterObject:dispatchEvent( event ) end

---从对象的侦听器列表中删除指定的侦听器，以便不再向其通知与指定事件对应的事件。
---@param eventName string
---@param listener function
---@return boolean|nil
function  EmitterObject:removeEventListener( eventName, listener ) end

-------------------------------------------------------------------------------
---@return nil
function  EmitterObject:start() end
---@return nil
function  EmitterObject:stop() end
---@return nil
function  EmitterObject:pause() end
return EmitterObject