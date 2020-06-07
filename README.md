# esx_mcdonaldsjob
- A McDonalds Job for ESX. 
- Comes with Addon Building and Addon Vehicles.
- Multiple Roles: Cashier, Cook and Delivery Driver all with animations.
- Extensive Config for easy customization.
- All within 1 Addon!

![Logo](https://i.imgur.com/dA1Qe1d.png)
![Screenshot](https://i.imgur.com/0q6YWkF.jpg)

## Requirements
- [es_extended(v1-final)](https://github.com/ESX-Org/es_extended/tree/v1-final)
- [esx_menu_default](https://github.com/ESX-Org/esx_menu_default)
- [esx_addonaccount](https://github.com/ESX-Org/esx_addonaccount)
- [esx_addoninventory](https://github.com/ESX-Org/esx_addoninventory)
- [esx_basicneeds](https://github.com/ESX-Org/esx_basicneeds)
- [pNotify](https://github.com/Nick78111/pNotify)
- [progressBars](https://github.com/EthanPeacock/progressBars)

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

## Credits

- [ribsosay - McDonalds Building](https://www.gta5-mods.com/maps/mcdonalds-building-with-interior-and-drive-through-v-0-01)
- [frank_l59 - NRG Scooter](https://www.gta5-mods.com/vehicles/nrg-mc3)
- [MOH-samtoxie - Model VW Caddy](https://www.gta5-mods.com/vehicles/addon-volkswagen-caddy-pizza-delivery-danish-dansk)
- [FuryFight3r - Textures for Vehicles](https://github.com/FuryFight3r/)


# Legal
### License
esx_mcdonaldsjob - McDonalds ESX Job

Copyright (C) 2019-2020 DefectGaming - FuryFight3r

This program Is free software: you can redistribute it And/Or modify it under the terms Of the GNU General Public License As published by the Free Software Foundation, either version 3 Of the License, Or (at your option) any later version.

This program Is distributed In the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty Of MERCHANTABILITY Or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License For more details.

You should have received a copy Of the GNU General Public License along with this program. If Not, see http://www.gnu.org/licenses/.
