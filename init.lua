#!/usr/bin/env tarantool

require('strict').on()
package.setsearchroot()

local front = require('frontend-core')
local cartridge = require('cartridge')
local analytics = require('analytics')
local tutorial = require('easy-function.bundle')

require('cartridge.roles.vshard-router').hidden = true
require('cartridge.roles.vshard-storage').hidden = true
require('extensions').permanent = true

local ok, err = cartridge.cfg({
    roles = {
        'cartridge.roles.vshard-router',
        'cartridge.roles.vshard-storage',
        'cartridge.roles.crud-router',
        'cartridge.roles.crud-storage',
        'extensions',
        'migrator',
    },
    vshard_groups = {
        default = {bucket_count = 1000},
    },
})
assert(ok, tostring(err))

front.add('analytics_static', analytics.static_bundle)
front.add('ga', analytics.use_bundle({ ga = '71738660-1' }))
front.add('tutorial', tutorial)

package.loaded.migrator.set_loader(
    require('migrator.config-loader').new()
)
