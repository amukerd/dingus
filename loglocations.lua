local function logPartsWithEmitters()
    for _, child in ipairs(workspace:GetDescendants()) do
        if child:IsA("Part") and child:FindFirstChildOfClass("ParticleEmitter") and child:FindFirstChildOfClass("AudioEmitter") then
            print("Part with emitters found at:", child.Position)
        end
    end
end

logPartsWithEmitters()
