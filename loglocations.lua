local function searchForProximityPrompts(parent)
    local player = game.Players.LocalPlayer
    if not player then return end

    local function round(value, numDecimalPlaces)
        return math.round(value * 10^numDecimalPlaces) / 10^numDecimalPlaces
    end

    for _, descendant in pairs(parent:GetDescendants()) do
        if descendant:IsA("ProximityPrompt") then
            local a = descendant.Parent
            if a and a:IsA("Attachment") then
                local b = a.Parent
                if b and b:IsA("BasePart") then
                    local c = b.Parent
                    if c.Name == "PointTask" and c.Name ~= "TravelTask" and c.Parent.Name ~= "TravelTask" then
                        local lightContainer = b:FindFirstChild("LightContainer")
                        if lightContainer then
                            local pointLight = lightContainer:FindFirstChildOfClass("PointLight")
                            if pointLight then
                                local roundedBrightness = round(pointLight.Brightness, 2)
                                if roundedBrightness == 0.28 then
                                    player.Character:PivotTo(CFrame.new(b.Position))
                                    wait(1)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

searchForProximityPrompts(workspace)
