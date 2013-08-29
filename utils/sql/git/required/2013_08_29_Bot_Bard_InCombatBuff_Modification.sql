-- Bard Bot In-Combat Buff song modifications


-- Rule Values update (Default keeps original behavior)
INSERT INTO `rule_values` VALUES (1, 'Bots:BotBardUseInCombatSongsOutOfCombat', 'true', 'Allow bard bot to use in-combat buff songs while out-of-combat');
INSERT INTO `rule_values` VALUES (1, 'Bots:BotBardUseOutOfCombatSongs', 'false', 'Grants bard bot access to additional non-combat songs');


-- Move current Bard Bot songs from SpellType_Buffs to SpellType_InCombatBuffs
UPDATE `npc_spells_entries` SET `type` = 1024 WHERE `npc_spells_id` = 711 and `type` = 8;
