resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

version '0.1'

this_is_a_map 'yes'

client_scripts {
	--'locale.lua',
	--'locales/en.lua',
	--'locales/fr.lua',
	'client/client.lua',
	'config.lua'
}

server_scripts {
	'server/server.lua'
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

dependency {
	'es_extended',
	'esx_menu_default',
	'esx_addonaccount',
	'esx_addoninventory',
	'esx_basicneeds',
	'pNotify',
	'progressBars'
}
