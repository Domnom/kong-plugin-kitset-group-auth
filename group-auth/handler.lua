local BasePlugin = require "kong.plugins.base_plugin"

local GroupAuthouriser = BasePlugin:extend()

GroupAuthouriser.PRIORITY = 999;

function GroupAuthouriser:new()
  GroupAuthouriser.super.new(self, "kitset-group-auth")
end

function getRequestUrlParams(url)
  return string.gmatch(url, "<(.-)>")
end


function GroupAuthouriser:access(config)
	GroupAuthouriser.super.access(self)
	-- user =  ngx.ctx.authenticated_credential
	-- requestParams = getRequestUrlParams(config.url)
	-- print("AYOOO WHATUP");
	ngx.req.set_header("Hello-World", "this is on a request")
end

function GroupAuthouriser:header_filter(plugin_conf)
  GroupAuthouriser.super.header_filter(self)

  -- your custom code here, for example;
  ngx.header["Bye-World"] = "this is on the response"

end

return GroupAuthouriser