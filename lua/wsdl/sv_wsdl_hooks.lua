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
util.AddNetworkString( "ucg_wsdlcheck" )
util.AddNetworkString( "ucg_wsdlselection" )

WSDLSystem = WSDLSystem or {}
WorkshopFiles = {}

function ucg_WSDLInitCheckOpen(ply)

http.Fetch( "http://steamcommunity.com/sharedfiles/filedetails/?id=" .. WSDLSystem.CollectionID, function( page )	
			
					for k in page:gmatch( [[<div id="sharedfile_(.-)" class="collectionItem">]] ) do
					table.insert (WorkshopFiles, k)
					end
					
					DontShowBool = sql.QueryValue( "SELECT dontshow FROM wsdl_check WHERE steamid = ".. sql.SQLStr(ply:SteamID()) .."")
					if (DontShowBool == "1") then return end
						net.Start( "ucg_wsdlcheck" )
						net.WriteString(DontShowBool)
						net.WriteTable(WorkshopFiles)
						net.Send(ply)
end)

end


hook.Add("PlayerInitialSpawn", "ucg_WSDLCheckOpen", ucg_WSDLInitCheckOpen)

function ucg_WSDLCheckOpen(ply)

http.Fetch( "http://steamcommunity.com/sharedfiles/filedetails/?id=" .. WSDLSystem.CollectionID, function( page )	
			
					for k in page:gmatch( [[<div id="sharedfile_(.-)" class="collectionItem">]] ) do
					table.insert (WorkshopFiles, k)
					end
						DontShowBool = sql.QueryValue( "SELECT dontshow FROM wsdl_check WHERE steamid = ".. sql.SQLStr(ply:SteamID()) .."")
						net.Start( "ucg_wsdlcheck" )
						net.WriteString(DontShowBool)
						net.WriteTable(WorkshopFiles)
						
						net.Send(ply)
end)

end

concommand.Add("OpenWSDL", ucg_WSDLCheckOpen)
				