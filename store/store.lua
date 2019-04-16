---@class store
---@field target  string
---@field store.canLoadProducts  boolean
---@field canMakePurchases  boolean
---@field Transaction  event
---@field productList  event
store = {}


---@class Listener
---@param listener Listener
---@return nil
function store.init(listener) end
---@param productIdentifiers table
---@param productListener Listener
---@return nil
function store.loadProducts( productIdentifiers, productListener ) end
---@param productIdentifiers table
---@return nil
function store.purchase( productIdentifiers ) end
---@param transaction table
---@return nil
function store.finishTransaction( transaction ) end

---@return nil
function store.restore() end

return store