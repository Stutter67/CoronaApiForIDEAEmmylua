---@class json
---@field null nil
---The json library allows you to serialize and deserialize Lua tables into JSON (JavaScript Object Notation).
---You often use JSON-formatted data in conjunction with web APIs, for example requests sent using the facebook library.
---该json库允许将Lua中表序列化和反序列化为JSON（JavaScript Object Notation）。
---用例:将JSON格式的数据与Web API结合使用
json = {}
--
---Decodes the JSON-encoded data structure and returns a Lua object (table) with the data.
---The return value is a Lua object when the data is successfully decoded or, in the case of an error, three values: nil, the position of the next character that doesn't belong to the object, and an error message.
---将JSON数据结构转换成并Lua对象（表）。
---当数据成功解码时，返回值是Lua对象(表);
---如果是错误，则返回值是三个值：nil，出错的字符串索引位置，以及错误信息。
---@overload fun( data:string ):table
---@overload fun( data:string , position:number ):table
---@overload fun( data:string , nullval:string):table
---@param data string 包含JSON数据的字符串
---@param position number 索引data开始解码（默认为1省略）。
---@param nullval string 值为json.null（参见json.encode（））的项目要返回的值。如果您的数据包含“null”的项目但您需要知道它们的存在（在Lua中，表格项目的值nil通常不存在）
---@return table 当数据成功解码时，返回值是Lua对象;如果是错误，则返回值是三个值：nil，不属于该对象的下一个字符的位置，以及错误消息。
function json.decode( data , position , nullval ) end

---Decodes the contents of a file that is expected to contain JSON-encoded data and returns a Lua object (table) with the appropriate data.
---The return value is a Lua object when the data is successfully decoded or, in the case of an error, three values: nil, the position of the next character that doesn't belong to the object, and an error message.
---Errors can either relate to issues opening the file or to JSON syntax issues.
---@overload fun( data:string ):table
---@overload fun( data:string , position:number ):table
---@overload fun( data:string , nullval:string):table
---@param filename string 包含JSON数据文件
---@param position number 索引file开始解码（默认为1省略）。
---@param nullval string 值为json.null（参见json.encode（））的项目要返回的值。如果您的数据包含“null”的项目但您需要知道它们的存在（在Lua中，表格项目的值nil通常不存在）
---@return table 当数据成功解码时，返回值是Lua对象;如果是错误，则返回值是三个值：nil，不属于该对象的下一个字符的位置，以及错误消息。
function json.decodeFile( filename , position , nullval ) end

---Returns the Lua object (table) as a JSON-encoded string.
---Since items with nil values in a Lua table effectively don't exist, you should use json.null as a placeholder value if you need to preserve array indices in your JSON (see discussion of nullval in json.decode()).
---将Lua对象（表）解析为JSON编码的字符串返回。
---如果需要将表中的nil转换成Json
---使用json.null作为占位符值代替nil
---@overload fun ( t:table ):string
---@param t table lua表
---@generic V
---@param options table<string , V>  Lua表包含JSON库的可选指令:indent,exception
---@return string json字符串
function json.encode( t ,options ) end

---Returns a string which is a human readable representation of the given object (or valid JSON string).
---The string is indented and the top-level keys are sorted into alphabetical order suitable for displaying on the console with print().
---将lua的一个对象转换成一个字符串
---@param obj table | string 可以解析成字符串的内容
---@return string
function json.prettify( obj ) end

return json