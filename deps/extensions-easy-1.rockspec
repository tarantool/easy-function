package = 'extensions'
version = 'easy-1'

local git_ref = '1.0.0-3-gb68e7da'
local git_hash = 'b68e7dacd79a121dbd9e3715a8a344515293cfb9'
source  = {
    url = 'https://github.com/tarantool/cartridge-extensions/archive/'
        .. git_ref .. '.zip',
    dir = 'cartridge-extensions-' .. git_hash
}

build = {
    type = 'builtin',
    modules = {
        ['extensions'] = 'extensions.lua',
    }
}
