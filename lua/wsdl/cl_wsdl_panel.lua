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
WSDLSystem = WSDLSystem or {}

WSDLSystem.Colors = {}
WSDLSystem.Colors.Orange = Color(255,165,0,255)
WSDLSystem.Colors.Blue = Color(0,163,255,255)
WSDLSystem.Colors.White = Color(255,255,255,255)

WSDLSystem.Colors.LightBlack = Color(40,40,40,255)
WSDLSystem.Colors.LightBlack2 = Color(30,30,30,255)
WSDLSystem.Colors.LightBlack3 =Color(100,100,100,255)
WSDLSystem.Colors.LightBlack4 = Color(60,60,60,255)
WSDLSystem.Colors.CC = Color(255, 255, 255, 0)

local NoWSDownload = 0

	surface.CreateFont("WSDL_Font_1", {
		font = "starjedi",
		extended = true,
		size = 24,
		weight = 2000,
	})

	surface.CreateFont("WSDL_Font_2", {
		font = "starjedi",
		extended = true,
		size = 30,
		weight = 2000,
	})

	surface.CreateFont("WSDL_Font_3", {
		font = "starjedi",
		extended = true,
		size = 24,
		weight = 2000,
	})
		surface.CreateFont("WSDL_Font_4", {
		font = "starjedi",
		extended = true,
		size = 20,
		weight = 2000,
	})
			surface.CreateFont("WSDL_Font_5", {
		font = "starjedi",
		extended = true,
		size = 16,
		weight = 2000,
	})


function WSDLCheck()
DontShowBoolean = net.ReadString()
AllWorkshopfiles = net.ReadTable()
if (DontShowBoolean == "1") then
NoWSDownload = 1
else
NoWSDownload = 0
end


if table.IsEmpty( SetMissingAddons(AllWorkshopfiles) ) then return end

	
			

local MainFrame = vgui.Create("DFrame")
		MainFrame:SetSize(500,800)
		MainFrame:Center()
		MainFrame:SetTitle("")
			MainFrame:SetVisible( true )
	MainFrame:SetDraggable( true )
	MainFrame:ShowCloseButton( true )

	
