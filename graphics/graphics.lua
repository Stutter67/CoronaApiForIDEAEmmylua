---@class graphics
graphics = {}
---@param effect table
---@return nil
function graphics.defineEffect(  effect ) end
---ImageSheet对象（有时称为精灵图片或纹理图集）允许您从单个图像文件加载多个图像。
---@overload fun(filename,  options):ImageSheet
---@param filename string 这是包含图像表的所有帧的图像文件的文件名。该文件也称为“精灵表”图像。
---@param baseDir  string 指定所在的基目录filename。选项包括system.ResourceDirectory，system.DocumentsDirectory，system.ApplicationSupportDirectory，system.TemporaryDirectory和system.CachesDirectory。默认是system.ResourceDirectory。
---@param options table  带有表示与生成的图像表相关的特定选项的键的表 - 有关详细信息
---@return ImageSheet
function graphics.newImageSheet( filename, baseDir, options) end
---@overload fun(filename:string):Mask
function graphics.newMask(filename , baseDir ) end
function graphics.newOutline() end
function graphics.newTexture() end
function graphics.releaseTextures() end
function graphics.getFontMetrics() end
return graphics