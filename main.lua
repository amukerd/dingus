-- Load the ImGui library using loadstring
local ImGui = loadstring(game:HttpGet('https://github.com/depthso/Roblox-ImGUI/raw/main/ImGui.lua'))()

-- Create a window with specified properties
local Window = ImGui:CreateWindow({
    Title = "Action Window",  -- Window title
    Size = UDim2.fromOffset(350, 300),  -- Window size (350x300)
    Position = UDim2.new(0, 0, 0, 0),  -- Position at the top-left of the screen
    BackgroundTransparency = 0,  -- No transparency for the window background
})

-- Create a tab to hold the buttons
local Tab = Window:CreateTab({
    Name = "Actions",
    Visible = true,
})

-- Create a button to kill NPCs
Tab:Button({
    Text = "Kill NPCs",  -- Button label
    Callback = function(self)
        for _, c in ipairs(workspace:GetChildren()) do
            if c.Name == "PlayerCharacter" then
                c:Destroy()
            end
        end
    end,
    BackgroundTransparency = 0,  -- No transparency for the button background
})

Tab:Button({
    Text = "Kill Players",
    Callback = function(self)
        for _, p in ipairs(game:GetService("Players"):GetPlayers()) do
            local a = {[1] = workspace:FindFirstChild(p.Name)}
            game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("TypableNetwork"):WaitForChild("6"):InvokeServer(unpack(a))
        end
    end,
    BackgroundTransparency = 0,
})
