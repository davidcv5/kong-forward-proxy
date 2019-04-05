package = "kong-plugin-forward-proxy"
version = "0.1.0-0"

source = {
  url = "git+://github.com/davidcv5/kong-plugin-forward-proxy.git"
}

description = {
  summary = "A Kong 1.x plugin that allows access to an upstream url through a proxy",
  license = "Apache 2.0"
}

dependencies = {
  "lua >= 5.1";
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.forward-proxy.handler"] = "kong/plugins/forward-proxy/handler.lua",
    ["kong.plugins.forward-proxy.schema"] = "kong/plugins/forward-proxy/schema.lua",
  }
}