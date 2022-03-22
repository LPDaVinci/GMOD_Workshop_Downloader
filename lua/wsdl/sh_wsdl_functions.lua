--[[-------------------------------------------------------------------
	Workshop Downloader System:
		Needed for the thing to work!
			Powered by
  ____                _        _    ____                               
 / ___|_ __ _   _ ___| |_ __ _| |  / ___| __ _ _ __ ___   ___ _ __ ___ 
| |   | '__| | | / __| __/ _` | | | |  _ / _` | '_ ` _ \ / _ \ '__/ __|
| |___| |  | |_| \__ \ || (_| | | | |_| | (_| | | | | | |  __/ |  \__ \
 \____|_|   \__, |___/\__\__,_|_|  \____|\__,_|_| |_| |_|\___|_|  |___/
            |___/                                                      

-------------------------------------------------------------------]]--[[
							  
	Coded by LPDaVinci
	
---------------------------------------------------------------------]]--

function SetMissingAddons(tablename)
local AddonNames = {}
for wid,wname in ipairs(tablename) do
		if !(steamworks.IsSubscribed(wname)) then
		if not table.HasValue(AddonNames,wname) then
		table.insert(AddonNames,wname)
		end
		end
		end
return AddonNames
end



