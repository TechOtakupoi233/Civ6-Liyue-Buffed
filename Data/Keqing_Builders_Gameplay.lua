
function OnRegroupButtonClicked(iX,iY,pUnit)
    if pUnit ~= nil then
        local pPlayer = Players[playerID];
        local iUnitType = "UNIT_BUILDER";
        UnitManager.Kill(pUnit);
        UnitManager.Initunit(pPlayer, iUnitType, iX, iY);
        pPlayer:GetTreasury():ChangeGoldBalance(-200);
    end
end

ExposedMembers.RegroupButton.Unit = OnRegroupButtonClicked