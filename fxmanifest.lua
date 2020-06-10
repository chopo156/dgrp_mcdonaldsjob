fx_version 'adamant'

game 'gta5'

description 'DGRP McDonalds Job'

version '1.1'

this_is_a_map 'yes'

server_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'locales/fr.lua',
	'config.lua',
	'server/server.lua',
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'locales/fr.lua',
	'config.lua',
	'client/client.lua'
}
dependencies {
	'es_extended',
	'esx_basicneeds',
	'pNotify',
	'progressBars'
}

files {
    'stream/McDonaldsVan/CarData/vehicles.meta',
    'stream/McDonaldsVan/CarData/carvariations.meta',
    'stream/McDonaldsVan/CarData/handling.meta',
    'stream/McDonaldsVan/CarData/dlctext.meta',
    'stream/McDonaldsVan/CarData/carcols.meta'
}

data_file 'CARCOL_FILE' 'stream/McDonaldsVan/CarData/carcol.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/McDonaldsVan/CarData/carvariations.meta'
data_file 'DLCTEXT_FILE' 'stream/McDonaldsVan/CarData/dlctext.meta'
data_file 'HANDLING_FILE' 'stream/McDonaldsVan/CarData/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/McDonaldsVan/CarData/vehicles.meta'
