-- Version: 3.1
 
 
-- no annoying errors :|
for _,__error in next,getconnections(game:GetService("ScriptContext").Error) do
	__error:Disable()
end
 
local you = game.Players.LocalPlayer
local lighting = game.Lighting
local char = you.Character
local humanoid = char:FindFirstChildOfClass("Humanoid")


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("TARI HUB|UTG 4.1", "Synapse")

local MAIN = Window:NewTab("MAIN")
local MAINSection = MAINTab:NewSection("Player")


MAINSection:NewButton("Back Font Flip", "Make you flip but I think you don't use:|", function()
   loadstring(game:HttpGet('https://pastebin.com/raw/7wDcPtLk'))()
end)

Section:NewButton("Infied Jump", "jump everything", function()
     Callback = function()
       --Toggles the infinite jump between on or off on every script run
_G.infinjump = not _G.infinjump

if _G.infinJumpStarted == nil then
	--Ensures this only runs once to save resources
	_G.infinJumpStarted = true
	
	--Notifies readiness
	game.StarterGui:SetCore("SendNotification", {Title="UTG Say"; Text="Infinite Jump Activated!"; Duration=5;})

	--The actual infinite jump
	local plr = game:GetService('Players').LocalPlayer
	local m = plr:GetMouse()
	m.KeyDown:connect(function(k)
		if _G.infinjump then
			if k:byte() == 32 then
			humanoid = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
			humanoid:ChangeState('Jumping')
			wait()
			humanoid:ChangeState('Seated')
			end
		end
	end)
end
end)

MainSection:NewToggle("Super-Human", "go fast and jump high but can noclip ⚠️", function(state)
        if state then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 12000000
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 12000000
        else
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        end
    end)
 
MAINSection:NewSlider("Walkspeed", "SPEED!!", 5000, 160, function(s)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)

MAINSection:NewSlider("Jumppower", "JUMP HIGH!!", 3500, 500, function(s)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)

MAINSection:NewButton("Reset", "Resets to defaults", function()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end)

MAINSection:NewButton("Bypassed Fly", "bird mode", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/BypassedFly.lua"))() 

        Fly(true)
    end)

local Tab = Window:NewTab("Visual")
local MASection = Tab:NewSection("Section Name")
MASSection:NewLabel("Colect coin")

MASSection:NewToggle("Colect Coin", "Alive ONLY⚠️⚠️", function(state)
    if state then
        atcoin = true
    else
        atcoin = false
    end
end)
local esp = false
local boxes = false
local chams = false
local tracers = false
local names = false
local roles = false
local teamcheck = true
local tracerorigin = "Bottom"
local rainbow_ = false
MASection:NewToggle("ESP", "No info", function(state)
    if state then
        esp = true
    else
        esp = false
    end
end)

MASection:NewToggle("Chams", "Full bright", function(state)
    if state then
        chams = true
    else
        chams = Flase    
    end
end)

MASection:NewToggle("NAME player", "You can watch name😈😈", function(state)
    if state then
        names = true   
    else
        names = false
    end
end)

MASection:NewToggle("Role game", "no info:((", function(state)
    if state then
        roles = true
    else
        roles = false
    end
end)

MASection:NewDropdown("DropdownText", "DropdownInf", {"Bottom","Middle","Top","Mouse"}, function(currentOption)
   Default="Bottom",
	Callback=function(option)
		tracerorigin = option
end)

MASection:NewToggle("TEAM Check", "ToggleInfo", function(state)
    if state then
        teamcheck = true
    else
        teamcheck = false
    end
end)

Section:NewToggle("Rainbow", "ToggleInfo", function(state)
    if state then
        rainbow_ = true
    else
        rainbow_ = false
    end
end)

local Tab = Window:NewTab("OTHER")
local MAXSection = Tab:NewSection("MICS 🎲")

MAXSection:NewToggle("full bright", "full bright in night", function(state)
    if state then
        fbcon = true
    else
        fbcon = false
    end
end)

