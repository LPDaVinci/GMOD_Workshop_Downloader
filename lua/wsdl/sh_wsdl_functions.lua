--[[-------------------------------------------------------------------
	Workshop Downloader System:
		Needed for the thing to work!
			Powered by
   _____ ______ _   _ _______ _____  _____ _______   __     _   _ ______ _________          ______  _____  _  __
  / ____|  ____| \ | |__   __|  __ \|_   _/ ____\ \ / /    | \ | |  ____|__   __\ \        / / __ \|  __ \| |/ /
 | |    | |__  |  \| |  | |  | |__) | | || |     \ V /_____|  \| | |__     | |   \ \  /\  / / |  | | |__) | ' / 
 | |    |  __| | . ` |  | |  |  _  /  | || |      > <______| . ` |  __|    | |    \ \/  \/ /| |  | |  _  /|  <  
 | |____| |____| |\  |  | |  | | \ \ _| || |____ / . \     | |\  | |____   | |     \  /\  / | |__| | | \ \| . \ 
  \_____|______|_| \_|  |_|  |_|  \_\_____\_____/_/ \_\    |_| \_|______|  |_|      \/  \/   \____/|_|  \_\_|\_\
                                                                                                                
                                                                                                                
-------------------------------------------------------------------]]--[[
							  
	Edited by LPDaVinci
	
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



