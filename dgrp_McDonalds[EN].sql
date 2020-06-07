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
(NULL, 'McDonalds', 0, 'McCleaner', 'Mc Cleaner', 200),
(NULL, 'McDonalds', 1, 'McCashier', 'Mc Cashier', 250),
(NULL, 'McDonalds', 2, 'McCook', 'Mc Cook', 250),
(NULL, 'McDonalds', 3, 'McDelivery', 'Mc Delivery Driver', 250),
(NULL, 'McDonalds', 4, 'McBoss', 'Mc Boss', 350)