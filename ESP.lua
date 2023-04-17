ALLYCOLOR = {0,255,255}     
ENEMYCOLOR =  {255,0,0}     
TRANSPARENCY = 0.5          
HEALTHBAR_ACTIVATED = true  


function createFlex()
players = game:GetService("Players") 
faces = {"Front","Back","Bottom","Left","Right","Top"}
currentPlayer = nil 
lplayer = players.LocalPlayer 
players.PlayerAdded:Connect(function(p)
currentPlayer = p
p.CharacterAdded:Connect(function(character) 
createESP(character)            
end)        
end)

function checkPart(obj)  if (obj:IsA("Part") or obj:IsA("MeshPart")) and obj.Name~="HumanoidRootPart" then return true end end 

function actualESP(obj) 

for i=0,5 do
surface = Instance.new("SurfaceGui",obj) 
surface.Face = Enum.NormalId[faces[i+1]] 
surface.AlwaysOnTop = true

frame = Instance.new("Frame",surface)   
frame.Size = UDim2.new(1,0,1,0)
frame.BorderSizePixel = 0                                               
frame.BackgroundTransparency = TRANSPARENCY
if currentPlayer.Team == players.LocalPlayer.Team then 
frame.BackgroundColor3 = Color3.new(ALLYCOLOR[1],ALLYCOLOR[2],ALLYCOLOR[3])                                        
else
frame.BackgroundColor3 = Color3.new(ENEMYCOLOR[1],ENEMYCOLOR[2],ENEMYCOLOR[3])  
end
                            
end
end
function createHealthbar(hrp) 
board =Instance.new("BillboardGui",hrp) 
board.Name = "total"
board.Size = UDim2.new(1,0,1,0)
board.StudsOffset = Vector3.new(3,1,0)
board.AlwaysOnTop = true

bar = Instance.new("Frame",board) 
bar.BackgroundColor3 = Color3.new(255,0,0)
bar.BorderSizePixel = 0
bar.Size = UDim2.new(0.2,0,4,0)
bar.Name = "total2"
                
health = Instance.new("Frame",bar)
health.BackgroundColor3 = Color3.new(0,255,0)
health.BorderSizePixel = 0
health.Size = UDim2.new(1,0,hrp.Parent.Humanoid.Health/100,0)
hrp.Parent.Humanoid.Changed:Connect(function(property) 
hrp.total.total2.Frame.Size = UDim2.new(1,0,hrp.Parent.Humanoid.Health/100,0)                             
end)
end
function createESP(c) 
bugfix = c:WaitForChild("Head")
for i,v in pairs(c:GetChildren()) do
if checkPart(v) then
actualESP(v)
end
end
if HEALTHBAR_ACTIVATED then 
createHealthbar(c:WaitForChild("HumanoidRootPart")) 
end
end
for i,people in pairs(players:GetChildren())do
if people ~= players.LocalPlayer then
currentPlayer = people
                                
createESP(people.Character)
people.CharacterAdded:Connect(function(character)
createESP(character)            
end)
end
end
end 

createFlex() 