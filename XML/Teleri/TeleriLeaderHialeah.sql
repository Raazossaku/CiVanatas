-- Insert SQL Rules Here 


INSERT INTO Leaders 
		(Type, 											Description, 			
		Civilopedia, 									CivilopediaTag, 					
		ArtDefineTag,			VictoryCompetitiveness, WonderCompetitiveness, 	MinorCivCompetitiveness, 	
		Boldness, 				DiploBalance, 			WarmongerHate, 			DenounceWillingness, 	
		DoFWillingness,			Loyalty,				Neediness, 				Forgiveness, 		
		Chattiness,				Meanness, 				PortraitIndex, 			IconAtlas)

VALUES
--		Type, 											Description
		('LEADER_HIALEAH',								'TXT_KEY_LEADER_HIALEAH',
--		Civilopedia, 									CivilopediaTag,
		'TXT_KEY_LEADER_HIALEAH_PEDIA', 				'TXT_KEY_CIVILOPEDIA_LEADERS_HIALEAH',
--		ArtDefineTag,			VictoryCompetitiveness, WonderCompetitiveness, 	MinorCivCompetitiveness,
		'Hiawatha_Scene.xml',	5,						6, 						5,
--		Boldness, 				DiploBalance, 			WarmongerHate, 			DenounceWillingness,
		5, 						8, 						6, 						6,
--		DoFWillingness,			Loyalty,				Neediness, 				Forgiveness,		 						
		6, 						7,						7, 						6,			 				
--		Chattiness,				Meanness, 				IconAtlas, 				PortraitIndex
		3, 						3, 						12,						'LEADER_ATLAS');

INSERT INTO Leader_MajorCivApproachBiases 
		(LeaderType, 		MajorCivApproachType, 				Bias)
VALUES	('LEADER_HIALEAH', 	'MAJOR_CIV_APPROACH_WAR', 			5),
		('LEADER_HIALEAH', 	'MAJOR_CIV_APPROACH_HOSTILE', 		4),
		('LEADER_HIALEAH', 	'MAJOR_CIV_APPROACH_DECEPTIVE', 	3),
		('LEADER_HIALEAH', 	'MAJOR_CIV_APPROACH_GUARDED', 		6),
		('LEADER_HIALEAH', 	'MAJOR_CIV_APPROACH_AFRAID', 		3),
		('LEADER_HIALEAH', 	'MAJOR_CIV_APPROACH_FRIENDLY', 		6),
		('LEADER_HIALEAH', 	'MAJOR_CIV_APPROACH_NEUTRAL', 		4)
;

INSERT INTO Leader_MinorCivApproachBiases 
		(LeaderType, 		MinorCivApproachType, 				Bias)
VALUES	('LEADER_HIALEAH', 	'MINOR_CIV_APPROACH_IGNORE', 		2),
		('LEADER_HIALEAH', 	'MINOR_CIV_APPROACH_FRIENDLY', 		3),
		('LEADER_HIALEAH', 	'MINOR_CIV_APPROACH_PROTECTIVE', 	4),
		('LEADER_HIALEAH', 	'MINOR_CIV_APPROACH_CONQUEST', 		1),
		('LEADER_HIALEAH', 	'MINOR_CIV_APPROACH_BULLY', 		2)
;

INSERT INTO Leader_Flavors 
		(LeaderType, 		FlavorType, 						Flavor)
