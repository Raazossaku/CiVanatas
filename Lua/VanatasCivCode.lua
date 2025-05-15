include("PlotIterators.lua")

local tTraitLeaders = {}
for row in DB.Query("SELECT a.TraitType TraitType, b.ID iLeader FROM Leader_Traits a, Leaders b WHERE a.LeaderType = b.Type") do
    if not tTraitLeaders[row.TraitType] then
        tTraitLeaders[row.TraitType] = {}
    end
    
    tTraitLeaders[row.TraitType][row.iLeader] = true
end
local iFood = YieldTypes["YIELD_FOOD"]
local iGold = YieldTypes["YIELD_GOLD"]
local iProduction = YieldTypes["YIELD_PRODUCTION"]

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
			local iYield = math.floor(pCity:GetYieldRate(iProduction)/10 + 0.5);
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

local pPanTiridinianCulture = tTraitLeaders["TRAIT_PAN_TIRIDINIAN_CULTURE"]
function Ability_PanTiridinianCulture(iOldPlayer, bIsCapital, iX, iY, iNewPlayer, iPop, bConquest)
	if bConquest then
		local pNewOwner = Players[iNewPlayer]
		local iNewLeader = pNewOwner:GetLeaderType()
		local sTitle = "Conquest Happened!";
		local sText = "Conquest Happened!";
		pNewOwner:AddNotification(NotificationTypes.NOTIFICATION_GENERIC, sText, sTitle, iX, iY);
		if pPanTiridinianCulture and pPanTiridinianCulture[iNewLeader] then
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

local iBasePromotion = GameInfoTypes["PROMOTION_SPIDER_KEEPER"]
local iDerivedPromotion = GameInfoTypes["PROMOTION_SPIDER_RELEASED"]
local iPoisonPromotion = GameInfoTypes["PROMOTION_SPIDER_BITE"]

function Ability_DinueenSpiderThrower(playerID, unitID, newDamage, oldDamage)
	if newDamage > oldDamage then
		local pPlayer = Players[playerID]
		local pUnit = pPlayer:GetUnitByID(unitID)
		if pUnit then
			print(pPlayer:GetCivilizationAdjective() .. " " .. pUnit:GetName() .. " took damage")
			if pUnit:IsHasPromotion(iDerivedPromotion) then
				--print("Defending " .. pPlayer:GetCivilizationAdjective() .. " " .. pUnit:GetName() .. " had ".. iDerivedPromotion)
				pUnit:SetHasPromotion(iDerivedPromotion, false)
				pUnit:SetHasPromotion(iBasePromotion, true)
				--print("Defending " .. pPlayer:GetCivilizationAdjective() .. " " .. pUnit:GetName() .. " now has ".. iBasePromotion)
				return
			end
			for pPlot in PlotAreaSpiralIterator(pUnit:GetPlot(), 4, SECTOR_NORTH, DIRECTION_CLOCKWISE, DIRECTION_OUTWARDS, CENTRE_INCLUDE) do
				if pPlot then
					for i = 0, pPlot:GetNumUnits()-1 do 
						local pFoundUnit = pPlot:GetUnit(i)
						if pFoundUnit and pFoundUnit ~= pUnit then
							--print("Found a " .. Players[pFoundUnit:GetOwner()]:GetCivilizationAdjective() .. " " .. pFoundUnit:GetName())
							if pFoundUnit:IsHasPromotion(iDerivedPromotion) then
								--print("Attacking " .. Players[pFoundUnit:GetOwner()]:GetCivilizationAdjective() .. " " .. pFoundUnit:GetName() .. " had ".. iDerivedPromotion)
								pUnit:SetHasPromotion(iPoisonPromotion, true)
								--print("Defending " .. pPlayer:GetCivilizationAdjective() .. " " .. pUnit:GetName() .. " now has ".. iPoisonPromotion)
								pFoundUnit:SetHasPromotion(iDerivedPromotion, false)
								pFoundUnit:SetHasPromotion(iBasePromotion, true)
								--print("Attacking " .. Players[pFoundUnit:GetOwner()]:GetCivilizationAdjective() .. " " .. pFoundUnit:GetName() .. " now has ".. iBasePromotion)
								return
							end
						end
					end
				end
			end
		end
	end
end

Events.SerialEventUnitSetDamage.Add(Ability_DinueenSpiderThrower)


local pCargoShip = GameInfoTypes["UNIT_CARGO_SHIP"]
local pArubeanCorsaire = GameInfoTypes["UNIT_ARUBEAN_CORSAIRE"]
--credit to TarcisioCM's Wilhelm II mod for Arubean Corsaire's ability
function Ability_ArubeanCorsaire(playerID, unitID)
    local pPlayer = Players[playerID];
	if not pPlayer:IsAlive() then return; end
	local pUnit = pPlayer:GetUnitByID(unitID)
	if pUnit:GetUnitType() == pCargoShip then
		local pPlot = pUnit:GetPlot()
		local pEnemyUnit = pPlot:GetUnit()
		local pEnemyPlayer = Players[pEnemyUnit:GetOwner()]
		if pEnemyUnit:GetUnitType() == pArubeanCorsaire then
			pEnemyUnit:ChangeExperience(15)
			pEnemyPlayer:ChangeGold(pEnemyUnit:GetTradeGold(pPlot))
		end
	end
end
GameEvents.CanSaveUnit.Add(Ability_ArubeanCorsaire)

local pWealthOfTheLaigoksede = tTraitLeaders["TRAIT_WEALTH_OF_THE_LAIGOKSEDE"]
local pBuildingWealthOfTheLaigoksede = GameInfoTypes["BUILDING_WEALTH_OF_THE_LAIGOKSEDE"]
function Ability_WealthOfTheLaigoksede(iPlayer, iX, iY)
	local pOwner = Players[iPlayer]
	local iLeader = pOwner:GetLeaderType()
	if pWealthOfTheLaigoksede and pWealthOfTheLaigoksede[iLeader] then
		local pPlot = Map.GetPlot(iX, iY)
		if pPlot:IsRiver() then
			local pCity = pPlot:GetPlotCity()
			pCity:SetNumRealBuilding(pBuildingWealthOfTheLaigoksede, 1)
		end
	end
end
GameEvents.PlayerCityFounded.Add(Ability_WealthOfTheLaigoksede);