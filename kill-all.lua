-- Get the required service and modules
local replicatedStorage = game:GetService("ReplicatedStorage")
local typableNetwork = replicatedStorage:WaitForChild("Modules"):WaitForChild("TypableNetwork"):WaitForChild("6")

-- Function to run the command for all players in the game
local function runCommandForAllPlayers()
    for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
        local playerInstance = workspace:FindFirstChild(player.Name)
        if playerInstance then
            local args = {
                [1] = playerInstance
            }
            
            -- Invoke the server with the arguments
            typableNetwork:InvokeServer(unpack(args))
            print("Command executed for:", player.Name)
        else
            warn("Player not found in workspace:", player.Name)
        end
    end
end

runCommandForAllPlayers()
