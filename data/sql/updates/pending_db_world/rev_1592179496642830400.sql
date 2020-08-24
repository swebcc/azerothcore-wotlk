INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1592179496642830400');

DROP TABLE IF EXISTS `world_config`;
CREATE TABLE `world_config` (
  `Index` TINYINT UNSIGNED NOT NULL DEFAULT 0,
  `ConfigName` VARCHAR(255) NOT NULL,
  `Type` varchar(255) NOT NULL COMMENT='Support types - bool, int, float, string',
  `Value` VARCHAR(255) NOT NULL,
  `Comment` TEXT NULL DEFAULT NULL,
   PRIMARY KEY (`Index`, `ConfigName`)
) ENGINE=MyISAM DEFAULT CHARSET=UTF8MB3 COMMENT='Holds configs for the World Server';

/*
INDEX:
0 - UNDEFINED INDEX
1 - PERFORMANCE SETTINGS
2 - SERVER LOGGING
3 - SERVER SETTINGS
4 - WARDEN SETTINGS
5 - PLAYER SETTINGS
6 - CREATURE SETTINGS
7 - CHAT SETTINGS
8 - GM SETTINGS
9 - VISIBILITY AND DISTANCES
10 - SERVER RATES
11 - AUTO BROADCAST
12 - BATTLEGROUND SETTINGS
13 - BATTLEFIELD SETTINGS
14 - ARENA SETTINGS
15 - CHARACTER DELETE SETTINGS
16 - ITEM DELETE SETTINGS
17 - CUSTOM SERVER SETTINGS (TODO: Can probably fit in other categories or be re-done)
18 - PACKET SPOOF PROTECTION SETTINGS
19 - DEBUG
*/