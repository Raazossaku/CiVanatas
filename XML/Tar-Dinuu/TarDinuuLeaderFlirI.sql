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
		('LEADER_FLIR_I',								'TXT_KEY_LEADER_FLIR_I',
--		Civilopedia, 									CivilopediaTag,
		'TXT_KEY_LEADER_FLIR_I_PEDIA', 					'TXT_KEY_CIVILOPEDIA_LEADERS_FLIR_I',
--		ArtDefineTag,			VictoryCompetitiveness, WonderCompetitiveness, 	MinorCivCompetitiveness,
		'Montezuma_Scene.xml',	5,						6, 						5,
--		Boldness, 				DiploBalance, 			WarmongerHate, 			DenounceWillingness,
		5, 						8, 						6, 						6,
--		DoFWillingness,			Loyalty,				Neediness, 				Forgiveness,		 						
		6, 						7,						7, 						6,			 				
--		Chattiness,				Meanness, 				IconAtlas, 				PortraitIndex
		3, 						3, 						2,						'LEADER_ATLAS');

INSERT INTO Leader_MajorCivApproachBiases 
		(LeaderType, 		MajorCivApproachType, 				Bias)
VALUES	('LEADER_FLIR_I', 	'MAJOR_CIV_APPROACH_WAR', 			5),
		('LEADER_FLIR_I', 	'MAJOR_CIV_APPROACH_HOSTILE', 		4),
		('LEADER_FLIR_I', 	'MAJOR_CIV_APPROACH_DECEPTIVE', 	3),
		('LEADER_FLIR_I', 	'MAJOR_CIV_APPROACH_GUARDED', 		6),
		('LEADER_FLIR_I', 	'MAJOR_CIV_APPROACH_AFRAID', 		3),
		('LEADER_FLIR_I', 	'MAJOR_CIV_APPROACH_FRIENDLY', 		6),
		('LEADER_FLIR_I', 	'MAJOR_CIV_APPROACH_NEUTRAL', 		4)
;

INSERT INTO Leader_MinorCivApproachBiases 
		(LeaderType, 		MinorCivApproachType, 				Bias)
VALUES	('LEADER_FLIR_I', 	'MINOR_CIV_APPROACH_IGNORE', 		2),
		('LEADER_FLIR_I', 	'MINOR_CIV_APPROACH_FRIENDLY', 		3),
		('LEADER_FLIR_I', 	'MINOR_CIV_APPROACH_PROTECTIVE', 	4),
		('LEADER_FLIR_I', 	'MINOR_CIV_APPROACH_CONQUEST', 		1),
		('LEADER_FLIR_I', 	'MINOR_CIV_APPROACH_BULLY', 		2)
;

INSERT INTO Leader_Flavors 
		(LeaderType, 		FlavorType, 						Flavor)
