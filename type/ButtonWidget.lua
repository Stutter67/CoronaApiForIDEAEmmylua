---@class ButtonWidget
ButtonWidget = {}
---@param label string 按钮新标题
---@return nil
function ButtonWidget:setLabel(label) end
function ButtonWidget:getLabel() end
---@param isEnabled boolean 启用禁用开关
---@return nil
function ButtonWidget:setEnabled( isEnabled ) end
---设置文本填充颜色
function ButtonWidget:setFillColor( gray, red, green, blue, alpha , gradient ) end
function ButtonWidget:setStrokeColor( gray, red, green, blue, alpha  ) end
return ButtonWidget