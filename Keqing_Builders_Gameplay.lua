
function Regroupfunction(iX,iY,unitID : table)
    if pUnit ~= nil then
        local pPlayer = Players[playerID];
        local iUnitType = "UNIT_BUILDER";
        local pUnit		:table	= UnitManager.GetUnit(unitID.player, unitID.id);
	    if (pUnit ~= nil) then
		    UnitManager.RequestCommand( pUnit, UnitCommandTypes.DELETE );
    	end
        UnitManager.Initunit(pPlayer, iUnitType, iX, iY);
        pPlayer:GetTreasury():ChangeGoldBalance(-200);
    end
end

ExposedMembers.RegroupButton.Unit = Regroupfunction