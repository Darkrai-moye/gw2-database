CREATE TABLE IF NOT EXISTS `items_gw2treasures` (
  `id`                       INT(10) UNSIGNED     NOT NULL,
  `blacklist`                TINYINT(1) UNSIGNED  NOT NULL DEFAULT '0',
  `signature`                VARCHAR(40)          NOT NULL,
  `file_id`                  INT(10) UNSIGNED     NOT NULL DEFAULT '0',
  `rarity`                   ENUM ('Ascended', 'Basic', 'Exotic', 'Fine', 'Junk', 'Legendary', 'Masterwork', 'Rare') NOT NULL DEFAULT 'Basic',
  `weight`                   ENUM ('None', 'Clothing', 'Light', 'Medium', 'Heavy') NOT NULL DEFAULT 'None',
  `type`                     ENUM ('None', 'Armor', 'Back', 'Bag', 'Consumable', 'Container', 'CraftingMaterial', 'Gathering', 'Gizmo', 'MiniPet', 'Tool', 'Trait', 'Trinket', 'Trophy', 'UpgradeComponent', 'Weapon') NOT NULL DEFAULT 'None',
  `subtype`                  TINYTEXT             NOT NULL,
  `unlock_type`              TINYTEXT             NOT NULL,
  `level`                    SMALLINT(2) UNSIGNED NOT NULL DEFAULT '0',
  `value`                    INT(6) UNSIGNED      NOT NULL DEFAULT '0',
  `pvp`                      TINYINT(1) UNSIGNED  NOT NULL DEFAULT '0',
  `attr1`                    TINYTEXT             NOT NULL,
  `attr2`                    TINYTEXT             NOT NULL,
  `attr3`                    TINYTEXT             NOT NULL,
  `attr_name`                TINYTEXT             NOT NULL,
  `unlock_id`                INT(6) UNSIGNED      NOT NULL DEFAULT '0',
  `suffix_item_id`           INT(6) UNSIGNED      NOT NULL DEFAULT '1',
  `secondary_suffix_item_id` INT(6) UNSIGNED      NOT NULL DEFAULT '0',
  `skin_id`                  INT(10) UNSIGNED     NOT NULL DEFAULT '0',
  `name_de`                  VARCHAR(255)         NOT NULL,
  `name_en`                  VARCHAR(255)         NOT NULL,
  `name_es`                  VARCHAR(255)         NOT NULL,
  `name_fr`                  VARCHAR(255)         NOT NULL,
  `name_zh`                  VARCHAR(255)         NOT NULL,
  `data_de`                  TEXT                 NOT NULL,
  `data_en`                  TEXT                 NOT NULL,
  `data_es`                  TEXT                 NOT NULL,
  `data_fr`                  TEXT                 NOT NULL,
  `data_zh`                  TEXT                 NOT NULL,
  `updated`                  TINYINT(1) UNSIGNED  NOT NULL DEFAULT '0',
  `update_time`              TIMESTAMP            NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_added`               TIMESTAMP            NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
)
  ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE = utf8mb4_bin;
