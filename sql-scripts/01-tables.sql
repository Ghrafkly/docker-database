-- -----------------------------------------------------
-- Table `creditcard`.`users`
-- -----------------------------------------------------
SELECT 'Creating table creditcard.users...' AS 'START';

DROP TABLE IF EXISTS `creditcard`.`users` ;
CREATE TABLE IF NOT EXISTS `creditcard`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL UNIQUE,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

SELECT 'Table users created!' AS 'END';

-- -----------------------------------------------------
-- Table `creditcard`.`cards`
-- -----------------------------------------------------
SELECT 'Creating table creditcard.cards...' AS 'START';

DROP TABLE IF EXISTS `creditcard`.`cards` ;
CREATE TABLE IF NOT EXISTS `creditcard`.`cards` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `number` VARCHAR(45) NOT NULL,
  `expiration` VARCHAR(45) NOT NULL,
  `cvv` VARCHAR(45) NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `user_id_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `user_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `creditcard`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

SELECT 'Table cards created!' AS 'END';
