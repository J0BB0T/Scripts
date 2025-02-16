local place_Holder = nil

for i,v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
    if v.Name == "InflictTarget" then
        place_Holder = v
    end
end;

while task.wait(1) do
        for i=1, #getgenv().LoopKill do
            pcall(function()
        v = getgenv().LoopKill[i]
place_Holder:FireServer(v.Character.Humanoid,v.Character.UpperTorso,math.huge,nil,0,false)
end)
end
end
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Some shit game")

local b = w:CreateFolder("Main")

b:Button("Kill All",function()
local place_Holder = {}

for i,v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
    if v.Name == "InflictTarget" then
        place_Holder = v
    end
end;

for i=2,#game.Players:GetPlayers() do
pcall(function()
local v=game.Players:GetPlayers()[i]
place_Holder:FireServer(v.Character.Humanoid,v.Character.UpperTorso,math.huge,nil,0,false)
end)
end;
end)

b:Button("God Mode",function()
local place_Holder = {}

for i,v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
    if v.Name == "InflictTarget" then
        place_Holder = v
    end
end;


pcall(function()
place_Holder:FireServer(game.Players.LocalPlayer.Character.Humanoid,game.Players.LocalPlayer.Character.UpperTorso,-math.huge,nil,0,false)
end)


for i,v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
    if v.Name == "InflictTarget" then
        place_Holder = v
    end
end;


pcall(function()
place_Holder:FireServer(game.Players.LocalPlayer.Character.Humanoid,game.Players.LocalPlayer.Character.UpperTorso,-math.huge,nil,0,false)
end)

local Aimbot = loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V3/main/src/Aimbot.lua"))()
Aimbot.Load()