VALUES	('LEADER_HIALEAH', 	'FLAVOR_OFFENSE', 					7),
		('LEADER_HIALEAH', 	'FLAVOR_DEFENSE', 					5),
		('LEADER_HIALEAH', 	'FLAVOR_CITY_DEFENSE', 				5),
		('LEADER_HIALEAH', 	'FLAVOR_MILITARY_TRAINING', 		5),
		('LEADER_HIALEAH', 	'FLAVOR_RECON', 					5),
		('LEADER_HIALEAH', 	'FLAVOR_RANGED', 					5),
		('LEADER_HIALEAH', 	'FLAVOR_MOBILE', 					7),
		('LEADER_HIALEAH', 	'FLAVOR_NAVAL', 					5),
		('LEADER_HIALEAH', 	'FLAVOR_NAVAL_RECON', 				5),
		('LEADER_HIALEAH', 	'FLAVOR_NAVAL_GROWTH', 				3),
		('LEADER_HIALEAH', 	'FLAVOR_NAVAL_TILE_IMPROVEMENT', 	4),
		('LEADER_HIALEAH', 	'FLAVOR_AIR', 						5),
		('LEADER_HIALEAH', 	'FLAVOR_EXPANSION', 				4),
		('LEADER_HIALEAH', 	'FLAVOR_GROWTH', 					7),
		('LEADER_HIALEAH', 	'FLAVOR_TILE_IMPROVEMENT', 			6),
		('LEADER_HIALEAH', 	'FLAVOR_INFRASTRUCTURE', 			4),
		('LEADER_HIALEAH', 	'FLAVOR_PRODUCTION', 				4),
		('LEADER_HIALEAH', 	'FLAVOR_GOLD', 						5),
		('LEADER_HIALEAH', 	'FLAVOR_SCIENCE', 					3),
		('LEADER_HIALEAH', 	'FLAVOR_CULTURE', 					9),
		('LEADER_HIALEAH', 	'FLAVOR_HAPPINESS', 				7),
		('LEADER_HIALEAH', 	'FLAVOR_GREAT_PEOPLE', 				9),
		('LEADER_HIALEAH', 	'FLAVOR_WONDER', 					9),
		('LEADER_HIALEAH', 	'FLAVOR_RELIGION', 					6),
		('LEADER_HIALEAH', 	'FLAVOR_DIPLOMACY', 				4),
		('LEADER_HIALEAH', 	'FLAVOR_SPACESHIP', 				2),
		('LEADER_HIALEAH', 	'FLAVOR_WATER_CONNECTION', 			5),
		('LEADER_HIALEAH', 	'FLAVOR_NUKE', 						2),
		('LEADER_HIALEAH', 	'FLAVOR_USE_NUKE', 					2),
		('LEADER_HIALEAH', 	'FLAVOR_ESPIONAGE', 				8),
		('LEADER_HIALEAH', 	'FLAVOR_ANTIAIR',	 				5),
		('LEADER_HIALEAH', 	'FLAVOR_AIR_CARRIER', 				5),
		('LEADER_HIALEAH', 	'FLAVOR_I_TRADE_DESTINATION', 		5),
		('LEADER_HIALEAH', 	'FLAVOR_I_TRADE_ORIGIN', 			5),
		('LEADER_HIALEAH', 	'FLAVOR_I_SEA_TRADE_ROUTE', 		5),
		('LEADER_HIALEAH', 	'FLAVOR_I_LAND_TRADE_ROUTE', 		5),
		('LEADER_HIALEAH', 	'FLAVOR_ARCHAEOLOGY', 				9),
		('LEADER_HIALEAH', 	'FLAVOR_AIRLIFT', 					5)
;

INSERT INTO Leader_Traits 
		(LeaderType, 			TraitType)
VALUES	('LEADER_HIALEAH', 		'TRAIT_WEALTH_OF_THE_LAIGOKSEDE');

INSERT INTO Language_en_US (Tag, Text)
VALUES
	('TXT_KEY_LEADER_HIALEAH',							'Hialeah'),
	('TXT_KEY_LEADER_HIALEAH_PEDIA',					''),
	('TXT_KEY_CIVILOPEDIA_LEADERS_HIALEAH_LIVED',		'1414-1490s'),
	('TXT_KEY_CIVILOPEDIA_LEADERS_HIALEAH_NAME',		'Talah Hialeah'),
	('TXT_KEY_CIVILOPEDIA_LEADERS_HIALEAH_SUBTITLE',	'Leader of the Teleri'),
	('TXT_KEY_CIVILOPEDIA_LEADERS_HIALEAH_HEADING_1',	'History'),
	('TXT_KEY_CIVILOPEDIA_LEADERS_HIALEAH_TEXT_1',		''),
	('TXT_KEY_CIVILOPEDIA_LEADERS_HIALEAH_HEADING_2',	'Verdict of History'),
	('TXT_KEY_CIVILOPEDIA_LEADERS_HIALEAH_TEXT_2',		''),
	('TXT_KEY_CIVILOPEDIA_LEADERS_HIALEAH_TITLES_1',	'Head Historian of the Teleri Republic')
;

INSERT INTO Audio_2DSounds
		(ScriptID,									SoundID,
		SoundType,			MinVolume,	MaxVolume,	IsMusic)
VALUES
		('AS2D_LEADER_MUSIC_HIALEAH_PEACE',			'SND_LEADER_MUSIC_HIAWATHA_PEACE',
		'GAME_MUSIC',		55,			55,			1),
		('AS2D_LEADER_MUSIC_HIALEAH_WAR',			'SND_LEADER_MUSIC_HIAWATHA_WAR',
		'GAME_MUSIC',		55,			55,			1)
;