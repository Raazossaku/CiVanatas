local tTraitLeaders = {}
for row in DB.Query("SELECT a.TraitType TraitType, b.ID iLeader FROM Leader_Traits a, Leaders b WHERE a.LeaderType = b.Type") do
    if not tTraitLeaders[row.TraitType] then
        tTraitLeaders[row.TraitType] = {}
    end
    
    tTraitLeaders[row.TraitType][row.iLeader] = true
end

--print("Shield of the Worker script start");
local pShieldOfTheWorker = GameInfoTypes["PROMOTION_SHIELD_OF_THE_WORKER"];
local pShieldOfTheWorker1 = GameInfoTypes["PROMOTION_SHIELD_OF_THE_WORKER_1"];
--print("Shield of the Worker 1 definitions loaded");
local pShieldOfTheWorker2 = GameInfoTypes["PROMOTION_SHIELD_OF_THE_WORKER_2"];
local pShieldOfTheWorker3 = GameInfoTypes["PROMOTION_SHIELD_OF_THE_WORKER_3"];
local pShieldOfTheWorker4 = GameInfoTypes["PROMOTION_SHIELD_OF_THE_WORKER_4"];
local pShieldOfTheWorker5 = GameInfoTypes["PROMOTION_SHIELD_OF_THE_WORKER_5"];
local pShieldOfTheWorker6 = GameInfoTypes["PROMOTION_SHIELD_OF_THE_WORKER_6"];
local pShieldOfTheWorker7 = GameInfoTypes["PROMOTION_SHIELD_OF_THE_WORKER_7"];
--print("Shield of the Worker definitions all loaded");
local pUnitClassInfantry = GameInfo.UnitClasses["UNITCLASS_INFANTRY"];
--print("Infantry unit class loaded");
function Promotion_ShieldOfTheWorker(iPlayer)
    local pPlayer = Players[iPlayer];
	if not pPlayer:IsAlive() then return; end
	--print("Checking " .. pPlayer:GetNameKey() .. "for Infantry");
    if pPlayer:GetUnitClassCount(pUnitClassInfantry) == 0 then return; end
	--print(pPlayer:GetNameKey() .. "has infantry");
    for pUnit in pPlayer:Units() do
        if pUnit:IsHasPromotion(pShieldOfTheWorker) then
            local pPlot = pUnit:GetPlot();
            local iX = pPlot:GetX();
            local iY = pPlot:GetY();
            local iAdjacentCivilian = 0;
			--print(pPlayer:GetNameKey() .. "has a unit with Shield of the Worker at " .. iX .. ", " .. iY);
            for iUnit = 0, pPlot:GetNumUnits() - 1, 1 do
                local pOtherUnit = pPlot:GetUnit(iUnit);
                if pOtherUnit:GetBaseCombatStrength() == 0 and pOtherUnit:GetBaseRangedCombatStrength() == 0 and pOtherUnit:GetOwner() == iPlayer then
                    iAdjacentCivilian = iAdjacentCivilian + 1;
					--print("Found a civilian on " .. iX .. ", " .. iY);
                    break;
                end
            end
            for iDirection = 0, DirectionTypes.NUM_DIRECTION_TYPES - 1, 1 do
                local pAdjacent = Map.PlotDirection(iX, iY, iDirection);
                if pAdjacent then
                    for iUnit = 0, pAdjacent:GetNumUnits() - 1, 1 do
                        local pOtherUnit = pAdjacent:GetUnit(iUnit);
                        if pOtherUnit:GetBaseCombatStrength() == 0 and pOtherUnit:GetBaseRangedCombatStrength() == 0 and pOtherUnit:GetOwner() == iPlayer then
                            iAdjacentCivilian = iAdjacentCivilian + 1;
							--print("Found a civilian " .. iDirection .. " direction away from " .. iX .. ", " .. iY);
                            break;
                        end
                    end
                end
            end
			--print("Found " .. iAdjacentCivilian .. " tiles with civilians next to unit.");
            pUnit:SetHasPromotion(pShieldOfTheWorker1, iAdjacentCivilian == 1);
            pUnit:SetHasPromotion(pShieldOfTheWorker2, iAdjacentCivilian == 2);
            pUnit:SetHasPromotion(pShieldOfTheWorker3, iAdjacentCivilian == 3);
            pUnit:SetHasPromotion(pShieldOfTheWorker4, iAdjacentCivilian == 4);
            pUnit:SetHasPromotion(pShieldOfTheWorker5, iAdjacentCivilian == 5);
            pUnit:SetHasPromotion(pShieldOfTheWorker6, iAdjacentCivilian == 6);
            pUnit:SetHasPromotion(pShieldOfTheWorker7, iAdjacentCivilian >= 7);
        end
    end
