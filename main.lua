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

Tab:Button({
    Text = "Kill NPCs",
    Callback = function(self)
        for _, c in ipairs(workspace:GetChildren()) do
            if c.Name == "PlayerCharacter" then
                c:Destroy()
            end
        end
    end,
    BackgroundTransparency = 0,
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

Tab:Button({
    Text = "Do Tasks",
    Callback = function(self)
        for _, d in pairs(workspace:GetDescendants()) do
            if d:IsA("ProximityPrompt") then
                local a = d.Parent
                if a and a:IsA("Attachment") then
                    local b = a.Parent
                    if b and b:IsA("BasePart") then
                        local l = b:FindFirstChild("LightContainer")
                        if l then
                            local p = l:FindFirstChildOfClass("PointLight")
                            if p then
                                local rb = math.round(p.Brightness * 10^2) / 10^2
                                if rb == 0.28 and p.Color ~= Color3.fromRGB(137, 255, 111) then
                                    local targetPosition = b.Position + Vector3.new(0, 2.5, 0)
                                    game.Players.LocalPlayer.Character:PivotTo(CFrame.new(targetPosition))
                                    wait(0.5)
                                    local pp = d
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game)
                                    wait(pp.HoldDuration or 2)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.E, false, game)
                                    wait(1)
                                end
                            end
                        end
                    end
                end
            end
        end
    end,
    BackgroundTransparency = 0,
})
