local t = require('luatest')
local h = require('test.helper')
local g = t.group()

local log = require('log')

function g.test_sample()
    log.info(h.project_root)
end
