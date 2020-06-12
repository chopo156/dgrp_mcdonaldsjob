USE `es_extended`;
--
-- jobs
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('McDonalds', 'McDonalds Employee', 0);

--
-- grades
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`) VALUES
(NULL, 'McDonalds', 0, 'McCleaner', 	'Mc Cleaner', 200),
(NULL, 'McDonalds', 1, 'McCashier', 	'Mc Cashier', 250),
(NULL, 'McDonalds', 2, 'McCook', 		'Mc Cook', 250),
(NULL, 'McDonalds', 3, 'McDelivery', 	'Mc Delivery Driver', 250),
(NULL, 'McDonalds', 4, 'McBoss', 		'Mc Boss', 350);

--
-- items
--
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
('mcdonalds_burger', 		'McDonalds Burger', 			 1, 0, 1),
('mcdonalds_drink', 			'McDonalds Drink', 			 1, 0, 1),
('mcdonalds_fries', 			'McDonalds Fries', 			 1, 0, 1),
('mcdonalds_meal', 			'McDonalds Meal', 			 1, 0, 1),
--Ashton324's Items: Yet to be Incorperated
('MCDS_BIG_BREAKFAST', 		'McDonalds Big Breakfast',  1, 0, 1),
('MCDS_HOTCAKES', 			'McDonalds Hotcakes', 		 1, 0, 1),
('MCDS_FRIES', 				'McDonalds Fries', 			 1, 0, 1),
('MCDS_SAUSAGEMCMCUFFIN', 	'Sausage & Egg McMuffin', 	 1, 0, 1), 
('MCDS_EGGMCMUFFIN', 		'Egg McMuffin', 				 1, 0, 1),
('MCDS_CHEESEBURGER', 		'Cheeseburger', 				 1, 0, 1),
('MCDS_BIGTASTY', 			'Big Tasty Meal', 			 1, 0, 1),
('MCDS_MCROYALE', 			'McRoyale Burger', 			 1, 0, 1),
('MCDS_QUARTERPOUNDER', 	'Quarter Pounder',	 		 1, 0, 1), 
('MCDS_BIGMAC', 				'BigMac Meal', 				 1, 0, 1),
('MCDS_DBLCHEESEBURGER', 	'Double Cheeseburger', 		 1, 0, 1),
('MCDS_BEEFBURGER', 			'Beefburger',				 	 1, 0, 1),
('MCDS_BBQANGUS', 			'BBQ Angus Burger', 			 1, 0, 1), 
('MCDS_CHICKENMAC', 			'Chicken Mac Meal', 			 1, 0, 1), 
('MCDS_MCNUGGETS', 			'Chicken Nuggets', 			 1, 0, 1),
('MCDS_WRAP', 					'BBQ Chicken Wrap', 			 1, 0, 1),
('MCDS_FILETOFISH', 			'Filet-O-Fish', 				 1, 0, 1),
('MCDS_SPICYCHICK', 			'Spicy Crunchy Chicken', 	 1, 0, 1),
('MCDS_MCFLURRY', 			'McFlurry', 					 1, 0, 1),
('MCDS_COKE', 					'Coke', 							 1, 0, 1),
('MCDS_ORANGE', 				'Orange Juice', 				 1, 0, 1),
('MCDS_FANTA', 				'Fanta', 						 1, 0, 1),
('MCDS_MILKSHAKE', 			'MilkShake', 					 1, 0, 1),
('MCDS_COFFEE', 				'Coffee', 						 1, 0, 1),
('MCDS_LATTE', 				'Latte', 						 1, 0, 1),
('MCDS_AMERICANO', 			'Americano', 					 1, 0, 1),
('MCDS_MOCHA', 				'Mocha', 						 1, 0, 1),
('MCDS_HOTCHOC', 				'Hot Chocolate',			  	 1, 0, 1),
('MCDS_CHICKENSPECIAL', 	'Grande Chicken Special', 	 1, 0, 1);
