Config = {}
--			General
Config.Locale				= 'en'

--			Settings
--			  Jobs
Config.EnablePlayerJobs		= true		--Enables Jobs for Players to use.
Config.EnablePlayerCook		= true		--Cook gets drinks, makes burgers and fries and gives to clerk both for NPC orders and Player orders.
Config.EnablePlayerClerk	= true		--Clerk receives orders, gives to cook, receives orders from cook, and gives to customer. 				
Config.EnablePlayerDriver	= true		--Driver delivers orders marked for delivery.

Config.EnableNPCWorkers		= false		--NPC Workers are there if player jobs are disabled
Config.EnableNPCOrders		= true		--MUST be false if player jobs are disabled, gives RP NPC orders for players to undertake

Config.CookJobPay			= 50		--The amount the cook is paid per meal made.
Config.CashJobPay			= 40		--The amount the cashier is paid per meal delivered to table.
Config.DelivJobPay			= 75		--The amount the delivery driver is paid per delivery.

Config.PayDeposit			= true		--If true the below cost will take effect when taking out a work vehicle
Config.VanDepositAmount		= 300		--The amount that it cost to take out the van work vehicle
Config.BikeDepositAmount	= 150		--The amount that it cost to take out the bike work vehicle
Config.CarToSpawn			= 'vwcaddy'
Config.BikeToSpawn			= 'nrg'

Config.EnableMoreWorkMorePay	= true	--Each Time you complete a job, if true you get a pay rise for the next job.

--			Blips
Config.EnableBlips			= true
--		McDonalds Blip	
Config.blipLocationM		= vector2(106.7, -1059.5)	--Location
Config.blipIDM				= 78						--ID
Config.blipColorM			= 5							--Color
Config.blipScaleM			= 0.75						--Size
--	  McDonalds Job Blip	
Config.EnableJobBlip		= false						--true means show to all players, false only shows to players who have Mcdonalds Job Title.

Config.blipLocationJ		= vector2(138.78, -1060.86)	--Location
Config.blipIDJ				= 500						--ID
Config.blipColorJ			= 69						--Color
Config.blipScaleJ			= 0.65						--Size

Config.JobMarkerColor			= {r = 112, g = 255, b = 237, a = 75}	--Job Marker Color Default Cyan
Config.DeliveryMarkerColor		= {r = 120, g = 255, b = 142, a = 75}	--Marker Color Default Green
Config.CarDespawnMarkerColor	= {r = 255, g = 50, b = 50, a = 75}
Config.JobMarkerDistance		= 0.75									--The distance from the center of the marker to enable menu/text
Config.JobExtendedDistance		= 2.5
--		Cook Times
Config.CookDrinkTime		= 4 * 1000		--The time that it takes to make a drink.
Config.CookFriesTime		= 4 * 1000		--The time that it takes to make fries.
Config.CookBurgerTime		= 12 * 1000		--The time that it takes to make a burger.
Config.CookPrepareTime		= 12 * 1000		--The time that it takes to prepare the meal.
--	   Cashier Times
Config.CashOrderTime		= 10 * 1000		--The time that it takes to take an order.
Config.CashMealTime			= 15 * 1000		--The time that it takes to get a prepared meal.
Config.CashDelivTime		= 5 * 1000		--The time that it takes to give the customer the meal.

Config.EnableDowntownDeliveries		= true
Config.EnableBeachSideDeliveries	= true
Config.EnableHighEndDeliveries		= true

Config.Prefix = "^0[^1DGRP ^3McDonalds^0]:^4 "

--	   List of Coords

Config.JobMenuCoords		= vector3(138.78,-1060.86,28)

Config.CookBurgerCoords		= vector3(141.26,-1068.62, 28)
Config.CookFriesCoords		= vector3(136.77,-1073.53, 28)
Config.CookDrinkCoords		= vector3(138.72,-1073.49, 28)
Config.CookPrepareCoords	= vector3(139.75,-1067.22, 28)

Config.CashTakeOrder		= vector3(136.01,-1065.33,28.2)
Config.CashTakeOrder1		= vector3(135.13,-1067.48,28.2)
Config.CashTakeOrder2		= vector3(134.07,-1069.71,28.2)
Config.CashTakeOrder3		= vector3(133.24,-1071.73,28.2)
Config.CashTakeOrder4		= vector3(132.43,-1073.60,28.2)
Config.CashTakeOrder5		= vector3(133.83,-1074.63,28.2)
Config.CashCollectMeal		= vector3(137.33,-1066.97,28)

Config.DeliveryCarSpawn			= {x = 109.72,y = -1052.64,z = 28.90,h = 247.32}
Config.DeliveryCarSpawnMarker	= vector3(120.97, -1059.97, 28)
Config.DeliveryCarDespawn		= vector3(107.93, -1079.89, 28)

Config.minDistance = 1
--	List of Cashier Deliver Points
Config.cashDeliveryPoints = {
	[1] = {x = 132.69, y = -1058.13, z = 28},
	[2] = {x = 131.21, y = -1062.50, z = 28},
	[3] = {x = 129.98, y = -1065.05, z = 28},
	[4] = {x = 127.58, y = -1063.98, z = 28},
	[5] = {x = 128.85, y = -1061.20, z = 28},
	[6] = {x = 130.53, y = -1057.27, z = 28},
	[7] = {x = 127.94, y = -1056.16, z = 28},
	[8] = {x = 126.35, y = -1060.05, z = 28},
	[9] = {x = 125.20, y = -1062.77, z = 28},
	[10] = {x = 122.63, y = -1061.68, z = 28},
	[11] = {x = 123.58, y = -1059.34, z = 28},
	[12] = {x = 125.42, y = -1055.17, z = 28},
	[13] = {x = 123.04, y = -1054.25, z = 28},
	[14] = {x = 119.25, y = -1065.97, z = 28},
	[15] = {x = 117.97, y = -1067.99, z = 28},
	[16] = {x = 122.63, y = -1061.68, z = 28},
	[17] = {x = 117.21, y = -1070.14, z = 28},
	[18] = {x = 119.97, y = -1071.37, z = 28},
	[19] = {x = 120.94, y = -1069.38, z = 28}
}

--Downtown Delivery Locations
Config.driveDeliveryPoints = {
	[1] = {x = 288.96, y = -1792.33, z = 27.5},
	[2] = {x = 299.79, y = -1784.21, z = 27.5},
	[3] = {x = 304.44, y = -1775.45, z = 27.5},
	[4] = {x = 332.85, y = -1741.05, z = 27.5},
	[5] = {x = 405.67, y = -1751.25, z = 28},
	[6] = {x = 431.22, y = -1725.63, z = 28},
	[7] = {x = 443.23, y = -1707.17, z = 28.1},
	[8] = {x = 412.74, y = -1855.71, z = 27.5},
	[9] = {x = 385.26, y = -1881.84, z = 26},
	[10] = {x = 368.55, y = -1896.02, z = 25},
	[11] = {x = 324.29, y = -1937.81, z = 25},
	[12] = {x = 295.98, y = -1972.00, z = 23},
	[13] = {x = 273.37, y = -1997.46, z = 20.2},
	[14] = {x = 256.55, y = -2023.67, z = 19.20},
	[15] = {x = 286.91, y = -2034.94, z = 19.77},
	[16] = {x = 312.62, y = -2053.89, z = 21},
	[17] = {x = 332.56, y = -2070.61, z = 21},
	[18] = {x = 302.63, y = -2080.1, z = 17.7},
	[19] = {x = 321.55, y = -2099.77, z = 18.2}
}