---@class network
---当前平台是否支持网络可访问性事件
---@field canDetectNetworkStatusChanges
network = {}
---开始监视主机的网络可达性状态
---@param hostURL string 监控的主机(域名去除"http://")
---@param listener function 获取指定主机的 networkStatus事件的侦听器
---@return nil
function network.setStatusListener( hostURL, listener ) end
---对URL发出异步HTTP或HTTPS请求
---@overload fun(url:string,method:string,listener:function):userdata
---@param url string HTTP请求URL
---@param method string HTTP方法; 可接受的值为"GET"（默认）， ，"POST"，"HEAD"，"PUT"和"DELETE"。
---@param listener function 在HTTP操作的各个阶段调用的侦听器函数
---@param params table 一个表，指定HTTP请求或响应处理选项
---@return userdata
function network.request(url, method, listener , params ) end
---取消使用network.request（），network.upload（）或network.download（）发出的未完成的网络请求。
---@param requestId userdata 用户请求对象的引用
---@return nil
function network.cancel( requestId ) end
---此API是一种非常类似于异步network.request（）的便捷方法,将请求结果下载
---@overload fun( url:string, method:string, listener:function , params:table, filename:string ):userdata
---@overload fun( url:string, method:string, listener:function , filename:string ,baseDirectory:string):userdata
---@param url string HTTP请求URL
---@param method string HTTP方法
---@param listener function 在HTTP操作的各个阶段调用的侦听器函数。
---@param params table 指定HTTP请求或响应处理选项的表
---@param filename string 要保存响应的文件的名称。
---@param baseDirectory string 保存文件的目录
---@return userdata
function network.download(  url, method, listener , params, filename , baseDirectory ) end

---此API是一种非常类似于异步network.request（）的便捷方法,将本地请求上传
---@overload fun( url:string, method:string, listener:function , params:table, filename:string ):userdata
---@overload fun( url:string, method:string, listener:function , params:table, filename:string ,baseDirectory:string):userdata
---@overload fun( url:string, method:string, listener:function , params:table, filename:string ,contentType:string):userdata
---@overload fun( url:string, method:string, listener:function , filename:string ,baseDirectory:string):userdata
---@overload fun( url:string, method:string, listener:function , filename:string ,baseDirectory:string,contentType:string):userdata
------@overload fun( url:string, method:string, listener:function , filename:string ,contentType:string):userdata
---@param url string HTTP请求URL
---@param method string HTTP方法
---@param listener function 在HTTP操作的各个阶段调用的侦听器函数。
---@param params table 指定HTTP请求或响应处理选项的表
---@param filename string 要保存响应的文件的名称。
---@param baseDirectory string 保存文件的目录
---@param contentType string 该Content-Type文件被上传
---@return userdata
function network.download(  url, method, listener , params, filename , baseDirectory ,contentType ) end
return network