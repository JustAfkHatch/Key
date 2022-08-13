local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Darkware -- Key System", HidePremium = true, SaveConfig = true, IntroEnabled = false})

OrionLib:MakeNotification({
	Name = "Logged In!",
	Content = "Logged In As "..Player.Name.."",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "Dev_V5.34kco3vmeo10cm3"
_G.KeyInput = "string"

function Destroy()
game:GetService("CoreGui").Orion:Destroy()
end

function Dev_V4()
Destroy()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAfkHatch/Dev-V5-Normal-Version/main/.Lua",true))()
end

function CorrectKeyNotification()
  OrionLib:MakeNotification({
	Name = "Correct Key!",
	Content = "Great Job!",
	Image = "rbxassetid://10574779294",
	Time = 5
})
end

function InCorrectKeyNotification()
  OrionLib:MakeNotification({
	Name = "Incorrect Key!",
	Content = "Please Get The Key",
	Image = "rbxassetid://10574782110",
	Time = 5
})
end

local Tab = Window:MakeTab({
	Name = "Key System",
	Icon = "rbxassetid://10560894045",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Enter The Key Here",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		 _G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "Verify Key",
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
	Name = "Get Key!",
	Callback = function()
	game.StarterGui:SetCore("SendNotification", {Title = "Link Copied", Text = "Paste This In Your Browser!", Icon = "rbxassetid://10470552407", Duration = 5})
	setclipboard("https://link-hub.net/479446/key-for-dev-v41")
end
})

Tab:AddButton({
	Name = "Destroy Gui",
	Callback = function()
      Destroy()
  	end    
})
