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
	-- user =  ngx.ctx.authenticated_credential
	-- requestParams = getRequestUrlParams(config.url)
	print("AYOOO WHATUP");
end

return GroupAuthouriser