---@class crypto
---@field md4 any
---@field md5 any
---@field sha1 any
---@field sha224 any
---@field sha256 any
---@field sha384 any
---@field sha512 any
---加密库
crypto = {}
---@overload fun ( algorithm:number, data:string ):string
---@param algorithm number 指定的哈希算法的常数
---@param data string 输入字符串
---@param raw boolean 指示输出是否应该是消息摘要的直接二进制等效项.如果false（默认），则将结果格式化为十六进制字符串。
---@return string
function crypto.digest( algorithm, data , raw ) end

---计算字符串的HMAC（消息认证码的密钥散列）并返回它。
---@overload fun ( algorithm:number, data:string , key:string ):string
---@param endalgorithm number 指定的哈希算法的常数
---@param data string 输入字符串
---@param key string 用作HMAC生成种子的字符串。
---@param raw boolean 指示输出是否应该是消息摘要的直接二进制等效项.如果false（默认），则将结果格式化为十六进制字符串。
---@return string
function crypto.hmac( endalgorithm, data, key , raw ) end

return crypto