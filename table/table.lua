---@class table
---
table = {}

---复制数组,遇到空之后的内容不再复制,进行下一个数组的复制
---@overload fun(t:table, ...:table):table
---@param t table
---@return table
function table:copy( t ) end

---返回数组中元素的整数索引，或者nil该元素不在数组中。搜索遍历数组的长度，#t如果存在漏洞则由其值确定。
---@param t table 要搜索的数组。
---@param element string|number 要在数组中搜索的元素t。
---@return number
function table:indexOf( t, element ) end

return table