VALUES	('LEADER_FLIR_I', 	'FLAVOR_OFFENSE', 					7),
		('LEADER_FLIR_I', 	'FLAVOR_DEFENSE', 					5),
		('LEADER_FLIR_I', 	'FLAVOR_CITY_DEFENSE', 				5),
		('LEADER_FLIR_I', 	'FLAVOR_MILITARY_TRAINING', 		5),
		('LEADER_FLIR_I', 	'FLAVOR_RECON', 					5),
		('LEADER_FLIR_I', 	'FLAVOR_RANGED', 					5),
		('LEADER_FLIR_I', 	'FLAVOR_MOBILE', 					7),
		('LEADER_FLIR_I', 	'FLAVOR_NAVAL', 					5),
		('LEADER_FLIR_I', 	'FLAVOR_NAVAL_RECON', 				5),
		('LEADER_FLIR_I', 	'FLAVOR_NAVAL_GROWTH', 				3),
		('LEADER_FLIR_I', 	'FLAVOR_NAVAL_TILE_IMPROVEMENT', 	4),
		('LEADER_FLIR_I', 	'FLAVOR_AIR', 						5),
		('LEADER_FLIR_I', 	'FLAVOR_EXPANSION', 				4),
		('LEADER_FLIR_I', 	'FLAVOR_GROWTH', 					7),
		('LEADER_FLIR_I', 	'FLAVOR_TILE_IMPROVEMENT', 			6),
		('LEADER_FLIR_I', 	'FLAVOR_INFRASTRUCTURE', 			4),
		('LEADER_FLIR_I', 	'FLAVOR_PRODUCTION', 				4),
		('LEADER_FLIR_I', 	'FLAVOR_GOLD', 						5),
		('LEADER_FLIR_I', 	'FLAVOR_SCIENCE', 					3),
		('LEADER_FLIR_I', 	'FLAVOR_CULTURE', 					9),
		('LEADER_FLIR_I', 	'FLAVOR_HAPPINESS', 				7),
		('LEADER_FLIR_I', 	'FLAVOR_GREAT_PEOPLE', 				9),
		('LEADER_FLIR_I', 	'FLAVOR_WONDER', 					9),
		('LEADER_FLIR_I', 	'FLAVOR_RELIGION', 					6),
		('LEADER_FLIR_I', 	'FLAVOR_DIPLOMACY', 				4),
		('LEADER_FLIR_I', 	'FLAVOR_SPACESHIP', 				2),
		('LEADER_FLIR_I', 	'FLAVOR_WATER_CONNECTION', 			5),
		('LEADER_FLIR_I', 	'FLAVOR_NUKE', 						2),
		('LEADER_FLIR_I', 	'FLAVOR_USE_NUKE', 					2),
		('LEADER_FLIR_I', 	'FLAVOR_ESPIONAGE', 				8),
		('LEADER_FLIR_I', 	'FLAVOR_ANTIAIR',	 				5),
		('LEADER_FLIR_I', 	'FLAVOR_AIR_CARRIER', 				5),
		('LEADER_FLIR_I', 	'FLAVOR_I_TRADE_DESTINATION', 		5),
		('LEADER_FLIR_I', 	'FLAVOR_I_TRADE_ORIGIN', 			5),
		('LEADER_FLIR_I', 	'FLAVOR_I_SEA_TRADE_ROUTE', 		5),
		('LEADER_FLIR_I', 	'FLAVOR_I_LAND_TRADE_ROUTE', 		5),
		('LEADER_FLIR_I', 	'FLAVOR_ARCHAEOLOGY', 				9),
		('LEADER_FLIR_I', 	'FLAVOR_AIRLIFT', 					5)
;

INSERT INTO Leader_Traits 
		(LeaderType, 			TraitType)
VALUES	('LEADER_FLIR_I', 		'TRAIT_PAN_TIRIDINIAN_CULTURE');

INSERT INTO Language_en_US (Tag, Text)
VALUES
	('TXT_KEY_LEADER_FLIR_I',							'Flir I'),
	('TXT_KEY_LEADER_FLIR_I_PEDIA',						''),
	('TXT_KEY_CIVILOPEDIA_LEADERS_FLIR_I_LIVED',		'c. 1000 BC'),
	('TXT_KEY_CIVILOPEDIA_LEADERS_FLIR_I_NAME',			'Flir'),
	('TXT_KEY_CIVILOPEDIA_LEADERS_FLIR_I_SUBTITLE',		'Leader of Tar-Dinuu'),
	('TXT_KEY_CIVILOPEDIA_LEADERS_FLIR_I_HEADING_1',	'History'),
	('TXT_KEY_CIVILOPEDIA_LEADERS_FLIR_I_TEXT_1',		''),
	('TXT_KEY_CIVILOPEDIA_LEADERS_FLIR_I_HEADING_2',	'Verdict of History'),
	('TXT_KEY_CIVILOPEDIA_LEADERS_FLIR_I_TEXT_2',		''),
	('TXT_KEY_CIVILOPEDIA_LEADERS_FLIR_I_TITLES_1',		'Uniter of the Heavens')
;

INSERT INTO Audio_2DSounds
		(ScriptID,									SoundID,
		SoundType,			MinVolume,	MaxVolume,	IsMusic)
VALUES
		('AS2D_LEADER_MUSIC_FLIR_I_PEACE',			'SND_LEADER_MUSIC_MONTEZUMA_PEACE',
		'GAME_MUSIC',		55,			55,			1),
		('AS2D_LEADER_MUSIC_FLIR_I_WAR',			'SND_LEADER_MUSIC_MONTEZUMA_WAR',
		'GAME_MUSIC',		55,			55,			1)
;