MAXSection:NewToggle("ANTI-corlor change", "the corlor is not changer if you have role 😈", function(state)
    if state then
        acccon = true
    else
        acccon = false
    end
end)

MAXSection:NewToggle("Vote PUTIN", "Vote PUTIN", function(state)
    if state then
        print("Vote PUTIN")
    else
        print("Unvote PUTIN")
    end
end)

local Tab = Window:NewTab("Createdit")
local HESection = Tab:NewSection("Createdit")

HESection:NewLabel("This Script Made By gamingtv xdd")

HESection:NewButton("copy", "copy to clipboard", function()
    -- Function to handle button click
function copyButton:click()
    -- Get the text to copy from a text field or whatever
    local textToCopy = "www.youtube.com/@gmaingtv1"
    -- Copy the text to the clipboard
    love.system.setClipboardText(textToCopy)
    print("Copied to clipboard!")
end
end)

local function connect(signal, callback)
	local connection = signal:Connect(callback)
	table.insert(lib.Connections,connection)
	return connection
end
 
local wst__;wst__ = connect(humanoid:GetPropertyChangedSignal("WalkSpeed"),function()
	if wscon then
		changeWs()
	end
end)
local jpt__;jpt__ = connect(humanoid:GetPropertyChangedSignal("JumpPower"),function()
	if jpcon then
		changeJp()
	end
end)
local fct__;fct__ = connect(humanoid.Climbing,function()
	if fclimbcon then
		humanoid.Jump = true
	end
end)
-- connection, in case if you somehow get voided (with noclip/autocollect coins)...
connect(you.CharacterAdded,function(_nchar)
	char = _nchar
	humanoid = char:FindFirstChildOfClass("Humanoid")
	wst__ = connect(humanoid:GetPropertyChangedSignal("WalkSpeed"),function()
		if wscon then
			changeWs()
		end
	end)
	jpt__ = connect(humanoid:GetPropertyChangedSignal("JumpPower"),function()
		if jpcon then
			changeJp()
		end
	end)
	fct__ = connect(humanoid.Climbing,function()
		if fclimbcon then
			humanoid.Jump = true
		end
	end)
end)
connect(game:GetService("RunService").Stepped,function()
	if hbcon then
		for _,i in next,game.Players:GetPlayers() do
			if i ~= you then
				local root = i.Character:FindFirstChildOfClass("Humanoid").RootPart
				if root then
					root.Size = Vector3.new(hbsize,hbsize,hbsize)
					root.Transparency = .5
				end
			end
		end
	else
		for _,i in next,game.Players:GetPlayers() do
			if i ~= you then
				local root = i.Character:FindFirstChildOfClass("Humanoid").RootPart
				if root then
					root.Size = Vector3.new(2,2,1)
					root.Transparency = 1
				end
			end
		end
	end
	if noclipcon then
		for _,p in next,char:GetDescendants() do
			if p:IsA("BasePart") then
				p.CanCollide = false
			end
		end
	end
	if fbcon then
		lighting.Brightness = 2
		lighting.ClockTime = 14
		lighting.FogEnd = 100000
		lighting.GlobalShadows = false
		lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
		lighting.ExposureCompensation = 0
		for _,atmosphere in next,lighting:GetChildren() do
			if atmosphere:IsA("Atmosphere") then
				atmosphere:Destroy()
			end
		end
	end
	if acccon then
		for _,i in next,lighting:GetChildren() do
			if i:IsA("ColorCorrectionEffect") then
				if i.Name ~= "VHS" and i.Name ~= "Deepfry" then
					i:Destroy()
				end
			end
		end
	end
	if atcoin then
		if you.PlayerRole.Value ~= "Dead" then -- alive check policy
			for _,v in pairs(workspace:GetDescendants()) do
				if v:IsA("MeshPart") and v.MeshId == "rbxassetid://8483581926" then
					humanoid.RootPart.CFrame = v.CFrame
				end
			end
		end
	end
	if fmovecon then
		char.LockMoveVector.Value = false
	end
end)
connect(game:GetService("UserInputService").JumpRequest,function()
	if infj then
		humanoid.RootPart.Velocity = Vector3.new(humanoid.RootPart.Velocity.X,humanoid.JumpPower or humanoid.JumpHeight,humanoid.RootPart.Velocity.Z)
	end
end)
connect(game:GetService("RunService").Heartbeat,function()
	local youroot = humanoid.RootPart
	if atcon then
		for _,i in next,game.Players:GetPlayers() do
			if i ~= you then
				if at_runnercheck then
					if you.PlayerRole.Value ~= "Runner" and you.PlayerRole.Value ~= "Dead" then
						if at_teamcheck then
							if i.PlayerRole.Value ~= you.PlayerRole.Value then
								local root = i.Character:FindFirstChildOfClass("Humanoid").RootPart
								if root then
									local distance = (root.Position-youroot.Position).Magnitude
									if distance <= root.Size.Magnitude then
										mouse1click()
									end
								end
							end
						else
							local root = i.Character:FindFirstChildOfClass("Humanoid").RootPart
							if root then
								local distance = (root.Position-youroot.Position).Magnitude
								if distance <= root.Size.Magnitude then
									mouse1click()
								end
							end
						end
					end
				else
					if at_teamcheck then
						if i.PlayerRole.Value ~= you.PlayerRole.Value then
							local root = i.Character:FindFirstChildOfClass("Humanoid").RootPart
							if root then
								local distance = (root.Position-youroot.Position).Magnitude
								if distance <= root.Size.Magnitude then
									mouse1click()
								end
							end
						end
					else
						local root = i.Character:FindFirstChildOfClass("Humanoid").RootPart
						if root then
							local distance = (root.Position-youroot.Position).Magnitude
							if distance <= root.Size.Magnitude then
								mouse1click()
							end
						end
					end
				end
			end
		end
	end
end)
local function addEsp(target)
	local function addBox()
		local box = Drawing.new("Square")
		box.Color = Color3.new(1,1,1)
		box.Thickness = 0.5
		box.Filled = false
		box.Transparency = 1
		return box
	end
	local function addLine()
		local line = Drawing.new("Line")
		line.Color = Color3.new(1,1,1)
		line.Thickness = 0.5
		return line
	end
	local function addText()
		local text = Drawing.new("Text")
		text.Color = Color3.new(1,1,1)
		text.Size = 11
		text.Center = true
		text.Font = 3
		return text
	end
	local function addCham()
		local cham = Instance.new("BoxHandleAdornment",gethui() or game.CoreGui)
		cham.Color3 = Color3.new(1,1,1)
		cham.Transparency = .5
		cham.AlwaysOnTop = true
		cham.ZIndex = 2
		return cham
	end
	local function alive(target)
		return (target.PlayerRole.Value ~= "Dead")
	end
	local function isSameTeam(target)
		return (target.PlayerRole.Value == you.PlayerRole.Value)
	end
	local box = addBox()
	local tracer = addLine()
	local name = addText()
	local role = addText()
	local text = addText()
	local head = addCham()
	local torso = addCham()
	local larm = addCham()
	local rarm = addCham()
	local lleg = addCham()
	local rleg = addCham()
	connect(game.Players.PlayerRemoving,function(player)
		if player == target then
			box:Destroy()
			tracer:Destroy()
			name:Destroy()
			role:Destroy()
			text:Destroy()
			head:Destroy()
			torso:Destroy()
			larm:Destroy()
			rarm:Destroy()
			lleg:Destroy()
			rleg:Destroy()
		end
	end)
	connect(game:GetService("RunService").Stepped,function()
		if esp then
			if alive(target) then
				local mainpos,vis = workspace.CurrentCamera:WorldToViewportPoint(target.Character:FindFirstChildOfClass("Humanoid").RootPart.Position)
				local miscpos1 = workspace.CurrentCamera:WorldToViewportPoint(target.Character:FindFirstChild("Head").Position+Vector3.new(0,0.5,0))
				local miscpos2 = workspace.CurrentCamera:WorldToViewportPoint(target.Character:FindFirstChildOfClass("Humanoid").RootPart.Position-Vector3.new(0,4,0))
				if teamcheck then
					if isSameTeam(target) or target.PlayerRole.Value == "" then
						box.Visible = false
						tracer.Visible = false
						name.Visible = false
						role.Visible = false
						text.Visible = false
						head.Visible = false
						torso.Visible = false
						larm.Visible = false
						rarm.Visible = false	
						lleg.Visible = false
						rleg.Visible = false
					end
				end
				if rainbow_ then
					box.Color = Color3.fromHSV(tick()%5/5,1,1)
					head.Color3 = Color3.fromHSV(tick()%5/5,1,1)
					torso.Color3 = Color3.fromHSV(tick()%5/5,1,1)
					larm.Color3 = Color3.fromHSV(tick()%5/5,1,1)
					rarm.Color3 = Color3.fromHSV(tick()%5/5,1,1)
					lleg.Color3 = Color3.fromHSV(tick()%5/5,1,1)
					rleg.Color3 = Color3.fromHSV(tick()%5/5,1,1)
					tracer.Color = Color3.fromHSV(tick()%5/5,1,1)
					name.Color = Color3.fromHSV(tick()%5/5,1,1)
					role.Color = Color3.fromHSV(tick()%5/5,1,1)
					text.Color = Color3.fromHSV(tick()%5/5,1,1)
				else
					box.Color = target.Character:FindFirstChild("Torso").Color
					head.Color3 = target.Character:FindFirstChild("Torso").Color
					torso.Color3 = target.Character:FindFirstChild("Torso").Color
					larm.Color3 = target.Character:FindFirstChild("Torso").Color
					rarm.Color3 = target.Character:FindFirstChild("Torso").Color
					lleg.Color3 = target.Character:FindFirstChild("Torso").Color
					rleg.Color3 = target.Character:FindFirstChild("Torso").Color
					tracer.Color = target.Character:FindFirstChild("Torso").Color
					name.Color = target.Character:FindFirstChild("Torso").Color
					role.Color = target.Character:FindFirstChild("Torso").Color
					text.Color = target.Character:FindFirstChild("Torso").Color
				end
				if boxes then
					box.Visible = vis
					box.Size = Vector2.new((2350/mainpos.Z)+2.5,miscpos1.Y-miscpos2.Y)
					box.Position = Vector2.new((mainpos.X-box.Size.X/2)-1,mainpos.Y-box.Size.Y/2)
				else
					box.Visible = false
				end
				if chams then
					head.Visible = true
					torso.Visible = true
					larm.Visible = true
					rarm.Visible = true
					lleg.Visible = true
					rleg.Visible = true
					head.Adornee = target.Character:FindFirstChild("Head")
					torso.Adornee = target.Character:FindFirstChild("Torso")
					larm.Adornee = target.Character:FindFirstChild("Left Arm")
					rarm.Adornee = target.Character:FindFirstChild("Right Arm")
					lleg.Adornee = target.Character:FindFirstChild("Left Leg")
					rleg.Adornee = target.Character:FindFirstChild("Right Leg")
					head.Size = target.Character:FindFirstChild("Head").Size
					torso.Size = target.Character:FindFirstChild("Torso").Size
					larm.Size = target.Character:FindFirstChild("Left Arm").Size
					rarm.Size = target.Character:FindFirstChild("Right Arm").Size
					lleg.Size = target.Character:FindFirstChild("Left Leg").Size
					rleg.Size = target.Character:FindFirstChild("Right Leg").Size
				else
					head.Visible = false
					torso.Visible = false
					larm.Visible = false
					rarm.Visible = false
					lleg.Visible = false
					rleg.Visible = false
				end
				if tracers then
					tracer.Visible = vis
					if tracerorigin == "Top" then
						tracer.To = Vector2.new(workspace.CurrentCamera.ViewportSize.X/2,0)
						tracer.From = Vector2.new(mainpos.X-1,mainpos.Y+(miscpos1.Y-miscpos2.Y)/2)
					elseif tracerorigin == "Middle" then
						tracer.To = workspace.CurrentCamera.ViewportSize/2
						tracer.From = Vector2.new(mainpos.X-1,(mainpos.Y+(miscpos1.Y-miscpos2.Y)/2)-((miscpos1.Y-miscpos2.Y)/2))
					elseif tracerorigin == "Bottom" then
						tracer.From = Vector2.new(mainpos.X-1,mainpos.Y+(miscpos1.Y-miscpos2.Y)/2)
						tracer.To = Vector2.new(workspace.CurrentCamera.ViewportSize.X/2,1000)
					elseif tracerorigin == "Mouse" then
						tracer.To = game:GetService("UserInputService"):GetMouseLocation()
						tracer.From = Vector2.new(mainpos.X-1,(mainpos.Y+(miscpos1.Y-miscpos2.Y)/2)-((miscpos1.Y-miscpos2.Y)/2))
					end
				else
					tracer.Visible = false
				end
				if names then
					name.Visible = vis
					name.Position = Vector2.new(workspace.CurrentCamera:WorldToViewportPoint(target.Character:FindFirstChild("Head").Position).X,workspace.CurrentCamera:WorldToViewportPoint(target.Character.Head.Position).Y-20)
					name.Text = target.Name
				else
					name.Visible = false
				end
				if roles then
					role.Visible = vis
					role.Position = Vector2.new(workspace.CurrentCamera:WorldToViewportPoint(target.Character:FindFirstChild("Head").Position).X,workspace.CurrentCamera:WorldToViewportPoint(target.Character.Head.Position).Y-20)
					role.Text = target.PlayerRole.Value
				else
					role.Visible = false
				end
				if names and roles then
					name.Visible = false
					role.Visible = false
					text.Visible = vis
					text.Position = Vector2.new(workspace.CurrentCamera:WorldToViewportPoint(target.Character:FindFirstChild("Head").Position).X,workspace.CurrentCamera:WorldToViewportPoint(target.Character.Head.Position).Y-20)
					text.Text = target.Name.." | "..target.PlayerRole.Value
				else
					text.Visible = false
				end
			else
				box.Visible = false
				tracer.Visible = false
				name.Visible = false
				role.Visible = false
				text.Visible = false
				head.Visible = false
				torso.Visible = false
				larm.Visible = false
				rarm.Visible = false	
				lleg.Visible = false
				rleg.Visible = false
			end
		else
			box.Visible = false
			tracer.Visible = false
			name.Visible = false
			role.Visible = false
			text.Visible = false
			head.Visible = false
			torso.Visible = false
			larm.Visible = false
			rarm.Visible = false	
			lleg.Visible = false
			rleg.Visible = false
		end
	end)
end
for _,i in next,game.Players:GetPlayers() do
	if i ~= you then
		addEsp(i)
	end
end
connect(game.Players.PlayerAdded,function(i)
	if i ~= you then
		addEsp(i)
	end
end)
 
lib:Init()
 
--[[
 
~ UPDATE LOGS: ~
 
* 7/5/2018 - First version of UTG but coming soon (note: I made ui with no library)
* 11/2/2021 - The UTG is out and I update  features
* 13/7/2022 - 3.5 version released
* 1/1/2023 - Happy new year🥳🥳🎆 and i update to 4.0 version
* 28/10/2023 - wofi 2023 is out and I update more  features (note: update visual, fix jump,speed)
* 30/4/2024 - new update 4.5 UTG Script (note: fix fly bug,speed,jump,back font flip. Update auto collect coin,anti color,full bright. Use new UI Kavo library)  
]]