if game.PlaceId == 6403373529 or game.PlaceId == 11520107397 or game.PlaceId == 8260276694 or game.PlaceId == 9015014224 then
    repeat wait() until game.Players.LocalPlayer:FindFirstChild("leaderstats") ~= nil
    local Workspace = game:GetService("Workspace")
    local Players = game:GetService("Players")
    local key = game:GetService("UserInputService")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local char = Players.LocalPlayer.Character
    local glove = game.Players.LocalPlayer.leaderstats.Glove.Value
    local oldt = 0
    local invist = 1
    local kickpart = Instance.new("Part")
    kickpart.CFrame = Workspace.Lobby.brazil.portal.CFrame
    kickpart.Parent = Workspace
    local GloveAbilitys = {
        ["Default"] = game:GetService("ReplicatedStorage"):WaitForChild("b"),
        ["Pusher"] = game:GetService("ReplicatedStorage"):WaitForChild("PusherWall"),
        ["Defense"] = game:GetService("ReplicatedStorage"):WaitForChild("Barrier"),
        ["Cheeky"] = game:GetService("ReplicatedStorage"):WaitForChild("Spherify"),
        ["Replica"] = game:GetService("ReplicatedStorage"):WaitForChild("Duplicate"),
        ["Rocky"] = game:GetService("ReplicatedStorage"):WaitForChild("RockyShoot"),
        ["Excavator"] = game:GetService("ReplicatedStorage"):WaitForChild("Excavator"),
        ["Baller"] = game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"),
        ["Duelist"] = game:GetService("ReplicatedStorage"):WaitForChild("DuelistAbility"),
        ["woah"] = game:GetService("ReplicatedStorage"):WaitForChild("VineThud"),
        ["Tableflip"] = game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"),
        ["Reverse"] = game:GetService("ReplicatedStorage"):WaitForChild("ReverseAbility"),
        ["Engineer"] = game:GetService("ReplicatedStorage"):WaitForChild("Sentry"),
        ["Adios"] = game:GetService("ReplicatedStorage"):WaitForChild("AdiosActivated"),
        ["STOP"] = game:GetService("ReplicatedStorage"):WaitForChild("STOP"),
        ["Diamond"] = game:GetService("ReplicatedStorage"):WaitForChild("Rockmode"),
        ["ZZZZZZZ"] = game:GetService("ReplicatedStorage"):WaitForChild("ZZZZZZZSleep"),
        ["Brick"] = game:GetService("ReplicatedStorage"):WaitForChild("lbrick"),
        ["Flash"] = game:GetService("ReplicatedStorage"):WaitForChild("FlashTeleport"),
        ["Swapper"] = game:GetService("ReplicatedStorage"):WaitForChild("SLOC"),
        ["Ghost"] = game:GetService("ReplicatedStorage"):WaitForChild("Ghostinvisibilityactivated"),
        ["Thanos"] = game:GetService("ReplicatedStorage"):WaitForChild("Illbeback"),
        ["Za Hando"] = game:GetService("ReplicatedStorage"):WaitForChild("Erase"),
        ["Fort"] = game:GetService("ReplicatedStorage"):WaitForChild("Fortlol"),
        ["Magnet"] = game:GetService("ReplicatedStorage"):WaitForChild("MagnetS"),
        ["Space"] = game:GetService("ReplicatedStorage"):WaitForChild("ZeroGSound"),
        ["Mail"] = game:GetService("ReplicatedStorage"):WaitForChild("MailSend"),
        ["Golden"] = game:GetService("ReplicatedStorage"):WaitForChild("Goldify"), 
        ["Shield"] = game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"),
        ["Ping Pong"] = game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"),
        ["Cloud"] =  game:GetService("ReplicatedStorage"):WaitForChild("CloudAbility")
        }
    local function glove(Name)
        current = game.Players.LocalPlayer.leaderstats.Glove.Value
        SearchedGlove = game:GetService("Workspace").Lobby:FindFirstChild(Name).ClickDetector
        fireclickdetector(SearchedGlove)
        if Name == "Excavator" then
            GloveAbilitys[Name]:InvokeServer()
        elseif Name == "Default" then
            GloveAbilitys[Name]:FireServer("ReplicatedSound")
        else
            GloveAbilitys[Name]:FireServer(true)
        end
        fireclickdetector(Workspace.Lobby[current].ClickDetector)
    end
    local function getGlove()
        return game.Players.LocalPlayer.leaderstats.Glove.Value
    end
    spawn(function()
        while true do
            task.wait()
            if char then
                oldt = char:FindFirstChild(glove)
            end
        end
    end)


    local function cloudsteal()
        for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v:FindFirstChild("VehicleSeat") and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                v.Seat.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end
    end
    spawn(function()
        while true do
            wait()
            if Players.LocalPlayer.Character then
                char = Players.LocalPlayer.Character
            end
        end
    end)


    function getRoot(char)
        local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or
        char:FindFirstChild('UpperTorso')
        return rootPart
    end

    local function invisg()
        invist = oldt:Clone()
        invist.Parent = Players.LocalPlayer.Backpack
        invist.Name = "Invisible" .. glove
        char:FindFirstChild(glove):Destroy()
    end




    IYMouse = game.Players.LocalPlayer:GetMouse()
    FLYING = false
    iyflyspeed = spedddy
    function sFLY(vfly)
        repeat wait() until Players.LocalPlayer and Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character) and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

        local T = getRoot(Players.LocalPlayer.Character)
        local CONTROL = { F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0 }
        local lCONTROL = { F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0 }
        local SPEED = 0

        local function FLY()
            FLYING = true
            local BG = Instance.new('BodyGyro')
            local BV = Instance.new('BodyVelocity')
            BG.P = 9e4
            BG.Parent = T
            BV.Parent = T
            BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            BG.cframe = T.CFrame
            BV.velocity = Vector3.new(0, 0, 0)
            BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
            task.spawn(function()
                repeat
                    wait()
                    if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
                        SPEED = 50
                    elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
                        SPEED = 0
                    end
                    if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
                        BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) *
                        SPEED
                        lCONTROL = { F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R }
                    elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
                        BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) *
                        SPEED
                    else
                        BV.velocity = Vector3.new(0, 0, 0)
                    end
                    BG.cframe = workspace.CurrentCamera.CoordinateFrame
                until not FLYING
                CONTROL = { F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0 }
                lCONTROL = { F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0 }
                SPEED = 0
                BG:Destroy()
                BV:Destroy()
                if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
                    Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
                end
            end)
        end
        flyKeyDown = IYMouse.KeyDown:Connect(function(KEY)
            if KEY:lower() == 'w' then
                CONTROL.F = (vfly and spedddy or iyflyspeed)
            elseif KEY:lower() == 's' then
                CONTROL.B = -(vfly and spedddy or iyflyspeed)
            elseif KEY:lower() == 'a' then
                CONTROL.L = -(vfly and spedddy or iyflyspeed)
            elseif KEY:lower() == 'd' then
                CONTROL.R = (vfly and spedddy or iyflyspeed)
            elseif QEfly and KEY:lower() == 'e' then
                CONTROL.Q = (vfly and spedddy or iyflyspeed) * 2
            elseif QEfly and KEY:lower() == 'q' then
                CONTROL.E = -(vfly and spedddy or iyflyspeed) * 2
            end
            pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
        end)
        flyKeyUp = IYMouse.KeyUp:Connect(function(KEY)
            if KEY:lower() == 'w' then
                CONTROL.F = 0
            elseif KEY:lower() == 's' then
                CONTROL.B = 0
            elseif KEY:lower() == 'a' then
                CONTROL.L = 0
            elseif KEY:lower() == 'd' then
                CONTROL.R = 0
            elseif KEY:lower() == 'e' then
                CONTROL.Q = 0
            elseif KEY:lower() == 'q' then
                CONTROL.E = 0
            end
        end)
        FLY()
    end

    function NOFLY()
        FLYING = false
        if flyKeyDown or flyKeyUp then
            flyKeyDown:Disconnect()
            flyKeyUp:Disconnect()
        end
        if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
            Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
        end
        pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
    end

    local function ability()
        fireclickdetector(Workspace.Lobby.Ghost.ClickDetector)
        game:GetService("ReplicatedStorage"):WaitForChild("Ghostinvisibilityactivated"):FireServer()
        fireclickdetector(Workspace.Lobby[game.Players.LocalPlayer.leaderstats.Glove.Value].ClickDetector)
    end


    getgenv()
    Reach = 0
    local Gloves = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/More%20Gloves.lua"))()
    local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
    local Window = Rayfield:CreateWindow({
        Name = "Private Slap Battles Gui",
        LoadingTitle = "Made with love and boredom",
        LoadingSubtitle = "by beautifulusername",
        ConfigurationSaving = {
            Enabled = true,
            FolderName = "Los Lags",
            FileName = "Big Hub"
        },
        KeySystem = false, -- Set this to true to use our key system
        KeySettings = {
            Title = "Sirius Hub",
            Subtitle = "Key System",
            Note = "Join the discord (discord.gg/sirius)",
            SaveKey = true,
            Key = "ABCDEF"
        }
    })
    getgenv()
    amount = 0
    local tab1 = Window:CreateTab("Lagging", nil)
    local tab2 = Window:CreateTab("Abilitys", nil)
    local tab3 = Window:CreateTab("Cloud Manipulation", nil)
    local AwCrash = tab1:CreateButton({
        Name = "Crash Server",
        Callback = function()
            local aw = 0
            while aw <= 10000 do
                game:GetService("ReplicatedStorage"):WaitForChild("Remote Events"):WaitForChild("Respawn"):FireServer()
                aw = aw + 1
            end
        end
    })
    local long = tab1:CreateToggle({
        Name = "Long Lag (press the one key 2 or 3 times for server force reset)",
        CurrentValue = false,
        Flag = "long",
        Callback = function(long)
            local rep = 0
            while rep <= 8 and long == true do
                rep = rep + 1
                key.InputBegan:Connect(function(input)
                    if input.KeyCode == Enum.KeyCode.One then
                        local reset = 0
                        while reset <= 400 and long == true do
                            game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(
                            game.Players.LocalPlayer.Character, true)
                            game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(
                            game.Players.LocalPlayer.Character, false)
                            reset = reset + 1
                        end
                        reset = 0
                    end
                end)
            end
        end
    })
    local middle = tab1:CreateToggle({
        Name = "middle lag (two key, stacks)",
        CurrentValue = false,
        Flag = "middle",
        Callback = function(mid)
            local rep = 0
            while rep <= 4 and mid == true do
                rep = rep + 1
                key.InputBegan:Connect(function(input)
                    if input.KeyCode == Enum.KeyCode.Two then
                        local reset = 0
                        while reset <= 200 and mid == true do
                            game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(
                            game.Players.LocalPlayer.Character, false)
                            reset = reset + 1
                        end
                        reset = 0
                    end
                end)
            end
        end
    })
    local short = tab1:CreateToggle({
        Name = "short lag ( three key, stacks)",
        CurrentValue == false,
        Flag = "short",
        Callback = function(short)
            local rep = 0
            while rep <= 2 and short == true do
                rep = rep + 1
                key.InputBegan:Connect(function(input)
                    if input.KeyCode == Enum.KeyCode.Three then
                        local reset = 0
                        while reset <= 200 and short == true do
                            game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(
                            game.Players.LocalPlayer.Character, false)
                            reset = reset + 1
                        end
                        reset = 0
                    end
                end)
            end
        end
    })
    local flicky = tab1:CreateToggle({
        Name = "flickering lag",
        CurrentValue = false,
        Flag = "flicker",
        Callback = function(Value)
            local rep = 0
            getgenv()
            leflick = Value
            while rep <= 100000 do
                if leflick == false then break end
                rep = rep + 1
                game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(
                game.Players.LocalPlayer.Character, false)
                task.wait()
            end
        end
    })
    local rjlag = tab1:CreateButton({
        Name = "Lag and instant rejoin",
        Callback = function()
            local rj = 0
            while rj <= 10000 do
                game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(
                    game.Players.LocalPlayer.Character, false)
                rj = rj + 1
            end
            wait(6)
            game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
        end
    })
    local rockus = tab1:CreateToggle({
        Name = "Rock Lag",
        CurrentValue = false,
        Flag = "Fuck",
        Callback = function(value)
            local rep = 0
            getgenv()
            cling = value
            while cling do
                task.wait()
                while rep <= 10 do
                    if value == true then
                        rep = rep + 1
                        game:GetService("ReplicatedStorage"):WaitForChild("DeactivateRockmode"):FireServer()
                        game:GetService("ReplicatedStorage"):WaitForChild("Rockmode"):FireServer()
                    end
                end
                rep = 0
            end
        end
    })
    local stop = tab1:CreateButton({
        Name = "Deactivate Rockmode",
        Callback = function()
            game:GetService("ReplicatedStorage"):WaitForChild("DeactivateRockmode"):FireServer()
        end
    })
    local flappy = tab2:CreateToggle({
        Name = "Slap Aura",
        CurrentValue = false,
        Flag = "flab",
        Callback = function(Value)
            SlapAura = Value
            while SlapAura do
                for i, v in pairs(game.Players:GetChildren()) do
                    if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
                        if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("rock") == nil then
                            if v.Character.Head:FindFirstChild("UnoReverseCard") == nil or game.Players.LocalPlayer.leaderstats.Glove == "Error" then
                                Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position)
                                .Magnitude
                                if Magnitude <= Reach then
                                    shared.gloveHits[getGlove()]:FireServer(v.Character:WaitForChild("Head"), true)
                                end
                            end
                        end
                    end
                end
                task.wait()
            end
        end
    })
    local reach = tab2:CreateSlider({
        Name = "Slap Aura Reach",
        Range = { 0, 100 },
        Increment = 1,
        Suffix = "Studs",
        CurrentValue = 20,
        Flag = "Slider1",
        Callback = function(Value)
            while true do
                task.wait()
                Reach = Value
            end
        end
    })
    local cloudsteal = tab2:CreateToggle({
        Name = "Cloudstealer",
        CurrentValue = false,
        Flag = "cloudy",
        Callback = function(cloudy)
            getgenv()
            Cloud = cloudy
            while task.wait() do
                if Cloud == true then
                    cloudsteal()
                end
            end
        end
    })
    local cloud = tab3:CreateButton({
        Name = "Spawn a cloud",
        Callback = function()
            game:GetService("ReplicatedStorage"):WaitForChild("CloudAbility"):FireServer()
        end
    })
    local invis = tab2:CreateButton({
        Name = "Invisibility(Only use in Lobby)",
        Callback = function()
            ability()
        end
    })
    local invisg = tab2:CreateButton({
        Name = "Invis glove",
        Callback = function()
            invisg()
        end
    })
    local csp = tab3:CreateToggle({
        Name = "Speedy Cloud(full credits to Infinite Yield Vehiclefly)",
        CurrentValue = false,
        Flag = "csp",
        Callback = function(fly)
            if fly == true then
                NOFLY()
                wait()
                sFLY(true)
            else
                NOFLY()
            end
        end
    })
    local csps = tab3:CreateSlider({
        Name = "Cloud fly speed",
        Range = { 1, 20 },
        Increment = 1,
        Suffix = "Speed",
        CurrentValue = 1,
        Flag = "CloudSpeed",
        Callback = function(sped)
            getgenv()
            spedddy = 0
            while true do
                task.wait()
                spedddy = sped
            end
        end
    })
    local cfl = tab3:CreateToggle({
        Name = "Cloud Fling",
        CurrentValue = false,
        Flag = "Fling",
        Callback = function(fling)
            if fling == true then
                mycloud.BodyGyro.D = -1000000000000
                wait()
                char.HumanoidRootPart.Anchored = true
            elseif fling == false then
                mycloud.BodyGyro.D = 1000
                char.HumanoidRootPart.Anchored = false
            end
        end
    })
    local ck = tab3:CreateButton({
        Name = "Kick someone using Cloud(the player needs to be in the clouds seat)",
        Callback = function()
            if mycloud ~= nil then
                mycloud.CanTouch = false
                mycloud.CanQuery = false
                local startpos = char.HumanoidRootPart.CFrame
                local newCFrame = CFrame.new(
                    Vector3.new(game:GetService("Workspace").Lobby.brazil.portal.Position.X,
                        game:GetService("Workspace").Lobby.brazil.portal.Position.Y + 2,
                        game:GetService("Workspace").Lobby.brazil.portal.Position.Z)
                ) * CFrame.Angles(0, math.pi, 0)
                for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanTouch = false
                        v.CanQuery = false
                    end
                end
                for i, v in pairs(mycloud:GetDescendants()) do
                    if v:IsA("Part") then
                        v.CanTouch = false
                        v.CanQuery = false
                    end
                end
                for i, x in next, char:GetDescendants() do
                    if x:IsA("BasePart") and not x.Anchored then
                        x.Anchored = true
                    end
                end
                wait()
                char.Humanoid.Sit = false
                char.HumanoidRootPart.CFrame = newCFrame
                wait()
                for i, v in pairs(char:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.Anchored = false
                    end
                end
                wait()
                game:GetService("ReplicatedStorage"):WaitForChild("CloudAbility"):FireServer()
                wait()
                for i = 1, 10 do
                    wait()
                    char.HumanoidRootPart.CFrame = startpos
                end
                game:GetService("ReplicatedStorage"):WaitForChild("CloudAbility"):FireServer()
            end
        end
    })
    local notouch = tab2:CreateButton({
        Name = "CanTouch = false",
        Callback = function()
            for i, v in pairs(Workspace:GetDescendants()) do
                if v:IsA("TouchTransmitter") then
                    v:Destroy()
                end
            end
            for i, v in pairs(char:GetDescendants()) do
                if v:IsA("Part") then
                    v.CanTouch = false
                end
            end
        end
    })
    local imp = tab2:CreateToggle({
        Name = "Imp Spammer",
        CurrentValue = false,
        Flag = "imp",
        Callback = function(oo)
            getgenv()
            imp = oo
            game.RunService.Stepped:Connect(function()
                if imp == true then
                    wait(0.1)
                    ReplicatedStorage.NullAbility:FireServer()
                end
            end)
        end
    })
    local aimp = tab2:CreateToggle({
        Name = "Auto Imp farm",
        CurrentValue = false,
        Flag = "aimp",
        Callback = function(aimp)
            des = aimp
            game.RunService.Stepped:Connect(function()
                wait(1)
                ReplicatedStorage.NullAbility:FireServer()
                for i = 1, 3 do
                    for i, v in pairs(Workspace:GetChildren()) do
                        if v.Name == "Imp" and v:FindFirstChild("Body") then
                            ReplicatedStorage.b:FireServer(v.Body)
                        end
                    end
                end
            end)
        end
    })
    getgenv()created = false
    local bouton = tab2:CreateButton({
        Name = "Create the Ability use Tab",
        Callback = function()
            if created == true then
                return
            else
                local secret = Window:CreateTab("Abilitys you can use", nil)
                local a = secret:CreateButton({
                    Name = "Default",
                    Callback = function()
                        glove("Default")
                    end
                })
                local a1 = secret:CreateButton({
                    Name = "Diamond",
                    Callback = function()
                        glove("Diamond")
                    end
                })
                local a2 = secret:CreateButton({
                    Name = "ZZZZZZZ",
                    Callback = function()
                        glove("ZZZZZZZ")
                    end
                })
                local a3 = secret:CreateButton({
                    Name = "Brick",
                    Callback = function()
                        glove("Brick")
                    end
                })
                local a4 = secret:CreateButton({
                    Name = "Flash",
                    Callback = function()
                        glove("Flash")
                    end
                })
                local a5 = secret:CreateButton({
                    Name = "Ghost",
                    Callback = function()
                        glove("Ghost")
                    end
                })
                local a6 = secret:CreateButton({
                    Name = "Thanos",
                    Callback = function()
                        glove("Thanos")
                    end
                })
                local a7 = secret:CreateButton({
                    Name = "Za Hando",
                    Callback = function()
                        glove("Za Hando")
                    end
                })
                local a8 = secret:CreateButton({
                    Name = "Fort",
                    Callback = function()
                        glove("Fort")
                    end
                })
                local a9 = secret:CreateButton({
                    Name = "Magnet",
                    Callback = function()
                        glove("Magnet")
                    end
                })
                local a10 = secret:CreateButton({
                    Name = "Pusher",
                    Callback = function()
                        glove("Pusher")
                    end
                })
                local a11 = secret:CreateButton({
                    Name = "Space",
                    Callback = function()
                        glove("Space")
                    end
                })
                local a12 = secret:CreateButton({
                    Name = "Mail",
                    Callback = function()
                        glove("Mail")
                    end
                })
                local a13 = secret:CreateButton({
                    Name = "Golden",
                    Callback = function()
                        glove("Golden")
                    end
                })
                local a15 = secret:CreateButton({
                    Name = "Cheeky",
                    Callback = function()
                        glove("Cheeky")
                    end
                })
                local a16 = secret:CreateButton({
                    Name = "Replica",
                    Callback = function()
                        glove("Replica")
                    end
                })
                local a17 = secret:CreateButton({
                    Name = "Defense",
                    Callback = function()
                        glove("Defense")
                    end
                })
                local a18 = secret:CreateButton({
                    Name = "Reverse",
                    Callback = function()
                        glove("Reverse")
                    end
                })
                local a119 = secret:CreateButton({
                    Name = "Duelist",
                    Callback = function()
                        glove("Duelist")
                    end
                })
                local a20 = secret:CreateButton({
                    Name = "woah",
                    Callback = function()
                        glove("woah")
                    end
                })
                local b = secret:CreateButton({
                    Name = "Adios",
                    Callback = function()
                        glove("Adios")
                    end
                })
                local b1 = secret:CreateButton({
                    Name = "Engineer",
                    Callback = function()
                        glove("Engineer")
                    end
                })
                local b2 = secret:CreateButton({
                    Name = "Rocky",
                    Callback = function()
                        glove("Rocky")
                    end
                })
                local b3 = secret:CreateButton({
                    Name = "STOP",
                    Callback = function()
                        glove("STOP")
                    end
                })
                local b4 = secret:CreateButton({
                    Name = "Tableflip",
                    Callback = function()
                        glove("Tableflip")
                    end
                })
                local f3 = secret:CreateButton({
                    Name = "Shield",
                    Callback = function()
                        glove("Shield")
                    end
                })
                local ba3 = secret:CreateButton({
                    Name = "Ping Pong",
                    Callback = function()
                        glove("Ping Pong")
                    end
                })
                local db3 = secret:CreateButton({
                    Name = "Baller",
                    Callback = function()
                        glove("Baller")
                    end
                })
                local vb3 = secret:CreateButton({
                    Name = "Excavator",
                    Callback = function()
                        glove("Excavator")
                    end
                })
                local a14 = secret:CreateButton({
                    Name = "Destroy the Ability use tab",
                    Callback = function()
                        created = false
                        game.CoreGui.Rayfield.Main.Elements:FindFirstChild("Abilitys you can use"):Destroy()
                        game.CoreGui.Rayfield.Main.TabList:FindFirstChild("Abilitys you can use"):Destroy()
                    end
                })
                created = true
            end
        end
    })
end
