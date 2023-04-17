Visible = true 
Size = 20 

local old
old = hookfunction(getrawmetatable(game).__index, function(...)
local self, k = ...
if k == "Size" and self.Name == "HumanoidRootPart" then
return Vector3.new(1, 2, 1)
elseif k == "Size" and self.Name == "Head" then
return Vector3.new(2, 1, 1)
end
return old(...)
end)

while wait(1) do
for i,v in next, workspace.Entities.Infected:GetDescendants() do
if v:FindFirstChild("Head") and v:FindFirstChild("HumanoidRootPart") then
pcall(function()
v.Head.Size = Vector3.new(Size, Size, Size)
v.Head.CanCollide = false
v.Head.Material = Enum.Material.Neon
v.Head.BrickColor = BrickColor.new("Really blue")
v.HumanoidRootPart.Size = Vector3.new(Size - 1, Size - 1, Size - 1)
v.HumanoidRootPart.CanCollide = false
if Visible == true then
v.Head.Transparency = 0.5
else
v.Head.Transparency = 1
end
end)
end
end
end