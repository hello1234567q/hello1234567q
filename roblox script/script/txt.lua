local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Universal Script | by gamingtv xdd", "BloodTheme")
    
     -- MAIN
    local Main = Window:NewTab("Script Universal")
    local MainSection = Main:NewSection("all Script")


    MainSection:NewButton("Hitbox Expander", "Expanded + Visual hitbox", function()
        loadstring(game:HttpGet('https://pastebin.com/raw/zr5xBZKr'))()
    end)

    MainSection:NewButton("Chams", "See A Person Behind A Wall", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/QH47i0JP'),true))()
    end)

    MainSection:NewButton("Esp Hub", "A player info / see a person behind a wall", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/nqyGkWvx'),true))()
    end)

    MainSection:NewButton("Bypass Kick Ban", "Bypasses A Game That Kicks You When You Join It :)", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/gsxvWvnj"))()
    end)

    --LOCAL PLAYER
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")

    PlayerSection:NewSlider("Walkspeed Changer", "Change If You Want To", 500, 16, function(s)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)

    PlayerSection:NewSlider("Jumppower Changer", "Change If You Want Prob Doesnt Work", 350, 50, function(s)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)

    PlayerSection:NewButton("Reset WS/JP", "Resets to all defaults", function()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end)

    PlayerSection:NewButton("Infinite Jump / Jump in the air", "Obviously you can jump infinitely", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BsGlitch/-nfJumps/main/BsGlitch"))();
    end)

    PlayerSection:NewButton("Noclip", "Makes you go through walls (cannot go back)", function()
        loadstring(game.HttpGet('https://pastebin.com/raw/zxmtfXpx'))()
    end)

    --Other
    local Other = Window:NewTab("Other")
    local OtherSection = Other:NewSection("Other")

    OtherSection:NewButton("Chat Spoofer", "Lets you chat for other people", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/djBfk8Li'),true))()
    end)

    OtherSection:NewButton("Bypassed Fly", "bird mode", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/BypassedFly.lua"))() 

        Fly(true)
    end)

    OtherSection:NewButton("Infinite Yield", "FE Admin commands", function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
    end)

    OtherSection:NewToggle("Obviously Hacking Mode", "Makes You Jump High And Walk Fast", function(state)
        if state then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 200
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 120
        else
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        end
    end)

    OtherSection:NewButton("Full Bright", "Basically adds light (cannot go back)", function()
        if not _G.FullBrightExecuted then

            _G.FullBrightEnabled = false
        
            _G.NormalLightingSettings = {
                Brightness = game:GetService("Lighting").Brightness,
                ClockTime = game:GetService("Lighting").ClockTime,
                FogEnd = game:GetService("Lighting").FogEnd,
                GlobalShadows = game:GetService("Lighting").GlobalShadows,
                Ambient = game:GetService("Lighting").Ambient
            }
        
            game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
                if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
                    _G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
                    if not _G.FullBrightEnabled then
                        repeat
                            wait()
                        until _G.FullBrightEnabled
                    end
                    game:GetService("Lighting").Brightness = 1
                end
            end)
        
            game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
                if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
                    _G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
                    if not _G.FullBrightEnabled then
                        repeat
                            wait()
                        until _G.FullBrightEnabled
                    end
                    game:GetService("Lighting").ClockTime = 12
                end
            end)
        
            game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
                if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
                    _G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
                    if not _G.FullBrightEnabled then
                        repeat
                            wait()
                        until _G.FullBrightEnabled
                    end
                    game:GetService("Lighting").FogEnd = 786543
                end
            end)
        
            game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
                if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
                    _G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
                    if not _G.FullBrightEnabled then
                        repeat
                            wait()
                        until _G.FullBrightEnabled
                    end
                    game:GetService("Lighting").GlobalShadows = false
                end
            end)
        
            game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
                if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
                    _G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
                    if not _G.FullBrightEnabled then
                        repeat
                            wait()
                        until _G.FullBrightEnabled
                    end
                    game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                end
            end)
        
            game:GetService("Lighting").Brightness = 1
            game:GetService("Lighting").ClockTime = 12
            game:GetService("Lighting").FogEnd = 786543
            game:GetService("Lighting").GlobalShadows = false
            game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
        
            local LatestValue = true
            spawn(function()
                repeat
                    wait()
                until _G.FullBrightEnabled
                while wait() do
                    if _G.FullBrightEnabled ~= LatestValue then
                        if not _G.FullBrightEnabled then
                            game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
                            game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
                            game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
                            game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
                            game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
                        else
                            game:GetService("Lighting").Brightness = 1
                            game:GetService("Lighting").ClockTime = 12
                            game:GetService("Lighting").FogEnd = 786543
                            game:GetService("Lighting").GlobalShadows = false
                            game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                        end
                        LatestValue = not LatestValue
                    end
                end
            end)
        end
        
        _G.FullBrightExecuted = true
        _G.FullBrightEnabled = not _G.FullBrightEnabled
    end)

     -- GAMES
     local Games = Window:NewTab("Games (NEW)")
     local GamesSection = Games:NewSection("In Plain Sight 2 (working on it)")

     GamesSection:NewButton("Noclip", "Makes you go through walls (cannot go back)", function()
        loadstring(game.HttpGet('https://pastebin.com/raw/zxmtfXpx'))()
    end)

    GamesSection:NewButton("Infinite Jump / Jump in the air", "Obviously you can jump infinitely", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BsGlitch/-nfJumps/main/BsGlitch"))();
    end)

    GamesSection:NewButton("Esp Hub", "Another Hub i made", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/9Fi65ghQ'),true))()
    end)

    local GamesSection = Games:NewSection("The nightshift experience")

    GamesSection:NewButton("Full Bright", "Basically adds light (cannot go back)", function()
        if not _G.FullBrightExecuted then

            _G.FullBrightEnabled = false
        
            _G.NormalLightingSettings = {
                Brightness = game:GetService("Lighting").Brightness,
                ClockTime = game:GetService("Lighting").ClockTime,
                FogEnd = game:GetService("Lighting").FogEnd,
                GlobalShadows = game:GetService("Lighting").GlobalShadows,
                Ambient = game:GetService("Lighting").Ambient
            }
        
            game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
                if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
                    _G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
                    if not _G.FullBrightEnabled then
                        repeat
                            wait()
                        until _G.FullBrightEnabled
                    end
                    game:GetService("Lighting").Brightness = 1
                end
            end)
        
            game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
                if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
                    _G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
                    if not _G.FullBrightEnabled then
                        repeat
                            wait()
                        until _G.FullBrightEnabled
                    end
                    game:GetService("Lighting").ClockTime = 12
                end
            end)
        
            game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
                if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
                    _G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
                    if not _G.FullBrightEnabled then
                        repeat
                            wait()
                        until _G.FullBrightEnabled
                    end
                    game:GetService("Lighting").FogEnd = 786543
                end
            end)
        
            game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
                if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
                    _G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
                    if not _G.FullBrightEnabled then
                        repeat
                            wait()
                        until _G.FullBrightEnabled
                    end
                    game:GetService("Lighting").GlobalShadows = false
                end
            end)
        
            game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
                if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
                    _G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
                    if not _G.FullBrightEnabled then
                        repeat
                            wait()
                        until _G.FullBrightEnabled
                    end
                    game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                end
            end)
        
            game:GetService("Lighting").Brightness = 1
            game:GetService("Lighting").ClockTime = 12
            game:GetService("Lighting").FogEnd = 786543
            game:GetService("Lighting").GlobalShadows = false
            game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
        
            local LatestValue = true
            spawn(function()
                repeat
                    wait()
                until _G.FullBrightEnabled
                while wait() do
                    if _G.FullBrightEnabled ~= LatestValue then
                        if not _G.FullBrightEnabled then
                            game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
                            game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
                            game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
                            game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
                            game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
                        else
                            game:GetService("Lighting").Brightness = 1
                            game:GetService("Lighting").ClockTime = 12
                            game:GetService("Lighting").FogEnd = 786543
                            game:GetService("Lighting").GlobalShadows = false
                            game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                        end
                        LatestValue = not LatestValue
                    end
                end
            end)
        end
        
        _G.FullBrightExecuted = true
        _G.FullBrightEnabled = not _G.FullBrightEnabled
    end)

    GamesSection:NewSlider("Walkspeed Changer", "Change If You Want To", 500, 16, function(s)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)

    local GamesSection = Games:NewSection("Dingus (hunter only)")

    GamesSection:NewButton("Hitbox Expander", "Expanded + Visual hitbox", function()
        loadstring(game:HttpGet('https://pastebin.com/raw/zr5xBZKr'))()
    end)

    GamesSection:NewButton("Esp Hub", "A player info / see a person behind a wall", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/nqyGkWvx'),true))()
    end)

    GamesSection:NewButton("Chams (might be broken)", "See A Person Behind A Wall", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/QH47i0JP'),true))()
    end)
    
    local GamesSection = Games:NewSection("Flag Wars")

    GamesSection:NewButton("Hitbox Expander", "Expanded + Visual hitbox", function()
        loadstring(game:HttpGet('https://pastebin.com/raw/zr5xBZKr'))()
    end)

    GamesSection:NewButton("Chams (might be broken)", "See A Person Behind A Wall", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/QH47i0JP'),true))()
    end)

    local GamesSection = Games:NewSection("Carry Me! / Other obby games")

    GamesSection:NewSlider("Walkspeed Changer", "Change If You Want To", 500, 16, function(s)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)

    GamesSection:NewSlider("Jumppower Changer", "Change If You Want Prob Doesnt Work", 350, 50, function(s)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)

    GamesSection:NewButton("Infinite Yield", "FE Admin commands", function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
    end)

    local GamesSection = Games:NewSection("Transformers: Dark of the moon")

    GamesSection:NewButton("Hitbox Expander", "Expanded + Visual hitbox", function()
        loadstring(game:HttpGet('https://pastebin.com/raw/zr5xBZKr'))()
    end)

    GamesSection:NewButton("Infinite Jump / Jump in the air", "Obviously you can jump infinitely", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BsGlitch/-nfJumps/main/BsGlitch"))();
    end)

    GamesSection:NewButton("Noclip", "Makes you go through walls (cannot go back)", function()
        loadstring(game.HttpGet('https://pastebin.com/raw/zxmtfXpx'))()
    end)

    GamesSection:NewButton("Infinite Yield", "FE Admin commands", function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
    end)

    local GamesSection = Games:NewSection("The Mimic")

    GamesSection:NewButton("Full Bright", "Basically adds light (cannot go back)", function()
        if not _G.FullBrightExecuted then

            _G.FullBrightEnabled = false
        
            _G.NormalLightingSettings = {
                Brightness = game:GetService("Lighting").Brightness,
                ClockTime = game:GetService("Lighting").ClockTime,
                FogEnd = game:GetService("Lighting").FogEnd,
                GlobalShadows = game:GetService("Lighting").GlobalShadows,
                Ambient = game:GetService("Lighting").Ambient
            }
        
            game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
                if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
                    _G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
                    if not _G.FullBrightEnabled then
                        repeat
                            wait()
                        until _G.FullBrightEnabled
                    end
                    game:GetService("Lighting").Brightness = 1
                end
            end)
        
            game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
                if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
                    _G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
                    if not _G.FullBrightEnabled then
                        repeat
                            wait()
                        until _G.FullBrightEnabled
                    end
                    game:GetService("Lighting").ClockTime = 12
                end
            end)
        
            game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
                if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
                    _G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
                    if not _G.FullBrightEnabled then
                        repeat
                            wait()
                        until _G.FullBrightEnabled
                    end
                    game:GetService("Lighting").FogEnd = 786543
                end
            end)
        
            game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
                if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
                    _G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
                    if not _G.FullBrightEnabled then
                        repeat
                            wait()
                        until _G.FullBrightEnabled
                    end
                    game:GetService("Lighting").GlobalShadows = false
                end
            end)
        
            game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
                if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
                    _G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
                    if not _G.FullBrightEnabled then
                        repeat
                            wait()
                        until _G.FullBrightEnabled
                    end
                    game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                end
            end)
        
            game:GetService("Lighting").Brightness = 1
            game:GetService("Lighting").ClockTime = 12
            game:GetService("Lighting").FogEnd = 786543
            game:GetService("Lighting").GlobalShadows = false
            game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
        
            local LatestValue = true
            spawn(function()
                repeat
                    wait()
                until _G.FullBrightEnabled
                while wait() do
                    if _G.FullBrightEnabled ~= LatestValue then
                        if not _G.FullBrightEnabled then
                            game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
                            game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
                            game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
                            game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
                            game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
                        else
                            game:GetService("Lighting").Brightness = 1
                            game:GetService("Lighting").ClockTime = 12
                            game:GetService("Lighting").FogEnd = 786543
                            game:GetService("Lighting").GlobalShadows = false
                            game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                        end
                        LatestValue = not LatestValue
                    end
                end
            end)
        end
        
        _G.FullBrightExecuted = true
        _G.FullBrightEnabled = not _G.FullBrightEnabled
    end)

    GamesSection:NewButton("Infinite Yield", "FE Admin commands", function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
    end)

    GamesSection:NewButton("Eclipse Hub", "cheese", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/1HaRFsbM'),true))()
    end)

    local GamesSection = Games:NewSection("Murderes VS Sheriffs Duels")

    GamesSection:NewButton("Noclip", "Makes you go through walls (cannot go back)", function()
        loadstring(game.HttpGet('https://pastebin.com/raw/zxmtfXpx'))()
    end)

    GamesSection:NewButton("Hitbox Expander", "Expanded + Visual hitbox", function()
        loadstring(game:HttpGet('https://pastebin.com/raw/zr5xBZKr'))()
    end)

    GamesSection:NewButton("Chams (sometimes just shows the head)", "See A Person Behind A Wall", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/QH47i0JP'),true))()
    end)

    local GamesSection = Games:NewSection("Restaurant Tycoon 2")

    GamesSection:NewButton("Eclipse Hub", "cheese", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/1HaRFsbM'),true))()
    end)

    local GamesSection = Games:NewSection("Flee the facility")

    GamesSection:NewButton("Lunar Hub", "cheese", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NexIsHot/Lunar/main/FTF.lua",true))()
    end)

    local GamesSection = Games:NewSection("Survive the killer")

    GamesSection:NewButton("Eltoro Hub", "cheese", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/FOXTROXHACKS/ElToro/main/Hub.lua"))()
    end)

    local GamesSection = Games:NewSection("Murder mystery 2")

    GamesSection:NewButton("Eclipse Hub", "cheese", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/1HaRFsbM'),true))()
    end)

    GamesSection:NewButton("Kidachi Hub", "cheese", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/KidichiHB/Kidachi/main/Scripts/MM2_V2"))()
    end)

    GamesSection:NewButton("FE Yeet hub (lol)", "cheese", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/YssHacker/Fe-Trolling-GUI/main/mainscript2"))()
    end)

    local GamesSection = Games:NewSection("Sharkbite 2")

    GamesSection:NewButton("Nex Hub", "cheese", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CopyReal/NexHub/main/NexHubLoader"))()
    end)

    GamesSection:NewButton("Zyle Hub", "cheese", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Lolboxo/SharkBiteV3/main/SharkBiteV3.1'))()
    end)

    local GamesSection = Games:NewSection("Doors")

    GamesSection:NewButton("Vynixius Hub", "cheese", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))()
    end)

    local GamesSection = Games:NewSection("Blade Ball")

    GamesSection:NewButton("Stellar Hub (Click 3 dots -->)", "Key: THXFORJOIN", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ImNotFatBitch/LoaderScripts/main/LoaderScripts"))()
    end)

    local GamesSection = Games:NewSection("Counter Blox")

    GamesSection:NewButton("Counter Blox Hub", "cheese", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/NooVster/404/main/Source'))()
    end)

    local GamesSection = Games:NewSection("Making memes in your basement")

    GamesSection:NewButton("Meme Tycoon Hub", "cheese", function()
        local Threads = {}
local AutoSellBool = false
local AutoUploadBool = false
local AutoCollectMemes = false
local OwnedHouse = nil

function getOwnedHouse()
	for i,Tycoon in pairs(game:GetService("Workspace").Tycoons:GetChildren()) do
		if string.sub(Tycoon.Name,1,string.len("Tycoon")) == "Tycoon" then
			print(Tycoon.TycoonOwner.Value)
			if Tycoon.TycoonOwner.Value == game.Players.LocalPlayer.Name then
				OwnedHouse = Tycoon
			else

			end
		end
	end
end

function sell()
	if not AutoSellBool then return end
	game:GetService("ReplicatedStorage").Events.UploadCurrentMemes:FireServer()
end
function upload()
	if not AutoUploadBool then return end
	game:GetService("ReplicatedStorage").Events.MemeToStorage:FireServer()
end

function collect()
	if not AutoCollectMemes then return end
	if OwnedHouse ~= nil then
		for i,v in pairs(OwnedHouse.StaticItems:GetChildren()) do
			if string.sub(v.Name,1,4) == "Belt" then
				fireproximityprompt(v.Collect.CollectPart.ProximityPrompt)
			end
		end
	end
end
getOwnedHouse()
print(OwnedHouse)

local function SpawnToggleLoop(Value,Callback)
	local Thread = task.spawn(function()
		while task.wait() do
			Callback()
		end
	end)
	table.insert(Threads,Thread)
end


     -- Credit
    local Main = Window:NewTab("Credit")
    local heSection = Main:NewSection("Credit")
	
	heSection:NewLabel("This Script made by gamingtv xdd")
	
	heSection:NewButton("subscriber for my chandel", "url:https://www.youtube.com/channel/UC7hIpm5gINxUJcV5CCTNatw", function()
    -- Get the text to copy
    local textToCopy = "https://www.youtube.com/channel/UC7hIpm5gINxUJcV5CCTNatw/?sub_confirmation=1" -- Replace with the text you want to copy

    -- Check if the clipboard object is available
    if gui.Clipboard then
        -- Create a clipboard object
        local clipboard = gui.Clipboard()

        -- Check if the clipboard object is valid
        if clipboard then
            -- Set the clipboard text
            clipboard:SetText(textToCopy)

            -- Show a notification to the user
            print("Copied to clipboard!")
        else
            print("Error: Unable to create clipboard object")
        end
    else
        print("Error: Clipboard object not available")
    end