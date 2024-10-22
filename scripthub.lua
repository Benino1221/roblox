--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "ScriptHub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

-- Adding the new tab "Universal"
local UniversalTab = Window:MakeTab({
	Name = "Universal",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Button in Universal tab that loads the NamelessAdmin script
UniversalTab:AddButton({
	Name = "Execute NamelessAdmin Script!",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))()
  	end    
})

-- Button in Universal tab that loads the Infinite Yield script
UniversalTab:AddButton({
	Name = "Execute Infinite Yield Script!",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  	end    
})

-- Button in Universal tab that loads the Aimbot & ESP script
UniversalTab:AddButton({
	Name = "Aimbot & ESP",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/AirHub/main/AirHub.lua"))()
  	end    
})

-- Button in Universal tab that loads the ChatBypasser script
UniversalTab:AddButton({
	Name = "ChatBypasser",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/Gazer-Ha/Neko-v1/refs/heads/main/Googoogaagaa'))()
  	end    
})

-- Adding the new tab "A Dusty Trip"
local DustyTripTab = Window:MakeTab({
	Name = "A Dusty Trip",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Button in "A Dusty Trip" tab that loads the specified script
DustyTripTab:AddButton({
	Name = "Start Dusty Trip",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/artemy133563/Utilities/main/ADustyTrip",true))()
  	end    
})

-- Adding the new tab "Arsenal"
local ArsenalTab = Window:MakeTab({
	Name = "Arsenal",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Button in "Arsenal" tab that loads the specified script
ArsenalTab:AddButton({
	Name = "Execute Arsenal Script",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubArsenal"))("https://t.me/KrutoySuslik")
  	end    
})

-- Adding the new tab "Bedwars"
local BedwarsTab = Window:MakeTab({
	Name = "Bedwars",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Button in "Bedwars" tab that loads the VapeV4 script
BedwarsTab:AddButton({
	Name = "VapeV4 (long loading)",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
  	end    
})

-- Adding the new tab "Blade Ball"
local BladeBallTab = Window:MakeTab({
	Name = "Blade Ball",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Button in "Blade Ball" tab that loads the specified script
BladeBallTab:AddButton({
	Name = "Execute Blade Ball Script",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/offperms/nobulem.cc./main/marvplaygound"))()
  	end    
})

-- Adding the new tab "Tower of Hell"
local TowerOfHellTab = Window:MakeTab({
	Name = "Tower of Hell",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Button in "Tower of Hell" tab that loads the specified script
TowerOfHellTab:AddButton({
	Name = "Execute Tower of Hell Script",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/dqvh/dqvh/main/SprinHub",true))()
  	end    
})

-- Initialize the interface
OrionLib:Init()

-- To destroy the interface, you can use:
-- OrionLib:Destroy()
