---场景加载模板

local composer = require( "composer" )

local scene = composer.newScene()

-- -----------------------------------------------------------------------------------------------------------------
-- 所有监听函数之外的代码指挥执行一次,直到"composer.removeScene()"被调用之后
-- -----------------------------------------------------------------------------------------------------------------
-- 函数声明应该写在前面
-- -------------------------------------------------------------------------------


-- "scene:create()"
function scene:create( event )

    local sceneGroup = self.view

    -- 初始化场景
    -- Example: 将一个显示对象displayObject添加到 "sceneGroup", 添加触摸监听函数, etc.
end


-- "scene:show()"
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- 场景即将加载但是尚未显示时需要调用的函数
    elseif ( phase == "did" ) then
        -- 场景完整插入之后调用
        -- Example: 开始计时, 播放动画, 播放视频, etc.
    end
end


-- "scene:hide()"
function scene:hide( event )

    local sceneGroup = self.view
    local phase = event.phase
    if ( phase == "will" ) then
        -- 场景即将离开但是尚未离开时需要调用的函数
        -- 在这里插入的代码会执行之后才会继续进行离开场景的动作
        -- Example: 停止计时, 停止动画, 停止视频, etc.
    elseif ( phase == "did" ) then
        -- 场景离开后第一时间调用此函数
    end
end


-- "scene:destroy()"
function scene:destroy( event )

    local sceneGroup = self.view

    -- 在移除场景视图之前调用（“scenegroup”）。
    -- 在此处插入代码以清理场景。
    -- Example:去除图像对象,保存需要使用到的状态, etc.
end


-- -------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-- -------------------------------------------------------------------------------

return scene