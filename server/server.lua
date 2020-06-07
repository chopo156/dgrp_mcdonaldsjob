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

