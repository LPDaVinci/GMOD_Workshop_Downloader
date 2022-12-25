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

if SERVER then
	AddCSLuaFile( "wsdl/cl_wsdl_panel.lua" )
	AddCSLuaFile( "wsdl/sh_wsdl_config.lua" )
	AddCSLuaFile( "wsdl/sh_wsdl_fastdl.lua" )
	AddCSLuaFile( "wsdl/sh_wsdl_functions.lua" )
	AddCSLuaFile( "wsdl/sh_wsdl_hooks.lua" )
	include( "wsdl/sh_wsdl_config.lua" )
	include( "wsdl/sh_wsdl_functions.lua" )
	include( "wsdl/sh_wsdl_hooks.lua" )
	include( "wsdl/sv_database.lua" )
else
	include( "wsdl/cl_wsdl_panel.lua" )
	include( "wsdl/sh_wsdl_config.lua" )
	include( "wsdl/sh_wsdl_fastdl.lua" )
	include( "wsdl/sh_wsdl_functions.lua" )
end

