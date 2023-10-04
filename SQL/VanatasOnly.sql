--Delete unused Civilizations

CREATE TABLE DeleteCivilizations ( id INTEGER PRIMARY KEY AUTOINCREMENT, Civ TEXT );

---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
--Any Civilization in this list will be deleted

INSERT INTO DeleteCivilizations (Civ) VALUES ( 'CIVILIZATION_AZTEC' );
INSERT INTO DeleteCivilizations (Civ) VALUES ( 'CIVILIZATION_FRANCE' );
INSERT INTO DeleteCivilizations (Civ) VALUES ( 'CIVILIZATION_GERMANY' );

---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------

DELETE FROM Civilizations
WHERE Type IN (SELECT Civ FROM DeleteCivilizations);

DELETE FROM Civilization_CityNames
WHERE CivilizationType IN (SELECT Civ FROM DeleteCivilizations);

DELETE FROM Civilization_BuildingClassOverrides
WHERE CivilizationType IN (SELECT Civ FROM DeleteCivilizations);

DELETE FROM Civilization_UnitClassOverrides
WHERE CivilizationType IN (SELECT Civ FROM DeleteCivilizations);

DELETE FROM Civilization_FreeBuildingClasses
WHERE CivilizationType IN (SELECT Civ FROM DeleteCivilizations);

DELETE FROM Civilization_FreeTechs
WHERE CivilizationType IN (SELECT Civ FROM DeleteCivilizations);

DELETE FROM Civilization_FreeUnits
WHERE CivilizationType IN (SELECT Civ FROM DeleteCivilizations);

DELETE FROM Civilization_Leaders
WHERE CivilizationType IN (SELECT Civ FROM DeleteCivilizations);

DELETE FROM Civilization_Start_Along_Ocean
WHERE CivilizationType IN (SELECT Civ FROM DeleteCivilizations);

DELETE FROM Civilization_Start_Along_River
WHERE CivilizationType IN (SELECT Civ FROM DeleteCivilizations);

DELETE FROM Civilization_Start_Region_Priority
WHERE CivilizationType IN (SELECT Civ FROM DeleteCivilizations);

DELETE FROM Civilization_Start_Region_Avoid
WHERE CivilizationType IN (SELECT Civ FROM DeleteCivilizations);

DROP TABLE DeleteCivilizations;