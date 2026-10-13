local ch1 = game:GetService("Players").LocalPlayer
local ch2 = workspace.Map.Interactables.Chests
local ch3 = true
local ch4 = {}
task.spawn(function()
    while ch3 do
        local ch5 = false
        for _, ch6 in ipairs({"Random Chests", "All The Time Chests"}) do
            local ch7 = ch2:FindFirstChild(ch6)
            if ch7 then
                for _, ch8 in ipairs(ch7:GetDescendants()) do
                    if not ch3 then break end
                    if ch8:IsA("ProximityPrompt") and not ch4[ch8] and ch8.Enabled then
                        local ch9 = ch1.Character
                        local ch10 = ch9 and ch9:FindFirstChild("HumanoidRootPart")
                        local ch11 = ch8.Parent
                        if ch10 and ch11 and ch11:IsA("BasePart") then
                            ch5, ch4[ch8] = true, true
                            ch10.CFrame = ch11.CFrame * CFrame.new(0, 0, 3)
                            task.wait(0.5)
                            pcall(function() fireproximityprompt(ch8) end)
                            task.wait(1)
                        end
                    end
                end
            end
        end
        if not ch5 then table.clear(ch4); task.wait(2) end
    end
end)
