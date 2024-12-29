local function findPlayerModels()
    local localPlayerName = game.Players.LocalPlayer.Name

    for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
        local playerName = player.Name
        if playerName ~= localPlayerName then
            for _, item in pairs(workspace:GetDescendants()) do
                if item:IsA("Model") and item.Name == playerName then
                    local ghost = item:FindFirstChild("Ghost")
                    local rig = item:FindFirstChild("Rig")
                    local revolver = rig and rig:FindFirstChild("Revolver")

                    if not ghost and not revolver then
                        local highlight = Instance.new("Highlight")
                        highlight.Name = "PlayerHighlight"
                        highlight.Adornee = item
                        highlight.FillColor = Color3.fromRGB(255, 0, 0)
                        highlight.FillTransparency = 0.5
                        highlight.OutlineColor = Color3.fromRGB(255, 0, 0)
                        highlight.OutlineTransparency = 0
                        highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        highlight.Parent = item
                    end
                end
            end
        end
    end
end

findPlayerModels()
