CREATE TABLE IF NOT EXISTS `gw2_items` (
  `id` MEDIUMINT(6) unsigned NOT NULL,
  `signature` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `file_id` int(10) unsigned NOT NULL DEFAULT '0',
  `rarity` enum('Junk','Basic','Fine','Masterwork','Rare','Exotic','Ascended','Legendary') COLLATE utf8mb4_bin NOT NULL DEFAULT 'Junk',
  `weight` enum('None','Clothing','Light','Medium','Heavy') COLLATE utf8mb4_bin NOT NULL DEFAULT 'None',
  `type` enum('None','Armor','Back','Bag','Consumable','Container','CraftingMaterial','Gathering','Gizmo','MiniPet','Tool','Trait','Trinket','Trophy','UpgradeComponent','Weapon') COLLATE utf8mb4_bin NOT NULL DEFAULT 'None',
  `subtype` tinytext COLLATE utf8mb4_bin NOT NULL,
  `unlock_type` tinytext COLLATE utf8mb4_bin NOT NULL,
  `level` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `value` MEDIUMINT(6) unsigned NOT NULL DEFAULT '0',
  `pvp` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `attr_name` tinytext COLLATE utf8mb4_bin NOT NULL,
  `unlock_id` MEDIUMINT(6) unsigned NOT NULL DEFAULT '0',
  `name_de` tinytext COLLATE utf8mb4_bin NOT NULL,
  `name_en` tinytext COLLATE utf8mb4_bin NOT NULL,
  `name_es` tinytext COLLATE utf8mb4_bin NOT NULL,
  `name_fr` tinytext COLLATE utf8mb4_bin NOT NULL,
  `data_de` text COLLATE utf8mb4_bin NOT NULL,
  `data_en` text COLLATE utf8mb4_bin NOT NULL,
  `data_es` text COLLATE utf8mb4_bin NOT NULL,
  `data_fr` text COLLATE utf8mb4_bin NOT NULL,
  `wikipage_de` int(10) unsigned NOT NULL DEFAULT '0',
  `wikipage_en` int(10) unsigned NOT NULL DEFAULT '0',
  `wikipage_es` int(10) unsigned NOT NULL DEFAULT '0',
  `wikipage_fr` int(10) unsigned NOT NULL DEFAULT '0',
  `wiki_de` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `wiki_en` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `wiki_es` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `wiki_fr` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `wiki_checked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `updated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `date_added` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
