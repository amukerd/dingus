local function deletePlayerCharacters()
    for _, child in ipairs(workspace:GetChildren()) do
        if child.Name == "PlayerCharacter" then
            child:Destroy()
            print("Deleted object:", child.Name)
        end
    end
end

deletePlayerCharacters()
