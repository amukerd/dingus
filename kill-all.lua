local function r()
    for _, p in ipairs(game:GetService("Players"):GetPlayers()) do
        local a={[1]=workspace:FindFirstChild(p.Name)}
        game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("TypableNetwork"):WaitForChild("6"):InvokeServer(unpack(a))
    end
end
r()
