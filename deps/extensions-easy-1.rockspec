package = 'extensions'
version = 'easy-1'

local git_ref = '1.0.0-1-g4d53057'
local git_hash = '4d5305790011ba96f99f23412e035b7d9b9ade6f'
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
