---@class audio
---此属性等于当前可用于播放的频道数（频道未播放或暂停）
---@field freeChannels number
---返回通道总数。此值目前为32，但限制可能在将来发生变化。
---@field totalChannels number
---返回当前可用于播放的频道数（未播放或暂停的频道），不包括已保留的频道。
---@field unreservedFreeChannels number
---返回当前正在使用（播放或暂停）的通道数，不包括已保留的通道。
---@field unreservedUsedChannels number
---返回当前正在使用的频道数（播放或暂停）。
---@field usedChannels number
audio = {}

---Releases audio memory associated with a handle.
---释放与句柄关联的音频内存。
---@param audioHandle table 需要释放的音频,应当是audio.loadSound（） 或者 audio.loadStream（）函数的返回值
---@return nil
function audio.dispose( audioHandle ) end

---This fades a playing sound in a specified amount to a specified volume. The audio will continue playing after the fade completes.
---This function returns the number of channels fade is actually applied to.
-----@overload fun(t:{}):number
-----@overload fun(t:{channel:number}):number
-----@overload fun(t:{channel:number,time:number}):number
-----@overload fun(t:{channel:number,volume:number}):number
-----@overload fun(t:{time:number,volume:number}):number
-----@overload fun(t:{channel:number,time:number,volume:number}):number
---@generic option
---@param t table   表的可选值{ [channel=number需要淡出的频道] [, time=number淡出的时间] [, volume=number淡出的音量大小 ] }
---@return number  实际淡入淡出的音频通道数目
function audio.fade( t ) end

---This stops a playing sound in a specified amount of time and fades to min volume while doing it. The audio will stop at the end of the time and the channel will be freed.
---This function returns the number of channels audio.fadeOut() is actually applied to.
---这会在指定的时间内停止播放声音，并在执行此操作时逐渐消失至最小音量。音频将在结束时停止，频道将被释放。
---@param t table  表的可选值{ [channel=number需要淡出的频道] [, time=number淡出的时间]}
---@return number   返回audio.fadeOut()实际应用的通道数。
function audio.fadeOut( t ) end

------Looks for an available audio channel for playback. You can provide a start channel number as parameter and begin searching from that channel, increasing upward to the highest channel. The search does not include reserved channels.
---@param startChannel table 可选:起始搜索频道,未设置默认为1
---@return number 返回可用通道的通道编号，找不到可用通道返回0。
function audio.findFreeChannel( startChannel  ) end

---@overload fun():string
---@param audioHandle table audio.loadSound（）或 audio.loadStream（）返回的音频对象
---@return number 返回音频资源的总时间（以毫秒为单位）。如果总长度无法确定，返回-1
function audio.getDuration( audioHandle ) end

---@overload fun():number
---@param channel table 获取特定通道的最大音量,指定0将返回所有通道的平均音量。
---@return number 如果请求指定通道{ channel=指定通道数 }，此函数将返回通道最大音量 . 如果{ channel=0 }，则返回所有通道的平均最大音量。
function audio.getMaxVolume( channel ) end

---@overload fun():number
---@param channel table 获取特定通道的最小音量,指定0将返回所有通道的平均音量。
---@return number 如果请求指定通道{ channel=指定通道数 }，此函数将返回通道最小音量 . 如果{ channel=0 }，则返回所有通道的平均最小音量。
function audio.getMinVolume( channel ) end

---@overload fun( ):number
---@param channel table<"channel",number> 指定频道
---@return number 获取指定频道的音量
function audio.getVolume( channel ) end

---@param channel number 指定频道
---@return boolean 如果指定的频道是活动的(正在播放或暂停)则返回true; 否则返回false
function audio.isChannelActive( channel ) end

---@param channel number 指定频道
---@return boolean 如果指定的频道处于暂停则返回true; 否则(正在播放或者关闭)则false
function audio.isChannelPaused( channel ) end

---@param channel number 指定频道
---@return boolean 如果指定的频道处于播放则返回true; 否则(暂停或者关闭)则false
function audio.isChannelPlaying() end