MainFrame.Paint = function(self, w, h)
			surface.SetDrawColor(WSDLSystem.Colors.Blue)
			surface.DrawRect(0,0,w,30)

			surface.SetDrawColor(WSDLSystem.Colors.LightBlack)
			surface.DrawRect(0,30,w,h-30)

			draw.SimpleText("Steam Workshop","WSDL_Font_1",5,3,WSDLSystem.Colors.White,TEXT_ALIGN_LEFT)

			draw.SimpleText("Dir fehlen einige Addons, genauer gesagt: "..table.Count(SetMissingAddons(AllWorkshopfiles)).." Addons.","WSDL_Font_5",w/2-20,35,WSDLSystem.Colors.White,TEXT_ALIGN_CENTER)
			
			
			draw.RoundedBox(4,w/2-150,h-100-25,325-25,50,WSDLSystem.Colors.Blue)
			draw.RoundedBox(4,w/2-150+2,h-100-25+2,325-4-25,50-4,WSDLSystem.Colors.LightBlack2)
			


			draw.SimpleText("Nicht mehr anzeigen","WSDL_Font_3",w/2-20,750-50-25+12,WSDLSystem.Colors.White,TEXT_ALIGN_CENTER)
		end
			MainFrame:MakePopup()
			
			
		
			
			
		
		local ScrollBar = vgui.Create("DScrollPanel", MainFrame)
		ScrollBar:SetSize( 450+20, 670-150 )
		ScrollBar:SetPos( 20, 55 )
		ScrollBar:GetVBar().Paint = function(self, w, h) draw.RoundedBox(0, 0, 0, w, h, WSDLSystem.Colors.CC) end
		ScrollBar:GetVBar().btnUp.Paint = function(self, w, h) 
			draw.RoundedBox(0, 0, 0, w, h, WSDLSystem.Colors.LightBlack2) 

			surface.SetDrawColor(WSDLSystem.Colors.Blue)
			surface.DrawRect(0,0,w,1)
			surface.DrawRect(0,h-1,w,1)
			surface.DrawRect(0,0,1,h)
			surface.DrawRect(w-1,0,1,h)
		end
		ScrollBar:GetVBar().btnDown.Paint = function(self, w, h) 
			draw.RoundedBox(0, 0, 0, w, h, WSDLSystem.Colors.LightBlack2) 

			surface.SetDrawColor(WSDLSystem.Colors.Blue)
			surface.DrawRect(0,0,w,1)
			surface.DrawRect(0,h-1,w,1)
			surface.DrawRect(0,0,1,h)
			surface.DrawRect(w-1,0,1,h)
		end
		ScrollBar:GetVBar().btnGrip.Paint = function(self, w, h) 
			draw.RoundedBox(0, 0, 0, w, h, WSDLSystem.Colors.LightBlack2)

			surface.SetDrawColor(WSDLSystem.Colors.Blue)
			surface.DrawRect(0,0,w,1)
			surface.DrawRect(0,h-1,w,1)
			surface.DrawRect(0,0,1,h)
			surface.DrawRect(w-1,0,1,h)
		end
		
		local List = vgui.Create("DIconLayout", ScrollBar)
		List:SetSize( 450, 670-150 )
		List:SetPos( 0, 0 )
		List:SetSpaceY( 15 )
		List:SetSpaceX( 0 )

	
	for k, v in pairs(SetMissingAddons(AllWorkshopfiles)) do
	

		steamworks.FileInfo( v, function(result) 
			--print(result.title)
		
	
	
	
			local LButton = List:Add("DButton")
			LButton:SetSize(450,120)
			LButton:SetText("")
			LButton.Paint = function(self, w, h)
				if ( self:IsHovered() ) then
					draw.RoundedBox(4,0,0,w,h,WSDLSystem.Colors.Blue)
					draw.RoundedBox(4,2,2,w-4,h-4,WSDLSystem.Colors.LightBlack3)
					
				else
					draw.RoundedBox(4,0,0,w,h,WSDLSystem.Colors.Blue)
					draw.RoundedBox(4,2,2,w-4,h-4,WSDLSystem.Colors.LightBlack4)
				end
				draw.SimpleText(result.title,"WSDL_Font_4",w/2,h/2-35,WSDLSystem.Colors.White,TEXT_ALIGN_CENTER)
				draw.SimpleText(v,"WSDL_Font_4",w/2,h/2-5,WSDLSystem.Colors.White,TEXT_ALIGN_CENTER)
				

				
			end
			LButton.DoClick = function()
				steamworks.ViewFile(v)
				MainFrame:Remove()
				
			end
		end)
		end
		
		local LCheckBox = vgui.Create("DCheckBox", MainFrame)
		LCheckBox:SetSize(24,24)
		LCheckBox:SetPos( 350,750-50-25+2+12 )
		LCheckBox:SetValue( NoWSDownload )
		LCheckBox.OnChange = function(self)
			if ( self:GetChecked() ) then
				NoWSDownload = 1
				--MainFrame:Close()
			else
				NoWSDownload = 0
			end
			
			net.Start("ucg_wsdlselection")
			net.WriteEntity(LocalPlayer())
			net.WriteString(NoWSDownload)
			net.SendToServer()
			
		end
			
		
		
		
		
		local WSButton = vgui.Create( "DButton", MainFrame )
		WSButton:SetText( "Komplette Workshop Kollektion" )
		WSButton:SetColor( WSDLSystem.Colors.White )
		WSButton:SetSize( 200, 50 )
		WSButton:SetPos( 500/2-100,800-50-25+12)
		WSButton.Paint = function(self,w,h)
		if ( self:IsHovered() ) then
					draw.RoundedBox(4,0,0,w,h,WSDLSystem.Colors.Blue)
					draw.RoundedBox(4,2,2,w-4,h-4,WSDLSystem.Colors.LightBlack3)
					
				else
					draw.RoundedBox(4,0,0,w,h,WSDLSystem.Colors.Blue)
					draw.RoundedBox(4,2,2,w-4,h-4,WSDLSystem.Colors.LightBlack4)
				end
		end
		WSButton.DoClick = function()
		steamworks.ViewFile(WSDLSystem.CollectionID) --set your workshop content url here, or your FastDL link.
		MainFrame:Close()
	end

	
end

net.Receive("ucg_wsdlcheck", WSDLCheck)



	
	





