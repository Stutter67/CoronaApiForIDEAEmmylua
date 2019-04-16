---@class media
---用于指示文件路径将被解释为远程服务器的URL。
---@field RemoteSource string
media = {}
function media.capturePhoto() end
function media.captureVideo() end
function media.hasSource() end
function media.newEventSound() end
function media.newRecording() end
function media.pauseSound() end
function media.playEventSound() end
function media.playSound() end
function media.playVideo() end
function media.save() end
function media.selectPhoto() end
function media.selectVideo() end
function media.setSoundVolume() end
function media.show() end
function media.stopSound() end
return media