end
GameEvents.PlayerDoTurn.Add(Promotion_ShieldOfTheWorker);

local pCooperative = GameInfoTypes["BUILDING_COOPERATIVE"];
function Building_Cooperative(iPlayer)
    local pPlayer = Players[iPlayer];
	if not pPlayer:IsAlive() then return; end
	for pCity in pPlayer:Cities() do
		if pCity:IsHasBuilding(pCooperative) then
			local iYield = math.floor(pCity:GetYieldRate(YieldTypes.YIELD_PRODUCTION)/10 + 0.5);
			local iRandom = Game.Rand(4);
			local iX = pCity:GetX()
			local iY = pCity:GetY()
			print(iYield)
			if iRandom == 1 then
				pPlayer:ChangeGold(iYield);
				local sTitle = "Gold Cooperative in " .. pCity:GetName();
				local sText = "The Cooperative in " .. pCity:GetName() .. " has produced " .. iYield .. " [ICON_GOLD] Gold";
				--print(sText)
				pPlayer:AddNotification(NotificationTypes.NOTIFICATION_GENERIC, sText, sTitle, iX, iY);
			elseif iRandom == 2 then
				pPlayer:ChangeFaith(iYield);
				local sTitle = "Faith Cooperative in " .. pCity:GetName();
				local sText = "The Cooperative in " .. pCity:GetName() .. " has produced " .. iYield .. " [ICON_PEACE] Faith";
				--print(sText)
				pPlayer:AddNotification(NotificationTypes.NOTIFICATION_GENERIC, sText, sTitle, iX, iY);
			elseif iRandom == 3 then
				pCity:ChangeFood(iYield);
				local sTitle = "Food Cooperative in " .. pCity:GetName();
				local sText = "The Cooperative in " .. pCity:GetName() .. " has produced " .. iYield .. " [ICON_FOOD] Food";
				--print(sText)
				pPlayer:AddNotification(NotificationTypes.NOTIFICATION_GENERIC, sText, sTitle, iX, iY);
			else
				pCity:ChangeJONSCultureStored(iYield);
				pPlayer:ChangeJONSCulture(iYield);
				local sTitle = "Culture Cooperative in " .. pCity:GetName();
				local sText = "The Cooperative in " .. pCity:GetName() .. " has produced " .. iYield .. " [ICON_CULTURE] Culture";
				--print(sText)
				pPlayer:AddNotification(NotificationTypes.NOTIFICATION_GENERIC, sText, sTitle, iX, iY);
			end
		end
	end
end
GameEvents.PlayerDoTurn.Add(Building_Cooperative);

local sPanTiridinianCulture = "TRAIT_PAN_TIRIDINIAN_CULTURE"
function Ability_PanTiridinianCulture(iOldPlayer, bIsCapital, iX, iY, iNewPlayer, iPop, bConquest)
	if bConquest then
		local pNewOwner = Players[iNewPlayer]
		local iNewLeader = pNewOwner:GetLeaderType()
		local sTitle = "Conquest Happened!";
		local sText = "Conquest Happened!";
		pNewOwner:AddNotification(NotificationTypes.NOTIFICATION_GENERIC, sText, sTitle, iX, iY);
		if tTraitLeaders[sPanTiridinianCulture] and tTraitLeaders[sPanTiridinianCulture][iNewLeader] then
			pNewOwner:ChangeJONSCulture(pNewOwner:GetTotalJONSCulturePerTurn() * iPop);
			local sTitle = "Pan Tiridinian Culture Strikes!";
			local sText = "Pan Tiridinian Culture Strikes for " .. pNewOwner:GetTotalJONSCulturePerTurn() * iPop .. "Culture!";
			pNewOwner:AddNotification(NotificationTypes.NOTIFICATION_GENERIC, sText, sTitle, iX, iY);
			if bIsCapital then
				local pNewTeam = pNewOwner:GetTeam();
				local pOldOwner = Players[iOldPlayer];
				local pOldTeam = pOldOwner:GetTeam();
				local pLastTech = pOldTeam:GetTeamTechs():GetLastTechAcquired();
				if not pNewTeam:GetTeamTechs():HasTech(pLastTech) then
					pNewTeam:SetHasTech(pLastTech, true, pOldOwner);
					local sTitle = "Pan Tiridinian Culture Strikes!";
					local sText = "Gained " .. pLastTech;
					pNewOwner:AddNotification(NotificationTypes.NOTIFICATION_GENERIC, sText, sTitle, iX, iY);
				elseif pOldTeam:GetTeamTechs():GetTechCount() > pNewTeam:GetTechCount() then
					pNewTeam:SetNumFreeTechs(pNewTeam:GetNumFreeTechs() + 1);
					local sTitle = "Pan Tiridinian Culture Strikes!";
					local sText = "Gained Free Tech";
					pNewOwner:AddNotification(NotificationTypes.NOTIFICATION_GENERIC, sText, sTitle, iX, iY);
				end
			end
		end
    end
