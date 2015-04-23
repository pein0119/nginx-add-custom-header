-- 生成logid
local function gen_logid()
   -- 前缀精确到纳秒
   local logid_prefix = string.format("%.9f", os.time() + os.clock())
   logid_prefix = logid_prefix:gsub("%.", "")

   -- 随机种子精确到微秒
   math.randomseed(os.time() + os.clock())
   local random_number = string.format("%03d", math.random(0, 1000))

   local logid = logid_prefix .. random_number
   return logid
end  

-- 设置自定义header
local headers = ngx.req.get_headers()
if headers["x-mls-logid"] == nil then
   local logid = gen_logid()
   ngx.req.set_header("x-mls-logid", logid)
end   
