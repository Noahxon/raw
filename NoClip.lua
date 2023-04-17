local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local runservice = game:GetService("RunService")
local noclip = false
 
local msg = Instance.new("Message", player.PlayerGui)
msg.Text = "Press 'h' to toggle No Clip. Press 'u' to close this message."
 
runservice.Stepped:Connect(function()
    if noclip then
        player.Character.Humanoid:ChangeState(11)
    end
end)
 
mouse.KeyDown:Connect(function(key)
    if key == "u" then
        msg:Destroy()
    end
end)
 
mouse.KeyDown:Connect(function(key)
    if key == "h" then
        noclip = true
        player.Character.Humanoid:ChangeState(11)
    end
end)