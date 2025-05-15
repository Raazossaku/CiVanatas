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
		'CIVILIZATION_TELERI',							'TXT_KEY_CIV_TELERI_DESC',		
--		CivilopediaTag,									Playable,		AIPlayable,
		'TXT_KEY_CIV5_TELERI',							1,				1, 
--	 	ShortDescription,								Adjective,
		'TXT_KEY_CIV_TELERI_SHORT_DESC',				'TXT_KEY_CIV_TELERI_ADJECTIVE',
--		DefaultPlayerColor,								ArtDefineTag,
		'PLAYERCOLOR_TELERI',							'ART_DEF_CIVILIZATION_IROQUOIS',
--		ArtStyleType,									ArtStyleSuffix,	ArtStylePrefix,
		'ARTSTYLE_SOUTH_AMERICA',						'_AMER','AMERICAN',
--		PortraitIndex,	IconAtlas,						AlphaIconAtlas,
		0,				'TELERI_COLOR_ATLAS',			'TELERI_ALPHA_ATLAS',
--		MapImage,										DawnOfManQuote, 
		'MapIroquoi512.dds',							'TXT_KEY_CIV5_DAWN_TELERI_TEXT',
--		DawnOfManImage,									DawnOfManAudio,
		'DOM_Hiawatha.dds',								'AS2D_DOM_SPEECH_IROQUOIS'
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
	('TXT_KEY_CIV_TELERI_DESC',					'Teleri Empire'),
	('TXT_KEY_CIV5_TELERI_TITLE',				'The Teleri'),
	('TXT_KEY_CIV_TELERI_ADJECTIVE',			'Teleri'),
	('TXT_KEY_CIV5_DAWN_TELERI_TEXT', 
	'Greetings great scholar Talah Hialeah. ' || 
	'Through your treatises you have unified the pogititch, ' ||
	'and brought the Teleri people together in this glorious republic. ' ||
	'Rejuvenating the country, you paved the way for its mastery over the great Laigoks&#232;de, ' ||
	'and its continued prosperity. The people thank you for the strong institutions you helped mold, ' ||
	'as they enjoy the wealth of trade and good governance. ' ||
	'Student of history they have learned from you as you have learned from the past. ' ||
	'The seafaring Teleri have taken to the sea and explored, exchanged, and traded with many people. ' ||
	'Sitting at the mouth of the great river, they became a door to the world for their inland Lianuskatch brethren.' ||
	'[NEWLINE][NEWLINE]' ||
	'Wise scholar, will your mind and quill again lead the Teleri? ' ||
	'Partners, friends, and allies await, what will you do? ' ||
	'Will you help them stand up to enemies and tyrants? ' ||
	'Will you bring them out to sea once more? ' ||
	'Will you bring them the wealth of the Laigoks&#232;de? ' ||
	'Can you build a civilization that will stand the test of time?'
	);


INSERT INTO Language_en_US
	(Tag,										Text,		Plurality)
VALUES
	('TXT_KEY_CIV_TELERI_SHORT_DESC',			'The Teleri',	2);

INSERT INTO Civilization_FreeBuildingClasses (CivilizationType, BuildingClassType)
VALUES ('CIVILIZATION_TELERI', 'BUILDINGCLASS_PALACE');
INSERT INTO Civilization_FreeTechs (CivilizationType, TechType)
VALUES ('CIVILIZATION_TELERI', 'TECH_AGRICULTURE');
INSERT INTO Civilization_FreeUnits (CivilizationType, UnitClassType, UnitAIType, Count)
VALUES ('CIVILIZATION_TELERI', 'UNITCLASS_SETTLER', 'UNITAI_SETTLE', 1);

INSERT INTO Civilization_Leaders (CivilizationType, LeaderheadType)
VALUES ('CIVILIZATION_TELERI', 'LEADER_HIALEAH');
INSERT INTO Civilization_Religions (CivilizationType, ReligionType)
VALUES ('CIVILIZATION_TELERI', 'RELIGION_CHRISTIANITY');

INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType, BuildingType)
VALUES ('CIVILIZATION_TELERI', 'BUILDINGCLASS_HARBOR', 'BUILDING_MERCHANT_PORT');
INSERT INTO Civilization_UnitClassOverrides (CivilizationType, UnitClassType, UnitType)
VALUES ('CIVILIZATION_TELERI', 'UNITCLASS_PRIVATEER', 'UNIT_ARUBEAN_CORSAIRE');

/*
INSERT INTO Civilization_Start_Along_Ocean (CivilizationType, StartAlongOcean)
VALUES ('CIVILIZATION_', 0/1);

INSERT INTO Civilization_Start_Along_River (CivilizationType, StartAlongRiver)
VALUES ('CIVILIZATION_', 0/1);

INSERT INTO Civilization_Start_Region_Priority (CivilizationType, RegionType)
(VALUES 'CIVILIZATION_', 'REGION_');

INSERT INTO Civilization_Start_Region_Avoid (CivilizationType, RegionType)
(VALUES 'CIVILIZATION_', 'REGION_');
*/

INSERT INTO Civilization_Start_Along_Ocean (CivilizationType, StartAlongOcean)
VALUES ('CIVILIZATION_TELERI', 1);

INSERT INTO PlayerColors (Type, PrimaryColor, SecondaryColor, TextColor)
VALUES ('PLAYERCOLOR_TELERI', 'COLOR_PLAYER_TELERI_ICON', 'COLOR_PLAYER_TELERI_BACKGROUND', 'COLOR_PLAYER_WHITE_TEXT');

INSERT INTO Colors
		(Type,										Red,   Green, Blue,  Alpha)
VALUES	('COLOR_PLAYER_TELERI_BACKGROUND',			0.776, 0.047, 0.188, 1.0),
		('COLOR_PLAYER_TELERI_ICON',				1.000, 1.000, 1.000, 1.0);

CREATE TABLE ToAdd_CityNames (
    CivilizationType TEXT,
    CityTag TEXT,
    CityText TEXT
);

