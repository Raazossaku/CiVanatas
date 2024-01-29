INSERT INTO Civilizations
		(Type,											Description,
		CivilopediaTag,									Playable,		AIPlayable, 
		ShortDescription,								Adjective,
		DefaultPlayerColor,								ArtDefineTag, 
		ArtStyleType,									ArtStyleSuffix,	ArtStylePrefix,
		PortraitIndex,	IconAtlas,						AlphaIconAtlas,
		MapImage,										DawnOfManQuote, 
		DawnOfManImage,									DawnOfManAudio
		)
VALUES (
--		Type,											Description,					
		'CIVILIZATION_TAR_DINUU',						'TXT_KEY_CIV_TAR_DINUU_DESC',		
--		CivilopediaTag,									Playable,		AIPlayable,
		'TXT_KEY_CIV5_TAR_DINUU',						1,				1, 
--	`	ShortDescription,								Adjective,
		'TXT_KEY_CIV_TAR_DINUU_SHORT_DESC',				'TXT_KEY_CIV_TAR_DINUU_ADJECTIVE',
--		DefaultPlayerColor,								ArtDefineTag,
		'PLAYERCOLOR_TAR_DINUU',						'ART_DEF_CIVILIZATION_AZTEC',
--		ArtStyleType,									ArtStyleSuffix,	ArtStylePrefix,
		'ARTSTYLE_SOUTH_AMERICA',						'_AMER','AMERICAN',
--		PortraitIndex,	IconAtlas,						AlphaIconAtlas,
		0,				'TAR_DINUU_COLOR_ATLAS',		'TAR_DINUU_ALPHA_ATLAS',
--		MapImage,										DawnOfManQuote, 
		'MapAztec512.dds',								'TXT_KEY_CIV5_DAWN_TAR_DINUU_TEXT',
--		DawnOfManImage,									DawnOfManAudio,
		'DOM_Monty.dds',								'AS2D_DOM_SPEECH_AZTEC'
		);

/*
When start with vowel, make separate table:
INSERT INTO Language_en_US (Tag, Text, Gender)
	('TXT_KEY_CIV_ _DESC', ' Empire', 'neuter:an'),
	('TXT_KEY_CIV_ _SHORT_DESC', '', 'neuter:an'),
	('TXT_KEY_CIV_ _ADJ', '', 'neuter:an');
*/

INSERT INTO Language_en_US
	(Tag,										Text)
VALUES
	('TXT_KEY_CIV_TAR_DINUU_DESC',				'Empire of Tar-Dinuu'),
	('TXT_KEY_CIV5_TAR_DINUU_TITLE',			'Tar-Dinuu'),
	('TXT_KEY_CIV_TAR_DINUU_SHORT_DESC',		'Tar-Dinuu'),
	('TXT_KEY_CIV_TAR_DINUU_ADJECTIVE',			'Tar-Dinuuen'),
	('TXT_KEY_CIV5_DAWN_TAR_DINUU_TEXT', 
	'The black star rises for you, eternal Flir of Tar-dinuu, whose will bends even the gods. ' ||
	'In the realm of squabbling clans and rugged peaks, ' ||
	'the ancient soul of your people called for a savior, and you provided. ' ||
	'You brought the gift of bronze to man. You overcame the Eight Deadly Trials ' ||
	'and freed Tar-dinuu from the petty tyrants that had kept it in chains. ' ||
	'You united the heavens behind your blade. Many have stood in Tar-dinuu’s path, ' ||
	'but all have been vanquished. Now, you have become the totality of your people. ' ||
	'Thousands of mouths call with your voice, thousands of warriors march with your purpose, ' ||
	'and thousands of hearts beat at your command.' ||
	'[NEWLINE][NEWLINE]' ||
	'Already, your achievements have earned you immortality in the pantheon of history, ' ||
	'yet still the spirit of Tar-dinuu calls for more. For your soul has a particular destiny, ' ||
	'one that will outlive your own mortal body. The mountains will contain the Dinuuen people no longer. ' ||
	'From that alpine stronghold, your veins shall weave a web across the world. ' ||
	'Will you follow your purpose, and unite the world under one final, eternal empire? ' ||
	'Can you build a civilization that will stand the test of time?'
	);


INSERT INTO Civilization_FreeBuildingClasses (CivilizationType, BuildingClassType)
VALUES ('CIVILIZATION_TAR_DINUU', 'BUILDINGCLASS_PALACE');
INSERT INTO Civilization_FreeTechs (CivilizationType, TechType)
VALUES ('CIVILIZATION_TAR_DINUU', 'TECH_AGRICULTURE');
INSERT INTO Civilization_FreeUnits (CivilizationType, UnitClassType, UnitAIType, Count)
VALUES ('CIVILIZATION_TAR_DINUU', 'UNITCLASS_SETTLER', 'UNITAI_SETTLE', 1);

INSERT INTO Civilization_Leaders (CivilizationType, LeaderheadType)
VALUES ('CIVILIZATION_TAR_DINUU', 'LEADER_FLIR_I');
INSERT INTO Civilization_Religions (CivilizationType, ReligionType)
VALUES ('CIVILIZATION_TAR_DINUU', 'RELIGION_CHRISTIANITY');

INSERT INTO Civilization_UnitClassOverrides (CivilizationType, UnitClassType, UnitType)
VALUES ('CIVILIZATION_TAR_DINUU', 'UNITCLASS_ARCHER', 'UNIT_TAR_DINUUEN_SPIDER_THROWER');

/*
INSERT INTO Civilization_Start_Along_Ocean (CivilizationType, 

INSERT INTO Civilization_Start_Region_Priority (CivilizationType, RegionType)
(VALUES 'CIVILIZATION_', 'REGION_');
*/

INSERT INTO Civilization_Start_Region_Priority (CivilizationType, RegionType)
VALUES ('CIVILIZATION_TAR_DINUU', 'REGION_JUNGLE');

INSERT INTO PlayerColors (Type, PrimaryColor, SecondaryColor, TextColor)
VALUES ('PLAYERCOLOR_TAR_DINUU', 'COLOR_PLAYER_TAR_DINUU_ICON', 'COLOR_PLAYER_TAR_DINUU_BACKGROUND', 'COLOR_PLAYER_WHITE_TEXT');

INSERT INTO Colors
		(Type,										Red,   Green, Blue,  Alpha)
VALUES	('COLOR_PLAYER_TAR_DINUU_BACKGROUND',		0.365, 0.631, 0.212, 1.0),
		('COLOR_PLAYER_TAR_DINUU_ICON',				0.125, 0.325, 0.737, 1.0);

CREATE TABLE ToAdd_CityNames (
    CivilizationType TEXT,
    CityTag TEXT,
    CityText TEXT
);

INSERT INTO ToAdd_CityNames (CivilizationType, CityTag, CityText)
VALUES
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_CITY_NAME_TAR_DINUU_0', 'Flirin'),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_CITY_NAME_TAR_DINUU_1', 'Edrin'),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_CITY_NAME_TAR_DINUU_2', 'Odulanin'),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_CITY_NAME_TAR_DINUU_3', 'Firin'),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_CITY_NAME_TAR_DINUU_4', 'Muralilin'),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_CITY_NAME_TAR_DINUU_5', 'Kimuruu'),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_CITY_NAME_TAR_DINUU_6', 'Gerhama'),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_CITY_NAME_TAR_DINUU_7', 'Kimurin'),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_CITY_NAME_TAR_DINUU_8', 'Sakemad'),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_CITY_NAME_TAR_DINUU_9', 'Jahaunin'),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_CITY_NAME_TAR_DINUU_10', 'Emedrin'),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_CITY_NAME_TAR_DINUU_11', 'Malamin'),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_CITY_NAME_TAR_DINUU_12', 'Eflin'),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_CITY_NAME_TAR_DINUU_13', 'Druunhama'),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_CITY_NAME_TAR_DINUU_14', 'Fuadilin'),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_CITY_NAME_TAR_DINUU_15', 'Hakemad'),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_CITY_NAME_TAR_DINUU_16', 'Ranin'),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_CITY_NAME_TAR_DINUU_17', 'Nusridin'),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_CITY_NAME_TAR_DINUU_18', 'Jurhama'),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_CITY_NAME_TAR_DINUU_19', 'Tandurama'),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_CITY_NAME_TAR_DINUU_20', 'Harikemad'),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_CITY_NAME_TAR_DINUU_21', 'Kendin');

INSERT INTO Civilization_CityNames (CivilizationType, CityName)
SELECT CivilizationType, CityTag FROM ToAdd_CityNames;

INSERT INTO Language_en_US (Tag, Text)
SELECT CityTag, CityText FROM ToAdd_CityNames;

DROP TABLE ToAdd_CityNames;

CREATE TABLE ToAdd_SpyNames (
    CivilizationType TEXT,
    SpyTag TEXT,
    SpyText TEXT,
	Gender INTEGER
);

INSERT INTO ToAdd_SpyNames (CivilizationType, SpyTag, SpyText, Gender)
VALUES
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_SPY_NAME_TAR_DINUU_0', 'Huidar', 0),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_SPY_NAME_TAR_DINUU_1', 'Karir', 0),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_SPY_NAME_TAR_DINUU_2', 'Gridan', 0),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_SPY_NAME_TAR_DINUU_3', 'Mudari', 0),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_SPY_NAME_TAR_DINUU_4', 'Lurar', 1),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_SPY_NAME_TAR_DINUU_5', 'Didui', 1),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_SPY_NAME_TAR_DINUU_6', 'Doluu', 1),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_SPY_NAME_TAR_DINUU_7', 'Umadrar', 0),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_SPY_NAME_TAR_DINUU_8', 'Muradaran', 0),
	('CIVILIZATION_TAR_DINUU', 'TXT_KEY_SPY_NAME_TAR_DINUU_9', 'Tenaril', 1);

INSERT INTO Civilization_SpyNames (CivilizationType, SpyName)
SELECT CivilizationType, SpyTag FROM ToAdd_SpyNames;

INSERT INTO Language_en_US (Tag, Text)
SELECT SpyTag, SpyText FROM ToAdd_SpyNames
WHERE Gender == 0;
INSERT INTO Language_en_US (Tag, Text, Gender)
SELECT SpyTag, SpyText, 'feminine' FROM ToAdd_SpyNames
WHERE Gender == 1;

DROP TABLE ToAdd_SpyNames;

-- Civilopedia stuff

INSERT INTO Language_en_US (Tag, Text)
VALUES
	('TXT_KEY_CIV5_TAR_DINUU_FACTOID_HEADING', 'Tar-Dinuuen Factoid'),
	('TXT_KEY_CIV5_TAR_DINUU_FACTOID_TEXT', ''),
	('TXT_KEY_CIV5_TAR_DINUU_HEADING_1', ''),
	('TXT_KEY_CIV5_TAR_DINUU_TEXT_1', ''),
	('TXT_KEY_CIV5_TAR_DINUU_HEADING_2', ''),
	('TXT_KEY_CIV5_TAR_DINUU_TEXT_2', ''),
	('TXT_KEY_CIV5_TAR_DINUU_HEADING_3', ''),
	('TXT_KEY_CIV5_TAR_DINUU_TEXT_3', ''),
	('TXT_KEY_CIV5_TAR_DINUU_HEADING_4', ''),
	('TXT_KEY_CIV5_TAR_DINUU_TEXT_4', ''),
	('TXT_KEY_CIV5_TAR_DINUU_HEADING_5', ''),
	('TXT_KEY_CIV5_TAR_DINUU_TEXT_5', ''),
	('TXT_KEY_CIV5_TAR_DINUU_HEADING_6', ''),
	('TXT_KEY_CIV5_TAR_DINUU_TEXT_6', ''),
	('TXT_KEY_CIV5_TAR_DINUU_HEADING_7', ''),
	('TXT_KEY_CIV5_TAR_DINUU_TEXT_7', ''),
	('TXT_KEY_CIV5_TAR_DINUU_HEADING_8', ''),
	('TXT_KEY_CIV5_TAR_DINUU_TEXT_8', ''),
	('TXT_KEY_CIV5_TAR_DINUU_HEADING_9', ''),
	('TXT_KEY_CIV5_TAR_DINUU_TEXT_9', ''),
	('TXT_KEY_CIV5_TAR_DINUU_HEADING_10', ''),
	('TXT_KEY_CIV5_TAR_DINUU_TEXT_10', ''),
	('TXT_KEY_CIV5_TAR_DINUU_HEADING_11', ''),
	('TXT_KEY_CIV5_TAR_DINUU_TEXT_11', '');