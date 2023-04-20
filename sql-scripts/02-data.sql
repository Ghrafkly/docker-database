-- -----------------------------------------------------
-- Data for table `creditcard`.`users`
-- -----------------------------------------------------
INSERT INTO `creditcard`.`users` (`name`, `email`, `password`) VALUES
('John Doe', 'johndoe@example.com', 'password976'),
('Jane Smith', 'janesmith@example.com', 'qwertyuiop'),
('Bob Johnson', 'bjohnson@example.com', 'abc123'),
('Sarah Lee', 'sarahlee@example.com', 'pass1234'),
('Mike Brown', 'mikebrown@example.com', 'ilovecats');

-- -----------------------------------------------------
-- Data for table `creditcard`.`cards`
-- -----------------------------------------------------
INSERT INTO `creditcard`.`cards` (`name`, `number`, `expiration`, `cvv`, `user_id`) VALUES 
('John Doe', '4111111111111111', '12/25', '123', 1),
('Jane Smith', '5555555555554444', '06/24', '456', 2),
('Bob Johnson', '378282246310005', '09/23', '789', 3),
('Sarah Lee', '6011111111111117', '05/22', '321', 4),
('Mike Brown', '5105105105105100', '02/24', '654', 5);