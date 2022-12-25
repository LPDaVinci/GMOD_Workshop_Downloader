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
	local plymeta = FindMetaTable( "Player" )

	--This Function creates the Table holospawnsys if it not exist.
	hook.Add( "Initialize", "WSDL_CreateTables", function()	
		if !sql.TableExists("wsdl_check") then
			sql.Query("CREATE TABLE wsdl_check (steamid varchar(255), dontshow boolean)")
		end
	end )

	--This function makes an entry for the player on first time they joining the server.

	hook.Add("PlayerInitialSpawn", "CreateWSDLEntries", function(ply)
			local CompiledString = sql.Query( "SELECT dontshow FROM wsdl_check WHERE steamid = ".. sql.SQLStr(ply:SteamID()) .."")
			if !CompiledString then
				sql.Query( "INSERT INTO wsdl_check (`steamid`, `dontshow`)VALUES ('"..ply:SteamID().."', '0')" ) 
			end  
	end)

net.Receive("ucg_wsdlselection", function()

SelectedPlayer = net.ReadEntity()
CheckboxSelection = net.ReadString()

sql.Query("UPDATE `wsdl_check` SET `dontshow` = '".. CheckboxSelection .."' WHERE `steamid` = '" .. SelectedPlayer:SteamID() .. "'")

end)