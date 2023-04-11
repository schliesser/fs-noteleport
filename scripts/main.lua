--[[
No Teleport Mod for Farming Simulator 22

Author: André Buchmann
Issues: https://github.com/schliesser/fs-noteleport/issues

Feel free to open a pull reuests for enhancements or bugfixes.

FS22_NoTeleport © 2023 by André Buchmann is licensed under CC BY-NC-ND 4.0. To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/
]]
NoTeleport = {}
NoTeleport.name = "NoTeleport"

-- Return false to disable overwritten function
function NoTeleport:disableFunction()
    return false
end

function NoTeleport:loadMapFinished()
    g_currentMission.isToggleVehicleAllowed = false
end

function initNoTeleport()
    PlaceableHotspot.getBeVisited = Utils.overwrittenFunction(PlaceableHotspot.getBeVisited, NoTeleport.disableFunction)
    Enterable.getIsEnterableFromMenu = Utils.overwrittenFunction(Enterable.getIsEnterableFromMenu, NoTeleport.disableFunction)
    FSBaseMission.loadMapFinished = Utils.appendedFunction(FSBaseMission.loadMapFinished, NoTeleport.loadMapFinished)
end

-- Load as early as possible to override the "Enterable" methods
initNoTeleport()