end
GameEvents.CityCaptureComplete.Add(Ability_PanTiridinianCulture);

include("PlotIterators.lua")

local iBasePromotion = GameInfoTypes["PROMOTION_SPIDER_KEEPER"]
local iDerivedPromotion = GameInfoTypes["PROMOTION_SPIDER_RELEASED"]
local iPoisonPromotion = GameInfoTypes["PROMOTION_SPIDER_BITE"]

function Ability_DinueenSpiderThrower(playerID, unitID, newDamage, oldDamage)
	if newDamage > oldDamage then
		local pPlayer = Players[playerID]
		local pUnit = pPlayer:GetUnitByID(unitID)
		if pUnit then
			if pUnit:IsHasPromotion(iDerivedPromotion) then
				pUnit:SetHasPromotion(iDerivedPromotion, false)
				pUnit:SetHasPromotion(iBasePromotion, true)
			end
			for pPlot in PlotAreaSpiralIterator(pUnit:GetPlot(), 1, SECTOR_NORTH, DIRECTION_CLOCKWISE, DIRECTION_OUTWARDS, CENTRE_INCLUDE) do
				if pPlot then
					for i = 0, pPlot:GetNumUnits()-1 do 
						local pFoundUnit = pPlot:GetUnit(i)
						if pFoundUnit and pFoundUnit ~= pUnit then
							if pFoundUnit:IsHasPromotion(iDerivedPromotion) then
								pUnit:SetHasPromotion(iPoisonPromotion, true)
								pFoundUnit:SetHasPromotion(iDerivedPromotion, false)
								pFoundUnit:SetHasPromotion(iBasePromotion, true)
								return
							end
						end
					end
				end
			end
		end
	end
end

Events.SerialEventUnitSetDamage(Ability_DinueenSpiderThrower)


