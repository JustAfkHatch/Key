local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = true, SaveConfig = true, IntroEnabled = false})

OrionLib:MakeNotification({
	Name = "Logged In!",
	Content = "Logged In As "..Player.Name.."",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "V4"
_G.KeyInput = "string"

function Destroy()
game:GetService("CoreGui").Orion:Destroy()
end

function Dev_V4()
Destroy()
loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAfkHatch/Dev-V4/main/Private-Version/.Lua",true))()
end

function CorrectKeyNotification()
  OrionLib:MakeNotification({
	Name = "Correct Key!",
	Content = "I Thought You Couldnt Find My Key!",
	Image = "rbxassetid://10470552407",
	Time = 5
})
end

function InCorrectKeyNotification()
  OrionLib:MakeNotification({
	Name = "Incorrect Key!",
	Content = "Please Find My Key",
	Image = "rbxassetid://10470552407",
	Time = 5
})
end

local Tab = Window:MakeTab({
	Name = "Key System",
	Icon = "rbxassetid://10470552407",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Enter Key Here!",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		 _G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "Verify Key!",
	Callback = function()
	if _G.KeyInput == _G.Key then
	Dev_V4()
   	CorrectKeyNotification()
   else
	InCorrectKeyNotification()
	end
end
})

Tab:AddButton({
	Name = "Destroy Gui",
	Callback = function()
      Destroy()
  	end    
})
