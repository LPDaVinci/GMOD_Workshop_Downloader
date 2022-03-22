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