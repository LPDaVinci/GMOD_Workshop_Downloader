	--[[-------------------------------------------------------------------
		Workshop Downloader:
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
if SERVER then

	include( "wsdl/sh_wsdl_config.lua" )
	include( "wsdl/sh_wsdl_fastdl.lua" )
	include( "wsdl/sh_wsdl_functions.lua" )
	include( "wsdl/sv_wsdl_hooks.lua" )
	
	include( "wsdl/sv_database.lua" )
	AddCSLuaFile( "wsdl/sh_wsdl_config.lua" )
	AddCSLuaFile( "wsdl/sh_wsdl_functions.lua" )
	AddCSLuaFile( "wsdl/cl_wsdl_panel.lua" )

else

	include( "wsdl/cl_wsdl_panel.lua" )
	include( "wsdl/sh_wsdl_config.lua" )
	include( "wsdl/sh_wsdl_fastdl.lua" )
	include( "wsdl/sh_wsdl_functions.lua" )
	
end


