# esx_mcdonaldsjob
A McDonalds Job for ESX. 
Comes with Addon Building and Addon Vehicles.

## Requirements
- [es_extended(v1-final)] (https://github.com/ESX-Org/es_extended/tree/v1-final)
- [esx_menu_default] (https://github.com/ESX-Org/esx_menu_default)
- [esx_addonaccount] (https://github.com/ESX-Org/esx_addonaccount)
- [esx_addoninventory] (https://github.com/ESX-Org/esx_addoninventory)
- [esx_basicneeds] (https://github.com/ESX-Org/esx_basicneeds)
- [pNotify] (https://github.com/Nick78111/pNotify)
- [progressBars] (https://github.com/EthanPeacock/progressBars)

## Download & Installation

### Using [fvm](https://github.com/qlaffont/fvm-installer)
```
fvm install --save --folder=esx esx-org/esx_mcdonaldsjob
```

### Using Git
```
cd resources
git clone https://github.com/FuryFight3r/esx_mcdonaldsjob [esx]/esx_mcdonaldsjob
```

### Manually
- Download https://github.com/FuryFight3r/esx_mcdonaldsjob/archive/master.zip
- Put it in the `[esx]` directory


## Installation
- Import `dgrp_McDonalds[EN].sql` in your database
- Add this in your server.cfg :

```
start esx_mcdonaldsjob
```

### Add below code to esx_basicneeds/server/main.lua

```lua
ESX.RegisterUsableItem('mcdonalds_drink', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('mcdonalds_drink', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	xPlayer.showNotification("~b~You drank a ~y~McDonalds ~b~ Drink.")
end)

ESX.RegisterUsableItem('mcdonalds_fries', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('mcdonalds_fries', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 50000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification("~b~You ate some ~y~McDonalds ~b~ Fries.")
end)

ESX.RegisterUsableItem('mcdonalds_burger', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('mcdonalds_burger', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification("~b~You ate a ~y~McDonalds ~b~ Burger.")
end)

ESX.RegisterUsableItem('mcdonalds_meal', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('mcdonalds_meal', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification("~b~You ate and drank a ~y~McDonalds ~b~Meal.")
end)

```
