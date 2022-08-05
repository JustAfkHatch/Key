local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = true, SaveConfig = true, IntroEnabled = false})

OrionLib:MakeNotification({
	Name = "Logged In!",
	Content = "Logged In As "..Player.Name.."",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "Dev_V4.a91mxo02kx92mxbb03"
_G.KeyInput = "string"

function Destroy()
game:GetService("CoreGui").Orion:Destroy()
end

function Dev_V4()
Destroy()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\74\117\115\116\65\102\107\72\97\116\99\104\47\68\101\118\45\86\52\47\109\97\105\110\47\82\101\108\101\97\115\101\100\47\46\76\117\97\34\44\116\114\117\101\41\41\40\41\10")()
end

function CorrectKeyNotification()
  OrionLib:MakeNotification({
	Name = "Correct Key!",
	Content = "Thanks For Supporting me",
	Image = "rbxassetid://10470552407",
	Time = 5
})
end

function InCorrectKeyNotification()
  OrionLib:MakeNotification({
	Name = "Incorrect Key!",
	Content = "Please Go To The Link",
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
