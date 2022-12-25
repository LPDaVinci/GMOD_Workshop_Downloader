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
WSDLSystem = WSDLSystem or {}

if WSDLSystem.ForcedWSAddons then
	if ( SERVER ) then
	
	if game.GetMap() == "rp_venator_ucg" then
resource.AddWorkshop("1354100393") -- uCg Venator
end
	if game.GetMap() == "rp_anaxes" then
resource.AddWorkshop("1829795551") -- Rp Anaxes
end
	if game.GetMap() == "yavin" then
resource.AddWorkshop("2015090943") -- Yavin 4
end
if game.GetMap() == "rp_rishimoon_crimson" then
resource.AddWorkshop("890036049") -- RP_RishiMoon_Crimson
end
if game.GetMap() == "endor" then
resource.AddWorkshop("568835546") -- Endor
end
if game.GetMap() == "fs_hoth" then
resource.AddWorkshop("660464983") -- FS_Hoth
end
if game.GetMap() == "gm_arid_valley_v2_day" then
resource.AddWorkshop("510346779") -- GM Arid Valley V2 Day
end
if game.GetMap() == "gm_arid_valley_v2_night" then
resource.AddWorkshop("510347812") -- GM Arid Valley V2 Night
end
if game.GetMap() == "geonosis" then
resource.AddWorkshop("603530182") -- Geonosis
end
if game.GetMap() == "gm_lunarbase" then
resource.AddWorkshop("337825623") -- Gm Lunar Base
end
if game.GetMap() == "gm_geonosis_plains_b2" then
resource.AddWorkshop("109800824") -- Gm_Geonosis_Plains
end
if game.GetMap() == "gm_sarlacc_b2" then
resource.AddWorkshop("109281522") -- Gm_sarlacc
end
if game.GetMap() == "gm_jakku_v5" then
resource.AddWorkshop("730302729") -- Jakku
end
if game.GetMap() == "t2_roguev1" then
resource.AddWorkshop("542911918") -- Jedi Academy Map - T2_Rogue V1.0
end
if game.GetMap() == "rp_jeditemple" then
resource.AddWorkshop("744788718") -- [SW] Jedi Temple from Battlefront
resource.AddWorkshop("744784803") -- Jedi Temple Content
end
if game.GetMap() == "kashyyyk" then
resource.AddWorkshop("594141404") -- Kashyyyk
end
if game.GetMap() == "mustafar" then
resource.AddWorkshop("577727672") -- Mustafar
end
if game.GetMap() == "naboo" then
resource.AddWorkshop("576353911") -- Naboo
end
if game.GetMap() == "rp_kashyyyk_jungle_b2" then
resource.AddWorkshop("169044808") -- Rp_Kashyyyk_Jungle
end
if game.GetMap() == "rp_mos_mesric_v2" then
resource.AddWorkshop("614696420") -- Rp_Mos_Mesric
end
if game.GetMap() == "rp_naboo_city_v1" then
resource.AddWorkshop("225115060") -- Rp_Naboo_City
end
if game.GetMap() == "rp_stardestroyer_v2_2" then
resource.AddWorkshop("130083907") -- Rp_Stardestroyer
end
if game.GetMap() == "rp_kamino_extensive" then
resource.AddWorkshop("774517123") -- STAR WARS Roleplay : Kamino Extensive
end
if game.GetMap() == "rp_kamino_standalone" then
resource.AddWorkshop("901224962") -- STAR WARS Roleplay : Kamino Standalone
end
if game.GetMap() == "rp_scifi" then
resource.AddWorkshop("670961247") -- Spaceship
end
if game.GetMap() == "rp_venator_extensive" then
resource.AddWorkshop("1257128301") -- Venator Roleplay Extensive
end
if game.GetMap() == "hfg_swrp_geonosis" then
resource.AddWorkshop("598786140") -- Star Wars the Clone Wars - Geonosis & Venator Map
end
if game.GetMap() == "rp_deathstar_elite_v2_1" then
resource.AddWorkshop("436923476") -- Star Wars - [rp] Deathstar by elitelukas
end
if game.GetMap() == "rp_vanqor_v1" then
resource.AddWorkshop("665543153") -- rp_vanqor_v1 (Performance update! Read patch notes!)
end
if game.GetMap() == "rp_finalizer" then
resource.AddWorkshop("622888627") -- rp_finalizer
end
if game.GetMap() == "rp_nar_shaddaa_v2" then
resource.AddWorkshop("485317056") -- rp_Nar_Shaddaa_V2
end
if game.GetMap() == "gm_baik_tatooine" then
resource.AddWorkshop("563731859") -- Tatooine
end


resource.AddWorkshop("1102570708") -- [wOS] Advanced Lightsaber Combat (Content Pack)
resource.AddWorkshop("757604550") -- [wOS] Animation Extension - Base
resource.AddWorkshop("848953359") -- [wOS] Animation Extension - Blade Symphony
resource.AddWorkshop("848953556") -- [wOS] Animation Extension - Day of Defeat
resource.AddWorkshop("918084741") -- [wOS] Animation Extension - Prone Mod
resource.AddWorkshop("1125980817") -- [wOS] Animation Extension - Riddick
resource.AddWorkshop("925184078") -- [wOS] Animation Extension - Experimental
resource.AddWorkshop("1172040729") -- uCg Server Materials
resource.AddWorkshop("777794605") -- uCg Tools
	
	end






end

