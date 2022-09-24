local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Vulture -- Key System", HidePremium = true, SaveConfig = true, IntroEnabled = false})

OrionLib:MakeNotification({
	Name = "Logged In!",
	Content = "Logged In As "..Player.Name.."",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "Vulture_Synapsexuserv3"
_G.KeyInput = "string"

function Destroy()
game:GetService("CoreGui").Orion:Destroy()
end

function Vulture()
Destroy()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAfkHatch/slime-tower-tycoon/Roblox_Script/PRIVATE%20FEATURE"))()
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
	Icon = "",
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
	Vulture()
   	CorrectKeyNotification()
   else
	InCorrectKeyNotification()
	end
end
})

Tab:AddButton({
	Name = "Get Key!",
	Callback = function()
    local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
    local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

    Notification:Notify(
    {Title = "Notification!", Description = "Link Copied,Please Ctrl V in your browser!"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
    )
	setclipboard("https://link-hub.net/479446/slime-tower-tycoon-gui")
end
})

Tab:AddButton({
	Name = "Destroy Gui",
	Callback = function()
      Destroy()
  	end    
})
