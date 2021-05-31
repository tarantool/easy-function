-- This file is required automatically by luatest.
-- Add common configuration here.

local fio = require('fio')
local h = table.copy(require('cartridge.test-helpers'))

h.project_root = fio.dirname(debug.sourcedir())
h.server_command = fio.pathjoin(h.project_root, 'init.lua')

return h
