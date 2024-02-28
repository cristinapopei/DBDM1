
CREATE TABLE IF NOT EXISTS `harry_potter_movies`.`chapters` (
    `Chapter ID` INT(3) PRIMARY KEY,
    `Chapter Name` VARCHAR(32),
    `Movie ID` INT(1),
    `Movie Chapter` INT(2)
) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS `harry_potter_movies`.`characters` (
    `Character ID` INT(3) PRIMARY KEY,
    `Character Name` VARCHAR(22),
    `Species` VARCHAR(23),
    `Gender` VARCHAR(6),
    `House` VARCHAR(28),
    `Patronus` VARCHAR(20),
    `Wand (Wood)` VARCHAR(8),
    `Wand (Core)` VARCHAR(18)
) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS `harry_potter_movies`.`data_dictionary` (
    `Table` VARCHAR(10),
    `Field` VARCHAR(14),
    `Description` VARCHAR(48)
) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS `harry_potter_movies`.`dialogue` (
    `Dialogue ID` INT(4) PRIMARY KEY,
    `Chapter ID` INT(3),
    `Place ID` INT(2),
    `Character ID` INT(3),
    `Dialogue` VARCHAR(1005)
) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS `harry_potter_movies`.`movies` (
    `Movie ID` INT(1) PRIMARY KEY,
    `Movie Title` VARCHAR(43),
    `Release Year` DATE,
    `Runtime` INT(3),
    `Budget` VARCHAR(13),
    `Box Office` VARCHAR(15)
) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS `harry_potter_movies`.`places` (
    `Place ID` INT(2) PRIMARY KEY,
    `Place Name` VARCHAR(39),
    `Place Category` VARCHAR(23)
) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS `harry_potter_movies`.`spells` (
    `Spell ID` INT(2) PRIMARY KEY,
    `Incantation` VARCHAR(21),
    `Spell Name` VARCHAR(32),
    `Effect` VARCHAR(59),
    `Light` VARCHAR(13)
) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
