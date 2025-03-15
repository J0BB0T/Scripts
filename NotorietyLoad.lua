game.Workspace.Criminals[game:GetService("Players").LocalPlayer.Name].Stamina.Value = 2 ^ 60
game:GetService("UserInputService").InputBegan:Connect(function(inp, proc)
    if proc then return end
    if inp.KeyCode == Enum.KeyCode.P then
        for i, v in game:GetService("Workspace").Bags:GetChildren() do
            v:MoveTo(game:GetService("Workspace").BagSecuredArea.FloorPart.Position)
        end
    end
end)
game:GetService("StarterGui"):SetCore("SendNotification", {
  ["Title"] = "Bags To Van",
  ["Text"] = "Press P To Activate",
  ["Duration"] = 5
}
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/EchoVanta/Scripts/refs/heads/main/Notoriety/Main.luau"))();
