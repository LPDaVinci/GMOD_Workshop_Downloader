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
util.AddNetworkString( "ucg_wsdlcheck" )
util.AddNetworkString( "ucg_wsdlselection" )

WSDLSystem = WSDLSystem or {}
WorkshopFiles = {}

function ucg_WSDLInitCheckOpen(ply)

http.Fetch( "http://steamcommunity.com/sharedfiles/filedetails/?id=" .. WSDLSystem.CollectionID, function( page )	
			
					for k, v in string.gmatch( page, [[id="sharedfile_(.-)" class="collectionItem">]] ) do
					table.insert (WorkshopFiles, k)
					end
					
					DontShowBool = sql.QueryValue( "SELECT dontshow FROM wsdl_check WHERE steamid = ".. sql.SQLStr(ply:SteamID()) .."")
					if (DontShowBool == "1") then return end
						net.Start( "ucg_wsdlcheck" )
						net.WriteString(tostring(DontShowBool))
						net.WriteTable(WorkshopFiles)
						net.Send(ply)
end)

end


hook.Add("PlayerInitialSpawn", "ucg_WSDLCheckOpen", ucg_WSDLInitCheckOpen)


function ucg_WSDLCheckOpen(ply)

http.Fetch( "http://steamcommunity.com/sharedfiles/filedetails/?id=" .. WSDLSystem.CollectionID, function( page )	
			
					for k, v in string.gmatch( page, [[id="sharedfile_(.-)" class="collectionItem">]] ) do
					table.insert (WorkshopFiles, k)
					end
						DontShowBool = sql.QueryValue( "SELECT dontshow FROM wsdl_check WHERE steamid = ".. sql.SQLStr(ply:SteamID()) .."")
						net.Start( "ucg_wsdlcheck" )
						net.WriteString(tostring(DontShowBool))
						net.WriteTable(WorkshopFiles)					
						net.Send(ply)
end)

end
concommand.Add("WSDL", ucg_WSDLCheckOpen)