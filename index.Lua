local ScreenGui = Instance.new("ScreenGui")
local ToggleButton = Instance.new("TextButton")
local Frame = Instance.new("Frame")
local FlyButton = Instance.new("TextButton")
local JumpButton = Instance.new("TextButton")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

ToggleButton.Parent = ScreenGui
ToggleButton.Size = UDim2.new(0,120,0,40)
ToggleButton.Position = UDim2.new(0,20,0,20)
ToggleButton.Text = "إخفاء/إظهار"

Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0,250,0,400)
Frame.Position = UDim2.new(0,20,0,70)
Frame.BackgroundColor3 = Color3.fromRGB(40,40,40)

FlyButton.Parent = Frame
FlyButton.Size = UDim2.new(0,220,0,40)
FlyButton.Position = UDim2.new(0,15,0,20)
FlyButton.Text = "طيران"

JumpButton.Parent = Frame
JumpButton.Size = UDim2.new(0,220,0,40)
JumpButton.Position = UDim2.new(0,15,0,70)
JumpButton.Text = "نط لا نهائي"

ToggleButton.MouseButton1Click:Connect(function()
    Frame.Visible = not Frame.Visible
end)

local InfiniteJump = false

JumpButton.MouseButton1Click:Connect(function()
    InfiniteJump = not InfiniteJump
    JumpButton.Text = InfiniteJump and "النط: ON" or "النط: OFF"
end)

game:GetService("UserInputService").JumpRequest:Connect(function()
    if InfiniteJump then
        local Humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if Humanoid then
            Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end)

FlyButton.MouseButton1Click:Connect(function()
    print("ضع هنا كود الطيران")
end)