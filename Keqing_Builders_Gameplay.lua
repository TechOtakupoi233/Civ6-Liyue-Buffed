
function Regroupfunction(pUnit)
    if pUnit ~= nil then
        local pPlayer = Players[playerID];
        local iUnitType = "UNIT_BUILDER";
        local plot = Map.GetPlot(pUnit:GetX(), pUnit:GetY());
	    if (pUnit ~= nil) then
		    UnitManager.RequestCommand( pUnit, UnitCommandTypes.DELETE );
    	end
        UnitManager.Initunit(pPlayer, iUnitType, plot);
        pPlayer:GetTreasury():ChangeGoldBalance(-200);
    end
end

ExposedMembers.RegroupButton.Unit = Regroupfunction