--[[
-- MAKE THEM UNIQUE!
-- These Promotions can have whatever effects applied that you desire, but keep in mind that your equivalent to PROMOTION_DERIVED will only be applied to a Unit during the combat process and shouldn't linger on a Unit after that point unless you intentionally design your effect to be single-use like the original Mystic Blade.
INSERT INTO UnitPromotions
		(Type,							Description,					Help,								Sound,					CannotBeChosen, LostWithUpgrade,	HasPostCombatPromotions,    PortraitIndex,   		IconAtlas,			PediaType,          PediaEntry)
VALUES    ('PROMOTION_BASE',			'TXT_KEY_PROMOTION_BASE',		'TXT_KEY_PROMOTION_BASE_HELP',		'AS2D_IF_LEVELUP',		1,				1,					1,							59,						'ABILITY_ATLAS',    'PEDIA_ATTRIBUTES', 'TXT_KEY_PROMOTION_BASE'),
		  ('PROMOTION_DERIVED',			'TXT_KEY_PROMOTION_DERIVED',	'TXT_KEY_PROMOTION_DERIVED_HELP',	'AS2D_IF_LEVELUP',		1,				1,					NULL,						59,						'ABILITY_ATLAS',    'PEDIA_ATTRIBUTES', 'TXT_KEY_PROMOTION_DERIVED');



-- Combat Listener Example Lua
-- Despite being an Event, Events.SerialEventUnitSetDamage does in fact get called while in Strategic View and out of human vision. Unfortunately, this is about the only good thing the event has going for it.
include("PlotIterators.lua")

local iBasePromotion = GameInfoTypes["PROMOTION_BASE"]
local iDerivedPromotion = GameInfoTypes["PROMOTION_DERIVED"]

-- Performs an effect whenever a Unit marked by a specified PostCombatRandomPromotion takes damage, meaning they took said damage from participating in a combat scenario, and either survives or was attacked by the human player.
function C15_UnitSetDamage_Basic(playerID, unitID, newDamage, oldDamage)
	if newDamage > oldDamage then
	local pUnit = pPlayer:GetUnitByID(unitID)
	if pUnit then
		if pUnit:IsHasPromotion(iDerivedPromotion) then
			-- Unit has survived combat! Do effect! Who's the other participant in the combat? We don't know! This method just identifies that our PostCombat-marked unit has taken damage from a combat, and can't tell us much specific information about the combat.
			
			pUnit:SetHasPromotion(iDerivedPromotion, false)
			pUnit:SetHasPromotion(iBasePromotion, true)
		end
	end
end

Events.SerialEventUnitSetDamage.Add(C15_UnitSetDamage_Basic)

-- Performs an effect whenever a Unit marked by a specified PostCombatRandomPromotion is found to have attacked the unit which has taken damage, so long as the unit which is taking damage survives said damage OR the player who is attacking is the human player.
function C15_UnitSetDamage_Full(playerID, unitID, newDamage, oldDamage)
	if newDamage > oldDamage then
		local pPlayer = Players[playerID]
		local pUnit = pPlayer:GetUnitByID(unitID)
		if pUnit then -- The Defender gets called first, then the Attacker. If the Attacker is the human player (tested with Player 0), then the Defender should always exist even if it is killed (and Unit.IsDead will tell you whether it is alive or not); conversely, if the Attacker is not a human player then the Defender will NOT exist if it is killed. This means that your effects may behave differently for the AI, and essentially calls the usefulness of this utility into question. Yay.
			if pUnit:IsHasPromotion(iDerivedPromotion) then
				-- Reset the PostCombatRandomPromotion to its Parent Promotion so that cases where the Defender didn't exist (either cus they died or are actually a city) don't break the PostCombatRandomPromotion cycle. 
				-- Resetting the promotions while the PostCombatRandomPromotion Unit is the Defender will cause them to not be detected by the Attacker's iteration, thus limiting your effect to only trigger if the PostCombatRandomPromotion Unit is attacking unless you code an effect here too.
				-- The Resetting of these Promotions here will also avoid duplicated effects if you were to code one here to apply when the PostCombatRandomPromotion Unit is the Defender and another in the iteration for when the PostCombatRandomPromotion Unit is the Attacker.
				-- If you want to try and get data about the other unit in the combat, you will need to save your effect for the iteration section; thus, an effect which occurs while defending can only take data from the PostCombatRandomPromotion Unit.
				
				pUnit:SetHasPromotion(iDerivedPromotion, false)
				pUnit:SetHasPromotion(iBasePromotion, true)
			end
			
			-- Iterate whatever range you would expect to have to iterate in order to find your attacking unit, bearing in mind that Ranged Units can have an indeterminate number of +Range promotions.
			for pPlot in PlotAreaSpiralIterator(pUnit:GetPlot(), 1, SECTOR_NORTH, DIRECTION_CLOCKWISE, DIRECTION_OUTWARDS, CENTRE_INCLUDE) do
				if pPlot then
					for i = 0, pPlot:GetNumUnits()-1 do 
						local pFoundUnit = pPlot:GetUnit(i)
						if pFoundUnit and pFoundUnit ~= pUnit then
							if pFoundUnit:IsHasPromotion(iDerivedPromotion) then
								-- The attacking unit has been found! Perform effect!
								
								-- Reset Attacker's marker
								pFoundUnit:SetHasPromotion(iDerivedPromotion, false)
								pFoundUnit:SetHasPromotion(iBasePromotion, true)
								
								-- Attacker found, no more iteration needed
								return
							end
						end
					end
				end
			end
		end
	end
end

Events.SerialEventUnitSetDamage.Add(C15_UnitSetDamage_Full)

-- You only want to use one of these functions, obviously.
-- So to conclude, the Basic Combat Listener works great when you want to do something to a Unit after it partakes in a melee combat, but doesn't allow you to get information about the other combat participant and won't always work when the Unit in question dies as a result of the combat. The Full Combat Listener affords a way to identify the two Units involved in a combat at any range, but this method of identification becomes significantly more processing-intensive the more range you have to account for and has issues with detecting combats involving cities and combat scenarios where only one unit survives.
-- If you are looking for a more reliable combat event, you will have to investigate the GameEvents added by DLL mods such as Various Mod Components and the Community Patch.
]]--