---@overload fun(audiofileName:string):table
---@param audiofileName string 要加载的音频文件的路径
---@param baseDir string 声音文件应位于项目文件夹（system.ResourceDirectory）中。如果声音文件位于应用程序文档目录中
---@return table 音频文件对象
function audio.loadSound( audiofileName , baseDir) end

---@overload fun(audiofileName:string):table
---@param audiofileName string 使用流的方式读取要加载的音频文件的路径
---@param baseDir string 声音文件应位于项目文件夹（system.ResourceDirectory）中。如果声音文件位于应用程序文档目录中
---@return table 音频文件对象
function audio.loadStream( audiofileName , baseDir ) end

---暂停播放通道（如果未指定通道，则暂停所有通道）。对没有播放的频道没有影响。
---@overload fun( audiofileName:table ):number
---@param audioHandle table 从 audio.loadSound（）和 audio.loadStream（）获取的音频数据
---@param option table 可选参数
---@return number 返回实际暂停的通道或出错返回-1。
function audio.pause( audioHandle , option ) end

---在暂停的通道上恢复播放（如果未指定通道，则恢复所有通道）。应该对没有暂停的频道没有影响。
---@overload fun():number
---@param channel number 需要保留的通道
---@return number 实际恢复播放的通道  恢复出错返回-1
function audio.resume( channel ) end

---播放通道（如果未指定通道，则自动选择通道）。对没有播放的频道没有影响。
---@overload fun( audiofileName:table ):number
---@param audioHandle table 从 audio.loadSound（）和 audio.loadStream（）获取的音频数据
---@param option table 可选参数
---@return number 返回实际暂停的通道或出错返回0
function audio.play( audioHandle , option ) end

---停止在频道（或所有频道）上播放并清除频道，以便再次播放。仍将调用回调
---@overload fun():number
---@param channel number 需要停止的通道编号,未设置则停止所有通道
---@return number 实际停止的通道编号 停止出错返回1
function audio.stop( channel ) end

---停止在频道（或所有频道）上播放并清除频道，以便再次播放。仍将调用回调
---@overload fun(duration:number):number
---@param duration number 需要延时停止播放的时间
---@param options table 支持单个键的表，即channel要停止的通道。如果未传递参数，则停止所有通道。
---@return number 实际停止的通道编号 停止出错返回1
function audio.stopWithDelay( duration , options ) end

---@param channels number 保留低于此数字的通道  设置0将取消所有保留的通道
---@return number 当前保留的通道数
function audio.reserveChannels( channels ) end

---回放音频
---@overload fun():boolean
---@overload fun( channel:table):boolean
---@param audioHandleOrchannel table 要回放的数据的音频句柄。只应用于加载 audio.loadStream（）的音频。请勿在同一个呼叫中使用channel参数。
---@return boolean 此函数成功返回true，失败返回false。
function audio.rewind( audioHandleOrchannel ) end

---跳转音频到指定的时间
---@overload fun( time:number, channel:table ):boolean
---@param time number 要搜索的音频句柄中的时间（以毫秒为单位）
---@param audioHandle  table 仅用于加载 audio.loadStream（）的音频。请勿options.channel在同一个调用中使用该参数
---@return boolean 此函数成功返回true，失败返回false。
function audio.seek( time , audioHandle ) end

---设置一个音量的最大值.任何超过该音量的设置都将以这个最大值进行播放
---@param volume number  需要定义的音量最大值(0-1范围,1为系统最大音量)
---@param options table   需要应用此音量最大值的通道,0是应用于所有的通道
---@return boolean 此函数成功返回true，失败返回false。
function audio.setMaxVolume( volume, options ) end


---设置一个音量的最小任何低于该音量的设置都将以这个最小值进行播放
---@param volume number  需要定义的音量最小值(0-1范围,0为系统最小音量)
---@param options table   需要应用此音量最小值的通道,0是应用于所有的通道
---@return boolean 此函数成功返回true，失败返回false。
function audio.setMinVolume( volume, options ) end

---设置一个通道的音量或者是所有通道的音量
---@param volume number  需要定义的音量(0-1范围,1为系统最大音量)
---@param options table   需要应用此音量最大值的通道,0是应用于所有的通道,未设置则设置主音量(主因量的改变会影响通道音量)
---@return boolean
function audio.setVolume( volume, options ) end

return audio
