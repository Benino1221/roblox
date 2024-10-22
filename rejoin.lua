local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")

-- Get the current place ID and the player's ID
local placeId = game.PlaceId
local player = Players.LocalPlayer

-- Function to rejoin the current game
local function RejoinGame()
    -- Teleport the player to the current place
    TeleportService:Teleport(placeId, player)
end

-- Call the function to rejoin the game
RejoinGame()