INSERT INTO ToAdd_CityNames (CivilizationType, CityTag, CityText)
VALUES
	('CIVILIZATION_TELERI', 'TXT_KEY_CITY_NAME_TELERI_0', 'Lgajèlsein'),
	('CIVILIZATION_TELERI', 'TXT_KEY_CITY_NAME_TELERI_1', 'Kwèinjo'),
	('CIVILIZATION_TELERI', 'TXT_KEY_CITY_NAME_TELERI_2', 'Dzengudwi'),
	('CIVILIZATION_TELERI', 'TXT_KEY_CITY_NAME_TELERI_3', 'Jernido'),
	('CIVILIZATION_TELERI', 'TXT_KEY_CITY_NAME_TELERI_4', 'Liedigo'),
	('CIVILIZATION_TELERI', 'TXT_KEY_CITY_NAME_TELERI_5', 'Kwasudwi'),
	('CIVILIZATION_TELERI', 'TXT_KEY_CITY_NAME_TELERI_6', 'Rgènudwi'),
	('CIVILIZATION_TELERI', 'TXT_KEY_CITY_NAME_TELERI_7', 'Èrwe'),
	('CIVILIZATION_TELERI', 'TXT_KEY_CITY_NAME_TELERI_8', 'Kjounèdzi'),
	('CIVILIZATION_TELERI', 'TXT_KEY_CITY_NAME_TELERI_9', 'Ljedudwi'),
	('CIVILIZATION_TELERI', 'TXT_KEY_CITY_NAME_TELERI_10', 'Altèjed'),
	('CIVILIZATION_TELERI', 'TXT_KEY_CITY_NAME_TELERI_11', 'Odikrèko'),
	('CIVILIZATION_TELERI', 'TXT_KEY_CITY_NAME_TELERI_12', 'Odislwe'),
	('CIVILIZATION_TELERI', 'TXT_KEY_CITY_NAME_TELERI_13', 'Dzuiwe'),
	('CIVILIZATION_TELERI', 'TXT_KEY_CITY_NAME_TELERI_14', 'Hnèjudwi'),
	('CIVILIZATION_TELERI', 'TXT_KEY_CITY_NAME_TELERI_15', 'Odiwiga'),
	('CIVILIZATION_TELERI', 'TXT_KEY_CITY_NAME_TELERI_16', 'Lidkwa'),
	('CIVILIZATION_TELERI', 'TXT_KEY_CITY_NAME_TELERI_17', 'Keninej'),
	('CIVILIZATION_TELERI', 'TXT_KEY_CITY_NAME_TELERI_18', 'Rgenlido'),
	('CIVILIZATION_TELERI', 'TXT_KEY_CITY_NAME_TELERI_19', 'Altujdwi'),
	('CIVILIZATION_TELERI', 'TXT_KEY_CITY_NAME_TELERI_20', 'Ailèingwat');

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
	('CIVILIZATION_TELERI', 'TXT_KEY_SPY_NAME_TELERI_0', 'Uwe Ègweg', 1),
	('CIVILIZATION_TELERI', 'TXT_KEY_SPY_NAME_TELERI_1', 'Liskwa Lèjet', 1),
	('CIVILIZATION_TELERI', 'TXT_KEY_SPY_NAME_TELERI_2', 'Nisga Ugnitch', 1),
	('CIVILIZATION_TELERI', 'TXT_KEY_SPY_NAME_TELERI_3', 'Ksèdi Dzienga', 0),
	('CIVILIZATION_TELERI', 'TXT_KEY_SPY_NAME_TELERI_4', 'Edèle Igasluhe', 0),
	('CIVILIZATION_TELERI', 'TXT_KEY_SPY_NAME_TELERI_5', 'Krègwa Tènat', 1),
	('CIVILIZATION_TELERI', 'TXT_KEY_SPY_NAME_TELERI_6', 'Kètch Kniun', 0),
	('CIVILIZATION_TELERI', 'TXT_KEY_SPY_NAME_TELERI_7', 'Glinek Ugatch', 1),
	('CIVILIZATION_TELERI', 'TXT_KEY_SPY_NAME_TELERI_8', 'Uslu Udwi', 0),
	('CIVILIZATION_TELERI', 'TXT_KEY_SPY_NAME_TELERI_9', 'Eujet Osègo', 0);

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
	('TXT_KEY_CIV5_TELERI_FACTOID_HEADING', 'Teleri Factoid'),
	('TXT_KEY_CIV5_TELERI_FACTOID_TEXT', ''),
	('TXT_KEY_CIV5_TELERI_HEADING_1', ''),
	('TXT_KEY_CIV5_TELERI_TEXT_1', ''),
	('TXT_KEY_CIV5_TELERI_HEADING_2', ''),
	('TXT_KEY_CIV5_TELERI_TEXT_2', ''),
	('TXT_KEY_CIV5_TELERI_HEADING_3', ''),
	('TXT_KEY_CIV5_TELERI_TEXT_3', ''),
	('TXT_KEY_CIV5_TELERI_HEADING_4', ''),
	('TXT_KEY_CIV5_TELERI_TEXT_4', ''),
	('TXT_KEY_CIV5_TELERI_HEADING_5', ''),
	('TXT_KEY_CIV5_TELERI_TEXT_5', ''),
	('TXT_KEY_CIV5_TELERI_HEADING_6', ''),
	('TXT_KEY_CIV5_TELERI_TEXT_6', ''),
	('TXT_KEY_CIV5_TELERI_HEADING_7', ''),
	('TXT_KEY_CIV5_TELERI_TEXT_7', ''),
	('TXT_KEY_CIV5_TELERI_HEADING_8', ''),
	('TXT_KEY_CIV5_TELERI_TEXT_8', ''),
	('TXT_KEY_CIV5_TELERI_HEADING_9', ''),
	('TXT_KEY_CIV5_TELERI_TEXT_9', ''),
	('TXT_KEY_CIV5_TELERI_HEADING_10', ''),
	('TXT_KEY_CIV5_TELERI_TEXT_10', ''),
	('TXT_KEY_CIV5_TELERI_HEADING_11', ''),
	('TXT_KEY_CIV5_TELERI_TEXT_11', '');