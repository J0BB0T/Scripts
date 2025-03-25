game.Workspace.Criminals[game:GetService("Players").LocalPlayer.Name].Stamina.Value = 2 ^ 60
game:GetService("UserInputService").InputBegan:Connect(function(inp, proc)
    if proc then return end
    if inp.KeyCode == Enum.KeyCode.P then
        for i,v in pairs(game:GetService("Workspace").Bags:GetDescendants()) do
            if v.Name == 'MoneyBag' then
                v.CFrame = game:GetService("Workspace").BagSecuredArea.FloorPart.CFrame * CFrame.new(0,0,10)
            end
        end
    end
end)
game:GetService("StarterGui"):SetCore("SendNotification", {
  ["Title"] = "Bags To Van",
  ["Text"] = "Press P To Activate",
  ["Duration"] = 5
})
