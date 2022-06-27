----------------------------------------------------------------------------------------------------
--[[
No Teleport for Farming Simulator 2022

Copyright (c) -tinte-, 2022

Author: André Buchmann
Issues: https://github.com/schliesser/fs-noteleport/issues

Feel free to open a pull reuests for enhancements or bugfixes.

You are not allowed to sell this or a modified version of the mod.
]] ----------------------------------------------------------------------------------------------------
NoTeleport = {}
NoTeleport.name = "NoTeleport"

-- Return false to disable overwritten function
function NoTeleport:disableFunction()
    return false
end

function initNoTeleport()
    PlaceableHotspot.getBeVisited = Utils.overwrittenFunction(PlaceableHotspot.getBeVisited, NoTeleport.disableFunction)
    Enterable.getIsEnterableFromMenu = Utils.overwrittenFunction(Enterable.getIsEnterableFromMenu, NoTeleport.disableFunction)
    Enterable.getIsTabbable = Utils.overwrittenFunction(Enterable.getIsTabbable, NoTeleport.disableFunction)
end

-- Load as early as possible to override the "Enterable" methods
initNoTeleport()
