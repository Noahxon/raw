-- Notification
wait(3)
 
warn("loading Celerestial WalkSpeed GUI")
 
game.StarterGui:SetCore("SendNotification", {
    Title = "Celerestial WalkSpeed GUI";
    Text = "Loaded!";
    Icon = "";
    Duration = "2";
})
wait(2)
 
game.StarterGui:SetCore("SendNotification", {
    Title = "Credit";
    Text = "By : Celerestial#0608";
    Icon = "";
    Duration = "2";
})
-- Instances:
 
local SpeedGUI = Instance.new("ScreenGui")
local SpeedGUI_2 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local SpeedValue = Instance.new("TextBox")
local SetSpeed = Instance.new("TextButton")
local ResetSpeed = Instance.new("TextButton")
local Close = Instance.new("TextButton")
 
--Properties:
 
SpeedGUI.Name = "Speed GUI"
SpeedGUI.Parent = game.CoreGui
 
SpeedGUI_2.Name = "SpeedGUI"
SpeedGUI_2.Parent = SpeedGUI
SpeedGUI_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SpeedGUI_2.Position = UDim2.new(0.00799503271, 0, 0.883194327, 0)
SpeedGUI_2.Size = UDim2.new(0, 241, 0, 70)
 
TextLabel.Parent = SpeedGUI_2
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(0, 217, 0, 23)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Enter Speed:"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000
 
SpeedValue.Name = "SpeedValue"
SpeedValue.Parent = SpeedGUI_2
SpeedValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SpeedValue.Position = UDim2.new(0, 0, 0.326807767, 0)
SpeedValue.Size = UDim2.new(0, 241, 0, 24)
SpeedValue.Font = Enum.Font.SourceSans
SpeedValue.Text = ""
SpeedValue.TextColor3 = Color3.fromRGB(0, 0, 0)
SpeedValue.TextSize = 14.000
 
SetSpeed.Name = "SetSpeed"
SetSpeed.Parent = SpeedGUI_2
SetSpeed.BackgroundColor3 = Color3.fromRGB(85, 255, 0)
SetSpeed.Position = UDim2.new(0.522821605, 0, 0.669664681, 0)
SetSpeed.Size = UDim2.new(0, 115, 0, 23)
SetSpeed.Font = Enum.Font.SourceSans
SetSpeed.Text = "Set"
SetSpeed.TextColor3 = Color3.fromRGB(0, 0, 0)
SetSpeed.TextSize = 14.000
 
ResetSpeed.Name = "ResetSpeed"
ResetSpeed.Parent = SpeedGUI_2
ResetSpeed.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ResetSpeed.Position = UDim2.new(0, 0, 0.669664681, 0)
ResetSpeed.Size = UDim2.new(0, 126, 0, 23)
ResetSpeed.Font = Enum.Font.SourceSans
ResetSpeed.Text = "Reset"
ResetSpeed.TextColor3 = Color3.fromRGB(0, 0, 0)
ResetSpeed.TextSize = 14.000
 
Close.Name = "Close"
Close.Parent = SpeedGUI_2
Close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Close.Position = UDim2.new(0.900414944, 0, 0, 0)
Close.Size = UDim2.new(0, 24, 0, 22)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(0, 0, 0)
Close.TextSize = 14.000
 
--Scripts:
 
Close.MouseButton1Down:connect(function()
	SpeedGUI_2.Visible = false
end)
 
SetSpeed.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = SpeedValue.Text
	game.StarterGui:SetCore("SendNotification", {
    Title = "WalkSpeedGui";
    Text = "Speed has been set to".. SpeedValue.Text;
    Icon = "";
    Duration = "2";
})
end)
 
ResetSpeed.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
	game.StarterGui:SetCore("SendNotification", {
    Title = "WalkSpeedGui";
    Text = "Your speed has been reset.";
    Icon = "";
    Duration = "2";
})
 
end)