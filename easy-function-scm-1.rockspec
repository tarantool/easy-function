package = 'easy-function'
version = 'scm-1'
source  = {
    url = '/dev/null',
}

dependencies = {
    'tarantool >= 2.5',
    'lua >= 5.1',
    'checks == 3.1.0-1',
    'cartridge == 2.6.0-1',
    'ddl >= 1.4.0, < 2',
    'analytics == scm-1', -- from submodule
    'cartridge-extensions == scm-1',
    'migrations == 0.4.0-1',
    'crud == 0.6.0-1',
}

build = {
    type = 'make';
    install_variables = {
        INSTALL_LUADIR="$(LUADIR)",
    },
}
