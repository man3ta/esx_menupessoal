resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX Menu Perssol'

version '1.0.0'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'server.lua'
}

client_scripts {
	'config.lua',
	'client.lua',
	'keycontrol.lua',
	'handsup.lua',
	'pointing.lua',
	'crouch.lua'
}
