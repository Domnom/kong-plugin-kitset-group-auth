package = "kong-plugin-kitset-group-auth"
version = "0.1.0-1"
source = {
   url = "http://github.com/Domnom/kong-plugin-kitset-group-auth"
}
description = {
  summary = "KongAPI Gateway middleware plugin for authourising users based on keycloak group.",
  license = "Apache License 2.0"
}
dependencies = {
  "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
    ["kong.plugins.kitset-group-auth.handler"] = "group-auth/handler.lua",
    ["kong.plugins.kitset-group-auth.schema"] = "group-auth/schema.lua"
   }
}