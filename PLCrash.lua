local Gun = function(args)
    workspace.Remote.ItemHandler:InvokeServer({ Position = LocalPlayer.Character.Head.Position, Parent = workspace.Prison_ITEMS.giver:FindFirstChild(args) or workspace.Prison_ITEMS.single:FindFirstChild(args) })
end

local function deprint(text)
  print("Debug: ".. text)
end

local CrashMethod = function(typeofcrash, args)
    if typeofcrash == "servercrash" then
        if #Teams.Guards:GetPlayers() < 8 then
            TeamTo("guard")
        else
            Gun("M9")
            task.wait()
        end
        local SchoolShooter = {}
        local da1, da2 = LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position, workspace:FindFirstChildWhichIsA("BasePart").Position
        for i, v in pairs(Players:GetPlayers()) do
            SchoolShooter[#SchoolShooter + 1] = {
                Hit = workspace:FindFirstChildWhichIsA("Part"),
                Cframe = CFrame.new(),
                Distance = 69999,
                RayObject = Ray.new(da1, da2),
            }
        end
        local total = 5024 - #SchoolShooter
        local gun = LocalPlayer.Backpack:FindFirstChild("M9") or LocalPlayer.Character:FindFirstChild("M9")
        task.spawn(function()
            for i = 1, total do
                Rstorage.ShootEvent:FireServer({}, gun)
            end
            task.delay(15, function()
                deprint("Debug_Crash events done")
                while Rstep:Wait() do
                    Rstorage.ShootEvent:FireServer(SchoolShooter, gun)
                end
            end)
            while task.wait() do
                LocalPlayer.CharacterAdded:Wait()
                wait()
                gun = LocalPlayer.Backpack:FindFirstChild("M9")
                if not gun then
                    Gun("M9")
                    task.wait()
                    gun = LocalPlayer.Backpack:FindFirstChild("M9")
                end
            end
        end)
    elseif typeofcrash == "lastresort" then
        local america = {}
        for i, v in pairs(Players:GetPlayers()) do
            if v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                america[#america + 1] = {
                    Hit = v.Character:FindFirstChildWhichIsA("BasePart"),
                    Cframe = v.Character.HumanoidRootPart.CFrame,
                    Distance = math.huge,
                    RayObject = Ray.new(Vector3.new(), Vector3.new()),
                }
            end
        end
        task.spawn(function()
            while task.wait(0.4) do
                pcall(function()
                    local new = LocalPlayer.Backpack:FindFirstChild("Remington 870") or LocalPlayer.Character:FindFirstChild("Remington 870")
                    if not new then
                        Gun("Remington 870")
                        new = LocalPlayer.Backpack:FindFirstChild("Remington 870")
                    end
                    for i = 1, 225 do
                        Rstorage.ShootEvent:FireServer(america, new)
                    end
                    task.wait(1)
                end)
            end
        end)
    elseif typeofcrash == "crashkill" then
        if LocalPlayer.TeamColor == args.TeamColor then
            if args.TeamColor == BrickColor.new("Bright orange") then
                TeamTo("criminal")
            else
                TeamTo("inmate")
            end
            RTPing()
        end
        repeat
            Stepped:Wait()
        until args.Character and not args.Character:FindFirstChildWhichIsA("ForceField")
        local arrrr = LocalPlayer.Backpack:FindFirstChild("M9") or LocalPlayer.Character:FindFirstChild("M9")
        if not arrrr then
            Gun("M9")
            arrrr = LocalPlayer.Backpack:FindFirstChild("M9")
        end
        local ra = {}
        for i = 1, 10 do
            ra[#ra + 1] = {
                Hit = args.Character:FindFirstChildWhichIsA("BasePart"),
                Cframe = args.Character:FindFirstChildWhichIsA("BasePart").CFrame,
                Distance = math.huge,
                RayObject = Ray.new(Vector3.new(), Vector3.new()),
            }
        end
        for i = 1, 2000 do
            Rstorage.ShootEvent:FireServer(ra, arrrr)
        end
    elseif typeofcrash == "serverlag" then
        if States.LaggingServer then
            States.LaggingServer = false
            wait(0.4)
        end
        States.LaggingServer = true
        task.spawn(function()
            Gun("Remington 870")
            local ohio = {}
            local amount = args or 69
            for i = 1, 101 do
                ohio[#ohio + 1] = {
                    Hit = LocalPlayer.Character:FindFirstChildWhichIsA("BasePart"),
                    Cframe = CFrame.new(),
                    Distance = math.huge,
                    RayObject = Ray.new(Vector3.new(), Vector3.new()),
                }
            end
            while States.LaggingServer do
                task.wait()
                pcall(function()
                    Gun("Remington 870")
                end)
                local guntouse = LocalPlayer.Backpack:FindFirstChild("Remington 870") or LocalPlayer.Character:FindFirstChild("Remington 870")
                if guntouse then
                    for i = 1, amount do
                        Rstorage.ShootEvent:FireServer(ohio, guntouse)
                    end
                end
                task.wait(1.14)
            end
            ohio = nil
            amount = nil
        end)
    elseif typeofcrash == "serverspike" then
        Gun("Remington 870")
        task.wait()
        local iranoutofideas = {}
        local strength = args or 69
        local amount = 100 + math.random(1, 15)
        for i = 1, amount do
            iranoutofideas[#iranoutofideas + 1] = {
                Hit = workspace:FindFirstChildWhichIsA("Part"),
                Cframe = CFrame.new(),
                Distance = math.huge,
                RayObject = Ray.new(Vector3.new(), Vector3.new()),
            }
        end
        local remin = LocalPlayer.Backpack:FindFirstChild("Remington 870") or LocalPlayer.Character:FindFirstChild("Remington 870")
        for i = 1, strength do
            Rstorage.ShootEvent:FireServer(iranoutofideas, remin)
        end
    elseif typeofcrash == "timeout" then
        Gun("AK-47")
        task.wait()
        local thegun = LocalPlayer.Backpack:FindFirstChild("AK-47") or LocalPlayer.Character:FindFirstChild("AK-47")
        local mcdofriedchicken = {}
        local mc, jb = workspace:FindFirstChildWhichIsA("BasePart"), workspace:FindFirstChildOfClass("Part")
        for i = 1, 100 do
            mcdofriedchicken[#mcdofriedchicken + 1] = {
                Hit = mc,
                Cframe = CFrame.new(mc.Position, jb.Position) * CFrame.new(0, 0, math.random(69, 699999)),
                Distance = (mc.Position - jb.Position).Magnitude,
                RayObject = Ray.new(mc.Position, (jb.Position - mc.Position).unit * 6999999),
            }
        end
        task.spawn(function()
            while task.wait(0.03) do
                pcall(function()
                    if not thegun then
                        Gun("AK-47")
                        task.wait()
                        thegun = LocalPlayer.Backpack:FindFirstChild("AK-47")
                    end
                    Rstorage.ShootEvent:FireServer(mcdofriedchicken, thegun)
                end)
            end
        end)
    elseif typeofcrash == "tasercrash" then
        if LocalPlayer.TeamColor ~= BrickColor.new("Bright blue") and #Teams.Guards:GetPlayers() == 8 then
            Notif("Error", "Guards team full!")
            return
        end
        local tempo = {}
        local lpos = LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position
        for i, v in pairs(Players:GetPlayers()) do
            if v and v.Character then
                local vpos = v.Character:FindFirstChild("HumanoidRootPart").Position
                tempo[#tempo + 1] = {
                    Hit = v.Character:FindFirstChildWhichIsA("BasePart"),
                    Cframe = CFrame.new(lpos, vpos),
                    Distance = math.huge,
                    RayObject = Ray.new(vpos, (lpos - vpos).unit * 69999),
                }
            end
        end
        task.spawn(function()
            while task.wait() do
                local gun = LocalPlayer.Backpack:FindFirstChild("Taser") or LocalPlayer.Character:FindFirstChild("Taser")
                if not gun then
                    TeamTo("guard")
                end
                Rstorage.ShootEvent:FireServer(tempo, gun)
                task.spawn(function()
                    if math.random(1, 69) == 69 then
                        Rstorage.ReloadEvent:FireServer(gun)
                    end
                end)
            end
        end)
    elseif typeofcrash == "timestop" then
        local thegun = LocalPlayer.Backpack:FindFirstChild("Remington 870") or LocalPlayer.Character:FindFirstChild("Remington 870")
        if not thegun then
            Gun("Remington 870")
            local aughhh = waitfor(LocalPlayer.Backpack, "Remington 870", 69)
            thegun = aughhh
        end
        task.spawn(function()
            while States.StoppingTime do
                task.wait()
                if LocalPlayer.Backpack and not (LocalPlayer.Backpack:FindFirstChild("Remington 870") or LocalPlayer.Character:FindFirstChild("Remington 870")) then
                    RTPing()
                    pcall(function()
                        Gun("Remington 870")
                    end)
                    thegun = waitfor(LocalPlayer.Backpack, "Remington 870", 69)
                end
                for i = 1, 69 do
                    Rstorage.ShootEvent:FireServer({
                        [1] = {},
                    }, thegun)
                end
                task.wait(4.5)
                RTPing()
            end
        end)
    elseif typeofcrash == "itemlag" then
        AllItems()
        task.wait()
        LAction("unequip")
        local inter = args or 69
        local crashing = true
        do
            local g1, g2, g3 = LocalPlayer.Backpack:FindFirstChild("M9"), LocalPlayer.Backpack:FindFirstChild("Remington 870"), LocalPlayer.Backpack:FindFirstChild("AK-47")
            local i1, i2 = LocalPlayer.Backpack:FindFirstChild("Hammer"), LocalPlayer.Backpack:FindFirstChild("Crude Knife")
            local o1, o2 = LocalPlayer.Backpack:FindFirstChild("Dinner") or LocalPlayer.Backpack:FindFirstChild("Breakfast") or LocalPlayer.Backpack:FindFirstChild("Lunch"), LocalPlayer.Backpack:FindFirstChild("M4A1")
            g1.Grip = g1.Grip * CFrame.new(0, math.random(1, 69), 0)
            g1.Parent = LocalPlayer.Character
            g2.Grip = g2.Grip * CFrame.new(0, math.random(1, 69), 0)
            g2.Parent = LocalPlayer.Character
            g3.Grip = g3.Grip * CFrame.new(0, math.random(1, 69), 0)
            g3.Parent = LocalPlayer.Character
            if i1 and i2 then
                i1.Grip = i1.Grip * CFrame.new(0, math.random(1, 69), 0)
                i1.Parent = LocalPlayer.Character
                i2.Grip = i2.Grip * CFrame.new(0, math.random(1, 69), 0)
                i2.Parent = LocalPlayer.Character
            end
            if o2 then
                o2.Grip = o2.Grip * CFrame.new(0, math.random(1, 69), 0)
                o2.Parent = LocalPlayer.Character
            end
            if o1 then
                o1.Grip = o1.Grip * CFrame.new(0, math.random(1, 69), 0)
                o1.Parent = LocalPlayer.Character
            end
        end
        task.delay(inter, function()
            crashing = nil
        end)
        while crashing do
            for i, v in pairs(LocalPlayer.Character:GetChildren()) do
                if v:IsA("Tool") then
                    v.Grip = v.Grip * CFrame.Angles(0, math.rad(8), 0)
                    v.Parent = LocalPlayer.Backpack
                    v.Parent = LocalPlayer.Character
                end
            end
            Rstep:Wait()
        end
        wait(1)
        LAction("unequip")
    elseif typeofcrash == "forcecrash" then
        local tempe = {}
        local augh = Ray.new(Vector3.new(0, 0, 0), Vector3.new(math.huge, math.huge, math.huge))
        local lp = LocalPlayer.Character.HumanoidRootPart.CFrame
        for i = 1, 100000 do
            tempe[#tempe + 1] = {
                Cframe = lp,
                Distance = 9e9,
                RayObject = augh,
            }
        end
        task.wait(0.03)
        for i, v in pairs(Players:GetPlayers()) do
            if v.Character then
                for _, vv in next, v.Character:GetChildren() do
                    if vv:IsA("BasePart") then
                        tempe[#tempe + 1] = {
                            Cframe = vv.CFrame,
                            Distance = math.huge,
                            RayObject = augh,
                        }
                    end
                end
            end
        end
        Hbeat:Wait()
        Gun("AK-47")
        Gun("M9")
        if not LocalPlayer.Character or LocalPlayer.Character.Humanoid.Health == 0 then
            Toggles.AutoRespawn = false
            LocalPlayer.CharacterAdded:Wait()
            if waitfor(LocalPlayer.Character, "HumanoidRootPart", 5) then
                deprint("Debug_Forcecrash died.")
            end
            Gun("AK-47")
            Gun("M9")
        end
        task.wait()
        local gyat = LocalPlayer.Backpack:FindFirstChild("AK-47") or LocalPlayer.Character:FindFirstChild("AK-47")
        local mm = LocalPlayer.Backpack:FindFirstChild("M9") or LocalPlayer.Character:FindFirstChild("M9")
        Rstorage.ShootEvent:FireServer({
            [1] = {
                Cframe = CFrame.new(1, 1, 20000),
                Distance = math.huge,
                RayObject = augh,
                PLA = true,
                MSG = "repeat while true do end until nil",
            },
            [2] = {
                Cframe = CFrame.new(math.huge, math.huge, math.huge),
                Distance = math.huge,
                RayObject = augh,
            },
            [3] = {
                Distance = math.huge,
                RayObject = augh,
            },
        }, mm)
        if gyat then
            LAction("equip", mm)
            Rstorage.ShootEvent:FireServer(tempe, gyat)
            task.delay(10, function()
                if RTPing() then
                    LAction("unequip")
                end
                Rstorage.ReloadEvent:FireServer(gyat)
                Rstorage.ReloadEvent:FireServer(mm)
            end)
        else
            Notif("Error", "An error occured while force-crashing.")
        end
        tempe = nil
    elseif typeofcrash == "formidicrash" then
        Notif("NOTICE!!! Connect to 5Ghz or ethernet", "Formidicrash may disconnect you because packet size is too large", 10)
        wait(0.1)
        if not SavedArgs.LoadedCrashEvents then
            local Root = LocalPlayer.Character:WaitForChild("HumanoidRootPart")
            Notif("Please wait...", "Loading crash events. (Client will be rate limited!)")
            SavedArgs.LoadedCrashEvents = true
            local deray = Ray.new(Vector3.new(0, 0, 0), Vector3.new(math.huge, math.huge, math.huge))
            for i = 1, 100000 do
                local lp, bp = Root.Position, workspace:FindFirstChildOfClass("Part").Position + Vector3.new(math.random(1, 69), math.random(1, 69), math.random(1, 69))
                Saved.PCEvents[#Saved.PCEvents + 1] = {
                    Cframe = CFrame.new(bp, lp) * CFrame.new(0, 0, -(lp - bp).Magnitude / 2),
                    Distance = 9e9,
                    RayObject = deray,
                }
            end
            task.wait()
            Hbeat:Wait()
            local ptable = {}
            for i, v in next, Players:GetPlayers() do
                if v.Character then
                    for _, vv in pairs(v.Character:GetChildren()) do
                        if vv:IsA("BasePart") or vv:IsA("Part") then
                            ptable[#ptable + 1] = vv
                        end
                    end
                end
            end
            repeat
                for _, v in next, ptable do
                    Saved.PCEvents[#Saved.PCEvents + 1] = {
                        Cframe = v.CFrame,
                        Distance = math.huge,
                        RayObject = deray,
                    }
                    if Saved.PCEvents[124900] then
                        break
                    end
                end
            until Saved.PCEvents[124900]
            task.wait(0.05)
            Hbeat:Wait()
        end
        if waitfor(LocalPlayer.Character, "HumanoidRootPart", 1) then
            AllGuns()
            AllGuns()
            LAction("unequip")
            task.wait()
            local g1, g2, g3 = LocalPlayer.Backpack:FindFirstChild("AK-47"), LocalPlayer.Backpack:FindFirstChild("M9"), LocalPlayer.Backpack:FindFirstChild("Remington 870")
            Rstorage.ShootEvent:FireServer({ [1] = { PLA = true, Cframe = CFrame.new(1, 1, 20000), MSG = "while true do end" } }, g2)
            wait()
            Rstorage.ShootEvent:FireServer(Saved.PCEvents, g1)
            Rstorage.ShootEvent:FireServer(Saved.PCEvents, g2)
            Rstorage.ShootEvent:FireServer(Saved.PCEvents, g3)
            Rstorage.ShootEvent:FireServer(Saved.PCEvents, g3)
            Rstorage.ShootEvent:FireServer(Saved.PCEvents, g1)
            deprint("Debug_ShootEvent completed")
            wait(15)
            Rstorage.ReloadEvent:FireServer(g1)
            Rstorage.ReloadEvent:FireServer(g2)
            Rstorage.ReloadEvent:FireServer(g3)
        else
            Notif("Error!", "There was a problem while crashing, please try again!")
        end
    elseif typeofcrash == "eventlag" then
        local tmp = Toggles.AutoRespawn
        States.Flying = false
        Toggles.AutoRespawn = false
        local amount = args or 1000
        for i = 1, amount do
            task.spawn(function()
                workspace.Remote.TeamEvent:FireServer("Bright orange")
            end)
        end
        task.wait(3)
        task.wait(3)
        task.wait(3)
        Toggles.AutoRespawn = tmp
    elseif typeofcrash == "eventcrash" then
        Connections.CharacterAdded:Disconnect()
        Connections.CharacterAdded = nil
        Unloaded = true
        Toggles.AutoRespawn = nil
        settings():GetService("NetworkSettings").IncomingReplicationLag = math.huge
        local rem = workspace.Remote.TeamEvent
        for i = 1, 69420 do
            coroutine.wrap(function()
                rem:FireServer("Bright orange")
            end)()
        end
        game:GetService("RunService").RenderStepped:Connect(function()
            rem:FireServer("Bright orange")
        end)
    elseif typeofcrash == "soundlag" then
        local amount = args or 6999
        local event, sound = Rstorage.SoundEvent, LocalPlayer.Character.Head.punchSound
        for i = 1, amount do
            coroutine.wrap(function()
                event:FireServer(sound)
            end)()
        end
    end
end

local states = {}

task.spawn(CrashMethod, "eventlag")
task.spawn(CrashMethod, "servercrash")
task.spawn(CrashMethod, "serverlag")
task.spawn(CrashMethod, "timeout")
task.spawn(CrashMethod, "tasercrash")
task.spawn(CrashMethod, "timestop")
task.spawn(CrashMethod, "itemlag")
task.spawn(CrashMethod, "forcecrash")
task.spawn(CrashMethod, "soundlag")
