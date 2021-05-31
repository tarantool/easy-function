package = 'ddl'
version = 'easy-1'

local git_ref = '1.4.0-1-g468d755'
local git_hash = '468d7550d156604cfab30a26d8a76d028f43be2f'
source  = {
    url = 'https://github.com/tarantool/ddl/archive/'
        .. git_ref .. '.zip',
    dir = 'ddl-' .. git_hash
}

build = {
    type = 'builtin',
    modules = {
        ['ddl'] = 'ddl.lua',
        ['ddl.db'] = 'ddl/db.lua',
        ['ddl.get'] = 'ddl/get.lua',
        ['ddl.set'] = 'ddl/set.lua',
        ['ddl.check'] = 'ddl/check.lua',
        ['ddl.utils'] = 'ddl/utils.lua',
        ['cartridge.roles.ddl-manager'] =
            'cartridge/roles/ddl-manager.lua',
    }
}
