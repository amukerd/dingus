local rs = game:GetService("ReplicatedStorage")

local function r()
    for _, p in ipairs(game:GetService("Players"):GetPlayers()) do
        local pi = workspace:FindFirstChild(p.Name)
        if pi then
            local a = {
                [1] = pi
            }
            
            rs:WaitForChild("Modules"):WaitForChild("TypableNetwork"):WaitForChild("6"):InvokeServer(unpack(a))
        end
    end
end

r()
