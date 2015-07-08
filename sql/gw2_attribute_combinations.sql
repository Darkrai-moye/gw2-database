CREATE TABLE IF NOT EXISTS `gw2_attribute_combinations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attribute1` enum('BoonDuration','ConditionDamage','ConditionDuration','Ferocity','Healing','Power','Precision','Toughness','Vitality') COLLATE utf8mb4_bin DEFAULT NULL,
  `attribute2` enum('BoonDuration','ConditionDamage','ConditionDuration','Ferocity','Healing','Power','Precision','Toughness','Vitality') COLLATE utf8mb4_bin DEFAULT NULL,
  `attribute3` enum('BoonDuration','ConditionDamage','ConditionDuration','Ferocity','Healing','Power','Precision','Toughness','Vitality') COLLATE utf8mb4_bin DEFAULT NULL,
  `prefix_de` tinytext COLLATE utf8mb4_bin NOT NULL,
  `suffix_de` tinytext COLLATE utf8mb4_bin NOT NULL,
  `prefix_en` tinytext COLLATE utf8mb4_bin NOT NULL,
  `suffix_en` tinytext COLLATE utf8mb4_bin NOT NULL,
  `prefix_es` tinytext COLLATE utf8mb4_bin NOT NULL,
  `suffix_es` tinytext COLLATE utf8mb4_bin NOT NULL,
  `prefix_fr` tinytext COLLATE utf8mb4_bin NOT NULL,
  `suffix_fr` tinytext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin AUTO_INCREMENT=53 ;

