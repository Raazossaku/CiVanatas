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
		'CIVILIZATION_OCHSARDVIA',						'TXT_KEY_CIV_OCHSARDVIA_DESC',		
--		CivilopediaTag,									Playable,		AIPlayable,
		'TXT_KEY_CIV5_OCHSARDVIA',						1,				1, 
--	`	ShortDescription,								Adjective,
		'TXT_KEY_CIV_OCHSARDVIA_SHORT_DESC',			'TXT_KEY_CIV_OCHSARDVIA_ADJECTIVE',
--		DefaultPlayerColor,								ArtDefineTag,
		'PLAYERCOLOR_OCHSARDVIA',						'ART_DEF_CIVILIZATION_POLAND',
--		ArtStyleType,									ArtStyleSuffix,	ArtStylePrefix,
		'ARTSTYLE_EUROPEAN',							'_EURO',		'EUROPEAN',
--		PortraitIndex,	IconAtlas,						AlphaIconAtlas,
		0,				'OCHSARDVIA_COLOR_ATLAS',		'OCHSARDVIA_ALPHA_ATLAS',
--		MapImage,										DawnOfManQuote, 
		'MapPoland512.dds',								'TXT_KEY_CIV5_DAWN_OCHSARDVIA_TEXT',
--		DawnOfManImage,									DawnOfManAudio,
		'DOM_Napoleon.dds',								'AS2D_DOM_SPEECH_FRANCE'
		);

/*
When start with vowel, make separate table:
INSERT INTO Language_en_US (Tag, Text, Gender)
	('TXT_KEY_CIV_ _DESC', ' Empire', 'neuter:an'),
	('TXT_KEY_CIV_ _SHORT_DESC', '', 'neuter:an'),
	('TXT_KEY_CIV_ _ADJ', '', 'neuter:an');
*/

INSERT INTO Language_en_US
	(Tag,									Text,					Gender)
VALUES
	('TXT_KEY_CIV_OCHSARDVIA_DESC',			'Ochsardvian Empire',	'neuter:an'),
	('TXT_KEY_CIV_OCHSARDVIA_SHORT_DESC',	'Ochsardvia',			'neuter:an'),
	('TXT_KEY_CIV_OCHSARDVIA_ADJ',			'Ochsardvian',			'neuter:an');

INSERT INTO Language_en_US
	(Tag,										Text)
VALUES
	('TXT_KEY_CIV5_OCHSARDVIA_TITLE',			'Ochsardvia'),
	('TXT_KEY_CIV5_DAWN_OCHSARDVIA_TEXT', 
	'Hail Downada, Grand Princess of Sznudinszk and sovereign over all Letans, Voians, ' ||
	'and Vestans across the great Bregashi. May your ' ||
	'The hills and valleys echo with the gallops of Medaczi riders and the sweet melodies of the hrawulka. '
	);


INSERT INTO Civilization_FreeBuildingClasses (CivilizationType, BuildingClassType)
VALUES ('CIVILIZATION_OCHSARDVIA', 'BUILDINGCLASS_PALACE');
INSERT INTO Civilization_FreeTechs (CivilizationType, TechType)
VALUES ('CIVILIZATION_OCHSARDVIA', 'TECH_AGRICULTURE');
INSERT INTO Civilization_FreeUnits (CivilizationType, UnitClassType, UnitAIType, Count)
VALUES ('CIVILIZATION_OCHSARDVIA', 'UNITCLASS_SETTLER', 'UNITAI_SETTLE', 1);

INSERT INTO Civilization_Leaders (CivilizationType, LeaderheadType)
VALUES ('CIVILIZATION_OCHSARDVIA', 'LEADER_DOWNADA');
INSERT INTO Civilization_Religions (CivilizationType, ReligionType)
VALUES ('CIVILIZATION_OCHSARDVIA', 'RELIGION_CHRISTIANITY');

INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType, BuildingType)
VALUES ('CIVILIZATION_OCHSARDVIA', 'BUILDINGCLASS_FACTORY', 'BUILDING_COOPERATIVE');
INSERT INTO Civilization_UnitClassOverrides (CivilizationType, UnitClassType, UnitType)
VALUES ('CIVILIZATION_OCHSARDVIA', 'UNITCLASS_INFANTRY', 'UNIT_OCHSARDVIAN_PARTISAN');

/*
INSERT INTO Civilization_Start_Along_Ocean (CivilizationType, 

INSERT INTO Civilization_Start_Region_Priority (CivilizationType, RegionType)
(VALUES 'CIVILIZATION_', 'REGION_');
*/

INSERT INTO Civilization_Start_Region_Priority (CivilizationType, RegionType)
VALUES ('CIVILIZATION_OCHSARDVIA', 'REGION_HILL');

INSERT INTO PlayerColors (Type, PrimaryColor, SecondaryColor, TextColor)
VALUES ('PLAYERCOLOR_OCHSARDVIA', 'COLOR_PLAYER_OCHSARDVIA_ICON', 'COLOR_PLAYER_OCHSARDVIA_BACKGROUND', 'COLOR_PLAYER_WHITE_TEXT');

INSERT INTO Colors
		(Type,										Red,   Green, Blue,  Alpha)
VALUES	('COLOR_PLAYER_OCHSARDVIA_ICON',				0.161, 0.404, 0.278, 1.0),
		('COLOR_PLAYER_OCHSARDVIA_BACKGROUND',			0.965, 0.565, 0.110, 1.0);

CREATE TABLE ToAdd_CityNames (
    CivilizationType TEXT,
    CityTag TEXT,
    CityText TEXT
);

INSERT INTO ToAdd_CityNames (CivilizationType, CityTag, CityText)
VALUES
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_CITY_NAME_OCHSARDVIA_0', 'Calleebane'),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_CITY_NAME_OCHSARDVIA_1', 'Ushteyghoo'),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_CITY_NAME_OCHSARDVIA_2', 'Logh Craine'),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_CITY_NAME_OCHSARDVIA_3', 'Sailleyr'),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_CITY_NAME_OCHSARDVIA_4', 'Beallagh'),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_CITY_NAME_OCHSARDVIA_5', 'Shillishgoo'),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_CITY_NAME_OCHSARDVIA_6', 'Lheimmeyushtey'),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_CITY_NAME_OCHSARDVIA_7', 'Doghyscailt'),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_CITY_NAME_OCHSARDVIA_8', 'Mairgiau'),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_CITY_NAME_OCHSARDVIA_9', 'Foaidmoaney'),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_CITY_NAME_OCHSARDVIA_10', 'Cailjagh'),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_CITY_NAME_OCHSARDVIA_11', 'Soailley'),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_CITY_NAME_OCHSARDVIA_12', 'Kishtey'),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_CITY_NAME_OCHSARDVIA_13', 'Ansmaghtee'),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_CITY_NAME_OCHSARDVIA_14', 'Loch Bowen'),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_CITY_NAME_OCHSARDVIA_15', 'Skianyuiy'),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_CITY_NAME_OCHSARDVIA_16', 'Drundin Foain'),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_CITY_NAME_OCHSARDVIA_17', 'Ooylshugrey'),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_CITY_NAME_OCHSARDVIA_18', 'Brooillagh'),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_CITY_NAME_OCHSARDVIA_19', 'Gheinnaghey'),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_CITY_NAME_OCHSARDVIA_20', 'Ymmyrchagh'),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_CITY_NAME_OCHSARDVIA_21', 'Cullee'),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_CITY_NAME_OCHSARDVIA_22', 'Sheeargysyjiass');

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
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_SPY_NAME_OCHSARDVIA_0', 'Cashin', 0),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_SPY_NAME_OCHSARDVIA_1', 'Stiurt', 0),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_SPY_NAME_OCHSARDVIA_2', 'Arnon', 0),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_SPY_NAME_OCHSARDVIA_3', 'Lilee', 1),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_SPY_NAME_OCHSARDVIA_4', 'Fergus', 0),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_SPY_NAME_OCHSARDVIA_5', 'Essa', 1),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_SPY_NAME_OCHSARDVIA_6', 'Donal', 0),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_SPY_NAME_OCHSARDVIA_7', 'Ewan', 0),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_SPY_NAME_OCHSARDVIA_8', 'Finlo', 0),
	('CIVILIZATION_OCHSARDVIA', 'TXT_KEY_SPY_NAME_OCHSARDVIA_9', 'Thormot', 0);

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
	('TXT_KEY_CIV5_OCHSARDVIA_FACTOID_HEADING', 'Ochsardvian Factoid'),
	('TXT_KEY_CIV5_OCHSARDVIA_FACTOID_TEXT', ''),
	('TXT_KEY_CIV5_OCHSARDVIA_HEADING_1', ''),
	('TXT_KEY_CIV5_OCHSARDVIA_TEXT_1', ''),
	('TXT_KEY_CIV5_OCHSARDVIA_HEADING_2', ''),
	('TXT_KEY_CIV5_OCHSARDVIA_TEXT_2', ''),
	('TXT_KEY_CIV5_OCHSARDVIA_HEADING_3', ''),
	('TXT_KEY_CIV5_OCHSARDVIA_TEXT_3', ''),
	('TXT_KEY_CIV5_OCHSARDVIA_HEADING_4', ''),
	('TXT_KEY_CIV5_OCHSARDVIA_TEXT_4', ''),
	('TXT_KEY_CIV5_OCHSARDVIA_HEADING_5', ''),
	('TXT_KEY_CIV5_OCHSARDVIA_TEXT_5', ''),
	('TXT_KEY_CIV5_OCHSARDVIA_HEADING_6', ''),
	('TXT_KEY_CIV5_OCHSARDVIA_TEXT_6', ''),
	('TXT_KEY_CIV5_OCHSARDVIA_HEADING_7', ''),
	('TXT_KEY_CIV5_OCHSARDVIA_TEXT_7', ''),
	('TXT_KEY_CIV5_OCHSARDVIA_HEADING_8', ''),
	('TXT_KEY_CIV5_OCHSARDVIA_TEXT_8', ''),
	('TXT_KEY_CIV5_OCHSARDVIA_HEADING_9', ''),
	('TXT_KEY_CIV5_OCHSARDVIA_TEXT_9', ''),
	('TXT_KEY_CIV5_OCHSARDVIA_HEADING_10', ''),
	('TXT_KEY_CIV5_OCHSARDVIA_TEXT_10', ''),
	('TXT_KEY_CIV5_OCHSARDVIA_HEADING_11', ''),
	('TXT_KEY_CIV5_OCHSARDVIA_TEXT_11', '');