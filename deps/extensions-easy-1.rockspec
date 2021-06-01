package = 'extensions'
version = 'easy-1'

local git_ref = '1.0.0-2-g8083397'
local git_hash = '8083397ae02d026dcd085ceac606d112621ef4c5'
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
