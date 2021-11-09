CREATE TABLE IF NOT EXISTS `Person` (
`id` INT NOT NULL AUTO_INCREMENT,
`login` VARCHAR(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
`first_name` VARCHAR(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
`last_name` VARCHAR(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
`age` INT NOT NULL
 PRIMARY KEY (`id`),
 KEY `fn` (`first_name`),
 KEY `ln` (`last_name`),
 UNIQUE INDEX `login` (`login`)
 );