INSERT INTO `gw2_attribute_combinations` (`id`, `attribute1`, `attribute2`, `attribute3`, `prefix_de`, `suffix_de`, `prefix_en`, `suffix_en`, `prefix_es`, `suffix_es`, `prefix_fr`, `suffix_fr`) VALUES
  (1, 'Power', '', '', '', '', 'Mighty', 'of Might', '', '', '', ''),
  (2, 'Precision', '', '', '', '', 'Precise', 'of Precision', '', '', '', ''),
  (3, 'Toughness', '', '', '', '', 'Resilient/Giver''s (armor)', 'of Resilience', '', '', '', ''),
  (4, 'Vitality', '', '', '', '', 'Vital', 'of Vitality', '', '', '', ''),
  (5, 'ConditionDamage', '', '', '', '', 'Malign', 'of Festering', '', '', '', ''),
  (6, 'ConditionDuration', '', '', '', '', 'Giver''s (weapon)', '', '', '', '', ''),
  (7, 'Healing', '', '', '', '', 'Healing', 'of Compassion', '', '', '', ''),
  (8, 'BoonDuration', '', '', '', '', 'Snowflake (trinkets)', 'of Winter/of Luck', '', '', '', ''),
  (9, 'Power', 'Precision', '', '', '', 'Strong', 'of Strength', '', '', '', ''),
  (10, 'Power', 'Toughness', '', '', '', 'Vagabond''s', '', '', '', '', ''),
  (11, 'Power', 'Vitality', '', '', '', 'Vigorous', 'of Vigor', '', '', '', ''),
  (12, 'Power', 'Ferocity', '', '', '', 'Honed', 'of Honing', '', '', '', ''),
  (13, 'Power', 'ConditionDamage', '', '', '', 'Potent', 'of Potency', '', '', '', ''),
  (14, 'Precision', 'Power', '', '', '', 'Hunter''s', 'of the Hunter', '', '', '', ''),
  (15, 'Precision', 'Ferocity', '', '', '', 'Penetrating', 'of Penetration', '', '', '', ''),
  (16, 'Toughness', 'Precision', '', '', '', 'Stout', 'of the Stout', '', '', '', ''),
  (17, 'Toughness', 'ConditionDamage', '', '', '', 'Enduring', '', '', '', '', ''),
  (18, 'Toughness', 'Healing', '', '', '', 'Giver''s (armor)/Snowflake (trinkets)', 'of Winter', '', '', '', ''),
  (19, 'Vitality', 'Toughness', '', '', '', 'Hearty', 'of Heartiness', '', '', '', ''),
  (20, 'ConditionDamage', 'Precision', '', '', '', 'Ravaging', 'of Ravaging', '', '', '', ''),
  (21, 'ConditionDamage', 'Toughness', '', '', '', 'Deserter''s', '', '', '', '', ''),
  (22, 'ConditionDamage', 'Vitality', '', '', '', 'Lingering', 'of Lingering', '', '', '', ''),
  (23, 'ConditionDuration', 'Vitality', '', '', '', 'Giver''s (weapon)', '', '', '', '', ''),
  (24, 'Healing', 'Power', '', '', '', 'Rejuvenating', 'of Rejuvenation', '', '', '', ''),
  (25, 'Healing', 'Toughness', '', '', '', 'Survivor''s', '', '', '', '', ''),
  (26, 'Healing', 'Vitality', '', '', '', 'Mending', 'of Mending', '', '', '', ''),
  (27, 'Power', 'Precision', 'Ferocity', '', '', 'Berserker''s', 'of the Berserker', '', '', '', ''),
  (28, 'Power', 'Precision', 'Healing', '', '', 'Zealot''s', '', '', '', '', ''),
  (29, 'Power', 'Toughness', 'Vitality', '', '', 'Soldier''s', 'of the Soldier', '', '', '', ''),
  (30, 'Power', 'Toughness', 'Healing', '', '', 'Forsaken', '', '', '', '', ''),
  (31, 'Power', 'Vitality', 'Ferocity', '', '', 'Valkyrie', 'of the Valkyrie', '', '', '', ''),
  (32, 'Precision', 'Power', 'Toughness', '', '', 'Captain''s', 'of the Captain', '', '', '', ''),
  (33, 'Precision', 'Power', 'Ferocity', '', '', 'Assassin''s', 'of the Assassin', '', '', '', ''),
  (34, 'Precision', 'Power', 'ConditionDamage', '', '', 'Rampager''s', 'of the Rampager', '', '', '', ''),
  (35, 'Toughness', 'Power', 'Precision', '', '', 'Knight''s', '', '', '', '', ''),
  (36, 'Toughness', 'Power', 'Ferocity', '', '', 'Cavalier''s', '', '', '', '', ''),
  (37, 'Toughness', 'Vitality', 'Healing', '', '', 'Nomad''s', '', '', '', '', ''),
  (38, 'Toughness', 'BoonDuration', 'Healing', '', '', 'Giver''s (armor)/Snowflake (trinkets)', 'of Winter', '', '', '', ''),
  (39, 'Toughness', 'ConditionDamage', 'Healing', '', '', 'Settler''s', '', '', '', '', ''),
  (40, 'Vitality', 'Power', 'Toughness', '', '', 'Sentinel''s', '', '', '', '', ''),
  (41, 'Vitality', 'Power', 'Healing', '', '', '', 'of the Shaman', '', '', '', ''),
  (42, 'Vitality', 'ConditionDamage', 'Healing', '', '', 'Shaman''s', '', '', '', '', ''),
  (43, 'Vitality', 'ConditionDamage', 'Healing', '', '', 'Shaman''s', '', '', '', '', ''),
  (44, 'ConditionDamage', 'Power', 'Vitality', '', '', 'Carrion', 'of Carrion', '', '', '', ''),
  (45, 'ConditionDamage', 'Precision', 'Toughness', '', '', 'Rabid', 'of the Rabid', '', '', '', ''),
  (46, 'ConditionDamage', 'Toughness', 'Vitality', '', '', 'Dire', '', '', '', '', ''),
  (47, 'ConditionDamage', 'Toughness', 'Healing', '', '', 'Apostate''s', '', '', '', '', ''),
  (48, 'ConditionDuration', 'Precision', 'Vitality', '', '', 'Giver''s (weapon)', '', '', '', '', ''),
  (49, 'Healing', 'Power', 'Toughness', '', '', 'Cleric''s', 'of the Cleric', '', '', '', ''),
  (50, 'Healing', 'Precision', 'Vitality', '', '', 'Magi''s', 'of the Magi', '', '', '', ''),
  (51, 'Healing', 'Toughness', 'ConditionDamage', '', '', 'Apothecary''s', 'of the Apothecary', '', '', '', ''),
  (52, '', '', '', '', '', 'Celestial', 'of the Sky', '', '', '', '');
