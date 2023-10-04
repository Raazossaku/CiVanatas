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
		('LEADER_CARMAC',								'TXT_KEY_LEADER_CARMAC',
--		Civilopedia, 									CivilopediaTag,
		'TXT_KEY_LEADER_CARMAC_PEDIA', 					'TXT_KEY_CIVILOPEDIA_LEADERS_CARMAC',
--		ArtDefineTag,			VictoryCompetitiveness, WonderCompetitiveness, 	MinorCivCompetitiveness,
		'Napoleon_Scene.xml',	5,						6, 						5,
--		Boldness, 				DiploBalance, 			WarmongerHate, 			DenounceWillingness,
		5, 						8, 						6, 						6,
--		DoFWillingness,			Loyalty,				Neediness, 				Forgiveness,		 						
		6, 						7,						7, 						6,			 				
--		Chattiness,				Meanness, 				IconAtlas, 				PortraitIndex
		3, 						3, 						7,						'LEADER_ATLAS');

INSERT INTO Leader_MajorCivApproachBiases 
		(LeaderType, 		MajorCivApproachType, 				Bias)
VALUES	('LEADER_CARMAC', 	'MAJOR_CIV_APPROACH_WAR', 			5),
		('LEADER_CARMAC', 	'MAJOR_CIV_APPROACH_HOSTILE', 		4),
		('LEADER_CARMAC', 	'MAJOR_CIV_APPROACH_DECEPTIVE', 	3),
		('LEADER_CARMAC', 	'MAJOR_CIV_APPROACH_GUARDED', 		6),
		('LEADER_CARMAC', 	'MAJOR_CIV_APPROACH_AFRAID', 		3),
		('LEADER_CARMAC', 	'MAJOR_CIV_APPROACH_FRIENDLY', 		6),
		('LEADER_CARMAC', 	'MAJOR_CIV_APPROACH_NEUTRAL', 		4)
;

INSERT INTO Leader_MinorCivApproachBiases 
		(LeaderType, 		MinorCivApproachType, 				Bias)
VALUES	('LEADER_CARMAC', 	'MINOR_CIV_APPROACH_IGNORE', 		2),
		('LEADER_CARMAC', 	'MINOR_CIV_APPROACH_FRIENDLY', 		3),
		('LEADER_CARMAC', 	'MINOR_CIV_APPROACH_PROTECTIVE', 	4),
		('LEADER_CARMAC', 	'MINOR_CIV_APPROACH_CONQUEST', 		1),
		('LEADER_CARMAC', 	'MINOR_CIV_APPROACH_BULLY', 		2)
;

INSERT INTO Leader_Flavors 
		(LeaderType, 		FlavorType, 						Flavor)
