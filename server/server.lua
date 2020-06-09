ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end) 

RegisterServerEvent('dgrp_mcdonalds:getPaid')
    AddEventHandler('dgrp_mcdonalds:getPaid', function(amount)
	local xPlayer = ESX.GetPlayerFromId(source)	
	xPlayer.addMoney(math.floor(amount))	
end)

RegisterServerEvent('dgrp_mcdonalds:payDeposit')
    AddEventHandler('dgrp_mcdonalds:payDeposit', function(amount)
	local xPlayer = ESX.GetPlayerFromId(source)	
	xPlayer.removeMoney(math.floor(amount))	
end)

RegisterServerEvent('dgrp_mcdonalds:returnDeposit')
    AddEventHandler('dgrp_mcdonalds:returnDeposit', function(amount)
	local xPlayer = ESX.GetPlayerFromId(source)	
	xPlayer.addMoney(math.floor(amount))	
end)

RegisterServerEvent('dgrp_mcdonalds:addItem')
    AddEventHandler('dgrp_mcdonalds:addItem', function(item)
	local xPlayer = ESX.GetPlayerFromId(source)	
	xPlayer.addInventoryItem(item, 1)
end)

RegisterServerEvent('dgrp_mcdonalds:removeItem')
    AddEventHandler('dgrp_mcdonalds:removeItem', function(item)
	local xPlayer = ESX.GetPlayerFromId(source)	
	xPlayer.removeInventoryItem(item, 1)
end)

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


--Ashton324's Items
ESX.RegisterUsableItem('MCDS_BIG_BREAKFAST', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('MCDS_BIG_BREAKFAST', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification(_U('used_mcdsbigbreakfast'))
end)

ESX.RegisterUsableItem('MCDS_HOTCAKES', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('MCDS_HOTCAKES', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification(_U('used_mcdshotcakes'))
end)

ESX.RegisterUsableItem('MCDS_FRIES', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('MCDS_FRIES', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('exports.esx_basicneeds:onEat', source)
	xPlayer.showNotification(_U('used_mcdsfries'))
end)

ESX.RegisterUsableItem('MCDS_SAUSAGEMCMCUFFIN', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('MCDS_SAUSAGEMCMCUFFIN', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification(_U('used_mcdssausagemcmuffin'))
end)

ESX.RegisterUsableItem('MCDS_EGGMCMUFFIN', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('MCDS_EGGMCMUFFIN', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification(_U('used_mcdseggmcmuffin'))
end)


ESX.RegisterUsableItem('MCDS_CHEESEBURGER', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('MCDS_CHEESEBURGER', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification(_U('used_mcdscheeseburger'))
end)

ESX.RegisterUsableItem('MCDS_BIGTASTY', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('MCDS_BIGTASTY', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification(_U('used_mcdsbigtasty'))
end)

ESX.RegisterUsableItem('MCDS_MCROYALE', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('MCDS_MCROYALE', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification(_U('used_mcdsmcroyale'))
end)

ESX.RegisterUsableItem('MCDS_QUARTERPOUNDER', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('MCDS_QUARTERPOUNDER', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification(_U('used_mcdsquarterpounder'))
end)

ESX.RegisterUsableItem('MCDS_BIGMAC', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('MCDS_BIGMAC', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification(_U('used_mcdsbigmac'))
end)

ESX.RegisterUsableItem('MCDS_DBLCHEESEBURGER', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('MCDS_DBLCHEESEBURGER', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification(_U('used_mcdsdblcheeseburger'))
end)

ESX.RegisterUsableItem('MCDS_BEEFBURGER', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('MCDS_BEEFBURGER', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification(_U('used_mcdsbeefburger'))
end)

ESX.RegisterUsableItem('MCDS_BBQANGUS', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('MCDS_BBQANGUS', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification(_U('used_mcdsbbqangus'))
end)

ESX.RegisterUsableItem('MCDS_CHICKENMAC', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('MCDS_CHICKENMAC', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification(_U('used_mcdschickenmac'))
end)

ESX.RegisterUsableItem('MCDS_MCNUGGETS', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('MCDS_MCNUGGETS', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification(_U('used_mcdsmcnuggets'))
end)

ESX.RegisterUsableItem('MCDS_WRAP', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('MCDS_WRAP', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification(_U('used_mcdswrap'))
end)

ESX.RegisterUsableItem('MCDS_FILETOFISH', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('MCDS_FILETOFISH', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification(_U('used_mcdsfilletofish'))
end)

ESX.RegisterUsableItem('MCDS_SPICYCHICK', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('MCDS_SPICYCHICK', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification(_U('used_mcdsspicychick'))
end)

ESX.RegisterUsableItem('MCDS_MCFLURRY', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('MCDS_MCFLURRY', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification(_U('used_mcdsmcflurry'))
end)

ESX.RegisterUsableItem('MCDS_CHICKENSPECIAL', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('MCDS_CHICKENSPECIAL', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification(_U('used_mcdschickenspecial'))
end)


--DRINK
ESX.RegisterUsableItem('MCDS_COKE', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('MCDS_COKE', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	xPlayer.showNotification(_U('used_mcdscoke'))
end)

ESX.RegisterUsableItem('MCDS_ORANGE', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('MCDS_ORANGE', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	xPlayer.showNotification(_U('used_mcdsorange'))
end)

ESX.RegisterUsableItem('MCDS_FANTA', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('MCDS_FANTA', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	xPlayer.showNotification(_U('used_mcdsfanta'))
end)

ESX.RegisterUsableItem('MCDS_MILKSHAKE', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('MCDS_MILKSHAKE', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	xPlayer.showNotification(_U('used_mcdsmilkshake'))
end)

ESX.RegisterUsableItem('MCDS_COFFEE', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('MCDS_COFFEE', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	xPlayer.showNotification(_U('used_mcdscoffee'))
end)

ESX.RegisterUsableItem('MCDS_LATTE', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('MCDS_LATTE', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	xPlayer.showNotification(_U('used_mcdslatte'))
end)

ESX.RegisterUsableItem('MCDS_AMERICANO', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('MCDS_AMERICANO', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	xPlayer.showNotification(_U('used_mcdsamericano'))
end)

ESX.RegisterUsableItem('MCDS_MOCHA', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('MCDS_MOCHA', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	xPlayer.showNotification(_U('used_mcdsmocha'))
end)

ESX.RegisterUsableItem('MCDS_HOTCHOC', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('MCDS_HOTCHOC', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	xPlayer.showNotification(_U('used_mcdshotchoc'))
end)

