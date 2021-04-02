#!/usr/bin/env tarantool

require('strict').on()
package.setsearchroot()

local front = require('frontend-core')
local cartridge = require('cartridge')
local analytics = require('analytics')

local ok, err = cartridge.cfg({
    roles = {
        'cartridge.roles.vshard-router',
        'cartridge.roles.vshard-storage',
        'extensions',
        'cartridge.roles.crud-router',
        'cartridge.roles.crud-storage',
    }
})
assert(ok, tostring(err))

front.add('analytics_static', analytics.static_bundle)
front.add('ga', analytics.use_bundle({ ga = '71738660-1' }))
