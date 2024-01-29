INSERT INTO Civilizations
		(Type, Description, CivilopediaTag, Playable, AIPlayable, ShortDescription, Adjective,
		DefaultPlayerColor, ArtDefineTag, ArtStyleType, ArtStyleSuffix, ArtStylePrefix,
		PortraitIndex, IconAtlas, AlphaIconAtlas,
		MapImage, DawnOfManQuote, DawnOfManImage, DawnOfManAudio, SoundtrackTag
		)
VALUES (
--		Type,							Description,					
		'CIVILIZATION_LATHADU',			'TXT_KEY_CIV_LATHADU_DESC',		
--		CivilopediaTag,					Playable,		AIPlayable,
		'TXT_KEY_CIV5_LATHADU',			1,				1, 
--	`	ShortDescription,								Adjective,
		'TXT_KEY_CIV_LATHADU_SHORT_DESC',				'TXT_KEY_CIV_LATHADU_ADJECTIVE',
--		DefaultPlayerColor,				ArtDefineTag,
		'PLAYERCOLOR_LATHADU',			'ART_DEF_CIVILIZATION_ENGLAND',
--		ArtStyleType,					ArtStyleSuffix,	ArtStylePrefix,
		'ARTSTYLE_EUROPEAN',			'_EURO',		'EUROPEAN',
--		PortraitIndex,	IconAtlas,						AlphaIconAtlas,
		6,				'CIV_COLOR_ATLAS',				'CIV_ALPHA_ATLAS',
--		MapImage,						DawnOfManQuote, 
		'MapNetherlands512.dds',		'TXT_KEY_CIV5_DAWN_LATHADU_TEXT',
--		DawnOfManImage,					DawnOfManAudio
		'DOM_Napoleon.dds',				'AS2D_DOM_SPEECH_FRANCE',
--		SoundtrackTag
		'Alutra'
		);

/*
When start with vowel, make separate table:
INSERT INTO Language_en_US (Tag, Text, Gender)
	('TXT_KEY_CIV_ _DESC', ' Empire', 'neuter:an'),
	('TXT_KEY_CIV_ _SHORT_DESC', '', 'neuter:an'),
	('TXT_KEY_CIV_ _ADJ', '', 'neuter:an');
*/

INSERT INTO Language_en_US (Tag, Text)
VALUES
	('TXT_KEY_CIV_LATHADU_DESC', 'Lathadun Empire'),
	('TXT_KEY_CIV5_LATHADU_TITLE', 'Lathadu'),
	('TXT_KEY_CIV_LATHADU_SHORT_DESC', 'Lathadun'),
	('TXT_KEY_CIV_LATHADU_ADJECTIVE', 'Lathadun'),
	('TXT_KEY_CIV5_DAWN_LATHADU_TEXT', 
	'In your name, the workers rise, o Carmac Kneale, leader of this glorious revolution! ' ||
	'Born into poverty, you mantled the cause of the working man as your own, ' ||
	'taking your place as the leader of the Peasant and Laborer''s Progressive Party ' ||
	'in a pledge to forge a nation controlled by the working man. ' ||
	'A storm brewed in the heart of Alutra, and the days of the Bans were done. ' ||
	'With the Lathadun Revolution of 1871, the dread Ban Teague was overthrown, ' ||
	'and the Lathadun Federation was finally undone. With you at the helm of a new, modern republic, ' ||
	'Lathadu would begin its journey into modernity.' ||
	'[NEWLINE][NEWLINE]' ||
	'Dauntless revolutionary, once again the fires of change must be ignited by your hand. ' ||
	'The will of the working man lies broken beneath the crowns of oligarchs and big-moneyists, ' ||
	'and it demands your determination to inspire strength. ' ||
	'Can you bring forth the will of your allies against their slavery? ' ||
	'Can you build a civilization that will stand the test of time?'
	);


INSERT INTO Civilization_FreeBuildingClasses (CivilizationType, BuildingClassType)
VALUES ('CIVILIZATION_LATHADU', 'BUILDINGCLASS_PALACE');
INSERT INTO Civilization_FreeTechs (CivilizationType, TechType)
VALUES ('CIVILIZATION_LATHADU', 'TECH_AGRICULTURE');
INSERT INTO Civilization_FreeUnits (CivilizationType, UnitClassType, UnitAIType, Count)
VALUES ('CIVILIZATION_LATHADU', 'UNITCLASS_SETTLER', 'UNITAI_SETTLE', 1);

INSERT INTO Civilization_Leaders (CivilizationType, LeaderheadType)
VALUES ('CIVILIZATION_LATHADU', 'LEADER_CARMAC');
INSERT INTO Civilization_Religions (CivilizationType, ReligionType)
VALUES ('CIVILIZATION_LATHADU', 'RELIGION_CHRISTIANITY');

INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType, BuildingType)
VALUES ('CIVILIZATION_LATHADU', 'BUILDINGCLASS_FACTORY', 'BUILDING_COOPERATIVE');
INSERT INTO Civilization_UnitClassOverrides (CivilizationType, UnitClassType, UnitType)
VALUES ('CIVILIZATION_LATHADU', 'UNITCLASS_INFANTRY', 'UNIT_LATHADUN_PARTISAN');

/*
INSERT INTO Civilization_Start_Along_Ocean (CivilizationType, 

INSERT INTO Civilization_Start_Region_Priority (CivilizationType, RegionType)
(VALUES 'CIVILIZATION_', 'REGION_');
*/

INSERT INTO Civilization_Start_Region_Priority (CivilizationType, RegionType)
VALUES ('CIVILIZATION_LATHADU', 'REGION_MARSH');

INSERT INTO PlayerColors (Type, PrimaryColor, SecondaryColor, TextColor)
VALUES ('PLAYERCOLOR_LATHADU', 'COLOR_PLAYER_LATHADU_ICON', 'COLOR_PLAYER_LATHADU_BACKGROUND', 'COLOR_PLAYER_WHITE_TEXT');

INSERT INTO Colors
		(Type,										Red,   Green, Blue,  Alpha)
VALUES	('COLOR_PLAYER_LATHADU_ICON',				0.161, 0.404, 0.278, 1.0),
		('COLOR_PLAYER_LATHADU_BACKGROUND',			0.965, 0.565, 0.110, 1.0);

CREATE TABLE ToAdd_CityNames (
    CivilizationType TEXT,
    CityTag TEXT,
    CityText TEXT
);

INSERT INTO ToAdd_CityNames (CivilizationType, CityTag, CityText)
VALUES
	('CIVILIZATION_LATHADU', 'TXT_KEY_CITY_NAME_LATHADU_0', 'Calleebane'),
	('CIVILIZATION_LATHADU', 'TXT_KEY_CITY_NAME_LATHADU_1', 'Ushteyghoo'),
	('CIVILIZATION_LATHADU', 'TXT_KEY_CITY_NAME_LATHADU_2', 'Logh Craine'),
	('CIVILIZATION_LATHADU', 'TXT_KEY_CITY_NAME_LATHADU_3', 'Sailleyr'),
	('CIVILIZATION_LATHADU', 'TXT_KEY_CITY_NAME_LATHADU_4', 'Beallagh'),
	('CIVILIZATION_LATHADU', 'TXT_KEY_CITY_NAME_LATHADU_5', 'Shillishgoo'),
	('CIVILIZATION_LATHADU', 'TXT_KEY_CITY_NAME_LATHADU_6', 'Lheimmeyushtey'),
	('CIVILIZATION_LATHADU', 'TXT_KEY_CITY_NAME_LATHADU_7', 'Doghyscailt'),
	('CIVILIZATION_LATHADU', 'TXT_KEY_CITY_NAME_LATHADU_8', 'Mairgiau'),
	('CIVILIZATION_LATHADU', 'TXT_KEY_CITY_NAME_LATHADU_9', 'Foaidmoaney'),
	('CIVILIZATION_LATHADU', 'TXT_KEY_CITY_NAME_LATHADU_10', 'Cailjagh'),
	('CIVILIZATION_LATHADU', 'TXT_KEY_CITY_NAME_LATHADU_11', 'Soailley'),
	('CIVILIZATION_LATHADU', 'TXT_KEY_CITY_NAME_LATHADU_12', 'Kishtey'),
	('CIVILIZATION_LATHADU', 'TXT_KEY_CITY_NAME_LATHADU_13', 'Ansmaghtee'),
	('CIVILIZATION_LATHADU', 'TXT_KEY_CITY_NAME_LATHADU_14', 'Loch Bowen'),
	('CIVILIZATION_LATHADU', 'TXT_KEY_CITY_NAME_LATHADU_15', 'Skianyuiy'),
	('CIVILIZATION_LATHADU', 'TXT_KEY_CITY_NAME_LATHADU_16', 'Drundin Foain'),
	('CIVILIZATION_LATHADU', 'TXT_KEY_CITY_NAME_LATHADU_17', 'Ooylshugrey'),
	('CIVILIZATION_LATHADU', 'TXT_KEY_CITY_NAME_LATHADU_18', 'Brooillagh'),
	('CIVILIZATION_LATHADU', 'TXT_KEY_CITY_NAME_LATHADU_19', 'Gheinnaghey'),
	('CIVILIZATION_LATHADU', 'TXT_KEY_CITY_NAME_LATHADU_20', 'Ymmyrchagh'),
	('CIVILIZATION_LATHADU', 'TXT_KEY_CITY_NAME_LATHADU_21', 'Cullee'),
	('CIVILIZATION_LATHADU', 'TXT_KEY_CITY_NAME_LATHADU_22', 'Sheeargysyjiass');

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
	('CIVILIZATION_LATHADU', 'TXT_KEY_SPY_NAME_LATHADU_0', 'Cashin', 0),
	('CIVILIZATION_LATHADU', 'TXT_KEY_SPY_NAME_LATHADU_1', 'Stiurt', 0),
	('CIVILIZATION_LATHADU', 'TXT_KEY_SPY_NAME_LATHADU_2', 'Arnon', 0),
	('CIVILIZATION_LATHADU', 'TXT_KEY_SPY_NAME_LATHADU_3', 'Lilee', 1),
	('CIVILIZATION_LATHADU', 'TXT_KEY_SPY_NAME_LATHADU_4', 'Fergus', 0),
	('CIVILIZATION_LATHADU', 'TXT_KEY_SPY_NAME_LATHADU_5', 'Essa', 1),
	('CIVILIZATION_LATHADU', 'TXT_KEY_SPY_NAME_LATHADU_6', 'Donal', 0),
	('CIVILIZATION_LATHADU', 'TXT_KEY_SPY_NAME_LATHADU_7', 'Ewan', 0),
	('CIVILIZATION_LATHADU', 'TXT_KEY_SPY_NAME_LATHADU_8', 'Finlo', 0),
	('CIVILIZATION_LATHADU', 'TXT_KEY_SPY_NAME_LATHADU_9', 'Thormot', 0);

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
	('TXT_KEY_CIV5_LATHADU_FACTOID_HEADING', 'Lathadun Factoid'),
	('TXT_KEY_CIV5_LATHADU_FACTOID_TEXT', ''),
	('TXT_KEY_CIV5_LATHADU_HEADING_1', ''),
	('TXT_KEY_CIV5_LATHADU_TEXT_1', ''),
	('TXT_KEY_CIV5_LATHADU_HEADING_2', ''),
	('TXT_KEY_CIV5_LATHADU_TEXT_2', ''),
	('TXT_KEY_CIV5_LATHADU_HEADING_3', ''),
	('TXT_KEY_CIV5_LATHADU_TEXT_3', ''),
	('TXT_KEY_CIV5_LATHADU_HEADING_4', ''),
	('TXT_KEY_CIV5_LATHADU_TEXT_4', ''),
	('TXT_KEY_CIV5_LATHADU_HEADING_5', ''),
	('TXT_KEY_CIV5_LATHADU_TEXT_5', ''),
	('TXT_KEY_CIV5_LATHADU_HEADING_6', ''),
	('TXT_KEY_CIV5_LATHADU_TEXT_6', ''),
	('TXT_KEY_CIV5_LATHADU_HEADING_7', ''),
	('TXT_KEY_CIV5_LATHADU_TEXT_7', ''),
	('TXT_KEY_CIV5_LATHADU_HEADING_8', ''),
	('TXT_KEY_CIV5_LATHADU_TEXT_8', ''),
	('TXT_KEY_CIV5_LATHADU_HEADING_9', ''),
	('TXT_KEY_CIV5_LATHADU_TEXT_9', ''),
	('TXT_KEY_CIV5_LATHADU_HEADING_10', ''),
	('TXT_KEY_CIV5_LATHADU_TEXT_10', ''),
	('TXT_KEY_CIV5_LATHADU_HEADING_11', ''),
	('TXT_KEY_CIV5_LATHADU_TEXT_11', '');