VALUES	('LEADER_CARMAC', 	'FLAVOR_OFFENSE', 					7),
		('LEADER_CARMAC', 	'FLAVOR_DEFENSE', 					5),
		('LEADER_CARMAC', 	'FLAVOR_CITY_DEFENSE', 				5),
		('LEADER_CARMAC', 	'FLAVOR_MILITARY_TRAINING', 		5),
		('LEADER_CARMAC', 	'FLAVOR_RECON', 					5),
		('LEADER_CARMAC', 	'FLAVOR_RANGED', 					5),
		('LEADER_CARMAC', 	'FLAVOR_MOBILE', 					7),
		('LEADER_CARMAC', 	'FLAVOR_NAVAL', 					5),
		('LEADER_CARMAC', 	'FLAVOR_NAVAL_RECON', 				5),
		('LEADER_CARMAC', 	'FLAVOR_NAVAL_GROWTH', 				3),
		('LEADER_CARMAC', 	'FLAVOR_NAVAL_TILE_IMPROVEMENT', 	4),
		('LEADER_CARMAC', 	'FLAVOR_AIR', 						5),
		('LEADER_CARMAC', 	'FLAVOR_EXPANSION', 				4),
		('LEADER_CARMAC', 	'FLAVOR_GROWTH', 					7),
		('LEADER_CARMAC', 	'FLAVOR_TILE_IMPROVEMENT', 			6),
		('LEADER_CARMAC', 	'FLAVOR_INFRASTRUCTURE', 			4),
		('LEADER_CARMAC', 	'FLAVOR_PRODUCTION', 				4),
		('LEADER_CARMAC', 	'FLAVOR_GOLD', 						5),
		('LEADER_CARMAC', 	'FLAVOR_SCIENCE', 					3),
		('LEADER_CARMAC', 	'FLAVOR_CULTURE', 					9),
		('LEADER_CARMAC', 	'FLAVOR_HAPPINESS', 				7),
		('LEADER_CARMAC', 	'FLAVOR_GREAT_PEOPLE', 				9),
		('LEADER_CARMAC', 	'FLAVOR_WONDER', 					9),
		('LEADER_CARMAC', 	'FLAVOR_RELIGION', 					6),
		('LEADER_CARMAC', 	'FLAVOR_DIPLOMACY', 				4),
		('LEADER_CARMAC', 	'FLAVOR_SPACESHIP', 				2),
		('LEADER_CARMAC', 	'FLAVOR_WATER_CONNECTION', 			5),
		('LEADER_CARMAC', 	'FLAVOR_NUKE', 						2),
		('LEADER_CARMAC', 	'FLAVOR_USE_NUKE', 					2),
		('LEADER_CARMAC', 	'FLAVOR_ESPIONAGE', 				8),
		('LEADER_CARMAC', 	'FLAVOR_ANTIAIR',	 				5),
		('LEADER_CARMAC', 	'FLAVOR_AIR_CARRIER', 				5),
		('LEADER_CARMAC', 	'FLAVOR_I_TRADE_DESTINATION', 		5),
		('LEADER_CARMAC', 	'FLAVOR_I_TRADE_ORIGIN', 			5),
		('LEADER_CARMAC', 	'FLAVOR_I_SEA_TRADE_ROUTE', 		5),
		('LEADER_CARMAC', 	'FLAVOR_I_LAND_TRADE_ROUTE', 		5),
		('LEADER_CARMAC', 	'FLAVOR_ARCHAEOLOGY', 				9),
		('LEADER_CARMAC', 	'FLAVOR_AIRLIFT', 					5)
;

INSERT INTO Leader_Traits 
		(LeaderType, 			TraitType)
VALUES	('LEADER_CARMAC', 		'TRAIT_FIELDS_OF_VIRTUE');

INSERT INTO Language_en_US (Tag, Text)
VALUES
	('TXT_KEY_LEADER_CARMAC',							'Carmac'),
	('TXT_KEY_LEADER_CARMAC_PEDIA',						''),
	('TXT_KEY_CIVILOPEDIA_LEADERS_CARMAC_LIVED',		'1829-1907'),
	('TXT_KEY_CIVILOPEDIA_LEADERS_CARMAC_NAME',			'Carmac Kneale'),
	('TXT_KEY_CIVILOPEDIA_LEADERS_CARMAC_SUBTITLE',		'Leader of Lathadu'),
	('TXT_KEY_CIVILOPEDIA_LEADERS_CARMAC_HEADING_1',	'History'),
	('TXT_KEY_CIVILOPEDIA_LEADERS_CARMAC_TEXT_1',		''),
	('TXT_KEY_CIVILOPEDIA_LEADERS_CARMAC_HEADING_2',	'Verdict of History'),
	('TXT_KEY_CIVILOPEDIA_LEADERS_CARMAC_TEXT_2',		''),
	('TXT_KEY_CIVILOPEDIA_LEADERS_CARMAC_TITLES_1',		'Premier of the Republic of Lathadu')
;

INSERT INTO Audio_2DSounds
		(ScriptID,									SoundID,
		SoundType,			MinVolume,	MaxVolume,	IsMusic)
VALUES
		('AS2D_LEADER_MUSIC_CARMAC_PEACE',			'SND_LEADER_MUSIC_BOUDICCA_PEACE',
		'GAME_MUSIC',		55,			55,			1),
		('AS2D_LEADER_MUSIC_CARMAC_WAR',			'SND_LEADER_MUSIC_BOUDICCA_WAR',
		'GAME_MUSIC',		55,			55,			1)
;