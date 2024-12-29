local function d()
    for _, c in ipairs(workspace:GetChildren()) do
        if c.Name=="PlayerCharacter" then
            c:Destroy()
        end
    end
end
d()
