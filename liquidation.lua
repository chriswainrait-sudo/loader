local Players = game:GetService("Players")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "LoaderUpdateMessage"
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true
screenGui.Parent = playerGui

local background = Instance.new("Frame")
background.Size = UDim2.fromScale(1, 1)
background.Position = UDim2.fromScale(0, 0)
background.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
background.BackgroundTransparency = 0.1
background.BorderSizePixel = 0
background.Parent = screenGui

local textLabel = Instance.new("TextLabel")
textLabel.AnchorPoint = Vector2.new(0.5, 0.5)
textLabel.Position = UDim2.fromScale(0.5, 0.5)
textLabel.Size = UDim2.fromScale(0.85, 0.35)

textLabel.BackgroundTransparency = 1

textLabel.Text = [[
The Loader is currently being updated.

Please wait approximately 2 hours.

Thank you for your patience.
All details and updates are available on our Discord.
]]

textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.TextScaled = true
textLabel.TextWrapped = true
textLabel.Font = Enum.Font.GothamBold
textLabel.Parent = background
