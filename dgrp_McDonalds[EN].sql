USE `es_extended`;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('McDonalds', 'McDonalds Employee', 0);

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`) VALUES
(NULL, 'McDonalds', 0, 'McCleaner', 'Mc Cleaner', 200),
(NULL, 'McDonalds', 1, 'McCashier', 'Mc Cashier', 250),
(NULL, 'McDonalds', 2, 'McCook', 'Mc Cook', 250),
(NULL, 'McDonalds', 3, 'McDelivery', 'Mc Delivery Driver', 250),
(NULL, 'McDonalds', 4, 'McBoss', 'Mc Boss', 350);

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
('mcdonalds_burger', 'McDonalds Burger', 1, 0, 1),
('mcdonalds_drink', 'McDonalds Drink', 1, 0, 1),
('mcdonalds_fries', 'McDonalds Fries', 1, 0, 1),
('mcdonalds_meal', 'McDonalds Meal', 1, 0, 1);