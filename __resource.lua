fx_version 'cerulean'
game 'gta5'

author 'Ivan_44 | PRX Leaks | https://discord.gg/Jm2UsCKN9S'
description 'A simple dimensions Script'
version '1.0'

dependencies {
    'es_extended',
    'essentialmode'
}

client_scripts {
    '@es_extended/locale.lua',
    'locales/es.lua',
    'locales/en.lua',
    'config.lua',
    'client/main.lua'
}
server_scripts {
    '@es_extended/locale.lua',
    'config.lua',
    'server/main.lua',
    'locales/es.lua',
    'locales/en.lua'
} 

