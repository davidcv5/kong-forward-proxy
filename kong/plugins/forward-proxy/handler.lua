local plugin = require('kong.plugins.base_plugin'):extend()
local plugin_name = ({...})[1]:match('^kong%.plugins%.([^%.]+)')

plugin.PRIORITY = 1000

function plugin:new()
    plugin.super.new(self, plugin_name)
end

function plugin:access(plugin_conf)
    plugin.super.access(self)
    ngx.var.upstream_host = ngx.ctx.service.host
    ngx.ctx.balancer_address.host = plugin_conf.proxy_host
    ngx.ctx.balancer_address.port = plugin_conf.proxy_port
end

return plugin
