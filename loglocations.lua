local function z(parent)
    local pl = game.Players.LocalPlayer
    if not pl then return end

    local function r(v, n)
        return math.round(v * 10^n) / 10^n
    end

    for _, d in pairs(parent:GetDescendants()) do
        if d:IsA("ProximityPrompt") then
            local a = d.Parent
            if a and a:IsA("Attachment") then
                local b = a.Parent
                if b and b:IsA("BasePart") then
                    local l = b:FindFirstChild("LightContainer")
                    if l then
                        local p = l:FindFirstChildOfClass("PointLight")
                        if p then
                            local rb = r(p.Brightness, 2)
                            local plc = p.Color
                            local tc = Color3.fromRGB(137, 255, 111)

                            if rb == 0.28 and plc ~= tc then
                                pl.Character:PivotTo(CFrame.new(b.Position))
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
end

z(workspace)
