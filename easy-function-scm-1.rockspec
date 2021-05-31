package = 'easy-function'
version = 'scm-1'
source  = {
    url = '/dev/null',
}

dependencies = {
    'tarantool >= 2.5',
    'lua >= 5.1',
    'cartridge == 2.6.0-1',
    'migrations == 0.4.0-1',
    'extensions == easy-1',
    'crud == 0.6.0-1',
    'ddl == easy-1',
}

build = {
    type = 'none',
    -- type = 'make',
    -- install_variables = {
    --     INSTALL_LUADIR="$(LUADIR)",
    -- },
}
