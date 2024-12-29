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
        -- Replace this with the logic to kill NPCs
        print("Kill NPCs button clicked!")
    end,
    BackgroundTransparency = 0,  -- No transparency for the button background
})

-- Create a button to kill players
Tab:Button({
    Text = "Kill Players",  -- Button label
    Callback = function(self)
        -- Replace this with the logic to kill players
        print("Kill Players button clicked!")
    end,
    BackgroundTransparency = 0,  -- No transparency for the button background
})
