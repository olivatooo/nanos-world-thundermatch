MainHUD = WebUI("Deathmatch HUD", "file:///UI/index.html")
ScoreboardToggled = false
Package.Require("Client/Sky.lua")

-- Deathmatch data
Deathmatch = {
  remaining_time = 0
}

-- Calls Battlefield Kill UI to configure it - parameters: enable_autodamagescore, kill_score, headshot_score
Package.Subscribe("Load", function()
  Events.Call("ConfigureBattlefieldKillUI", false, 20, 20)

  my_sound = Sound(
    Vector(),                                                                                  -- Location (if a 3D sound)
    "package://nanos-world-thundermatch/Client/Music/" .. tostring(math.random(12)) .. ".ogg", -- Asset Path
    true,                                                                                      -- Is 2D Sound
    true,                                                                                      -- Auto Destroy (if to destroy after finished playing)
    SoundType.Music,
    1,                                                                                         -- Volume
    1                                                                                          -- Pitch
  )
  Timer.SetInterval(function()
    if my_sound == nil or my_sound:IsValid() == false or my_sound:IsPlaying() == false then
      my_sound = Sound(
        Vector(),                                                                                 -- Location (if a 3D sound)
        "package://nanos-world-thundermatch/Client/Music/" .. tostring(math.random(9)) .. ".ogg", -- Asset Path
        true,                                                                                     -- Is 2D Sound
        true,                                                                                     -- Auto Destroy (if to destroy after finished playing)
        SoundType.Music,
        1,                                                                                        -- Volume
        1                                                                                         -- Pitch
      )
      my_sound:FadeIn(5, 1, 0)
    end
  end, 5000)
  return false
end)

-- Toggles the Scoreboard
Client.Subscribe("KeyUp", function(key_name)
  if (key_name == "Tab") then
    if (Deathmatch.match_state == MATCH_STATES.POST_TIME) then return end

    MainHUD:CallEvent("ToggleScoreboard", false)
    ScoreboardToggled = false
  end
end)

-- Toggles the Scoreboard
Client.Subscribe("KeyDown", function(key_name)
  if (key_name == "Tab") then
    if (Deathmatch.match_state == MATCH_STATES.POST_TIME) then return end

    MainHUD:CallEvent("ToggleScoreboard", true)
    ScoreboardToggled = true
    UpdateAllPlayersScoreboard()
  end
end)

-- Updates someone scoreboard data
function UpdatePlayerScoreboard(player)
  MainHUD:CallEvent("UpdatePlayer", player:GetID(), true, player:GetName(), player:GetValue("Score") or 0,
    player:GetValue("Kills") or 0, player:GetValue("Deaths") or 0, player:GetPing())
end

--  Adds someone to the scoreboard
Player.Subscribe("Spawn", function(player)
  UpdatePlayerScoreboard(player)
end)

function UpdateAllPlayersScoreboard()
  for k, player in pairs(Player.GetAll()) do
    UpdatePlayerScoreboard(player)
  end
end

-- Updates the scoreboards data every 1 seconds
Timer.SetInterval(function()
  UpdateAllPlayersScoreboard()
end, 1000)

-- When LocalPlayer spawns, sets an event on it to trigger when we possesses a new character, to store the local controlled character locally. This event is only called once, see Package.Subscribe("Load") to load it when reloading a package
Client.Subscribe("SpawnLocalPlayer", function(local_player)
  local_player:Subscribe("Possess", function(player, character)
    UpdateLocalCharacter(character)
  end)
end)

-- When package loads, verify if LocalPlayer already exists (eg. when reloading the package), then try to get and store it's controlled character
Package.Subscribe("Load", function()
  Timer.SetTimeout(function()
    Events.CallRemote("PlayerReady")
  end, 200)

  if (Client.GetLocalPlayer() ~= nil) then
    UpdateLocalCharacter(Client.GetLocalPlayer():GetControlledCharacter())
    Client.GetLocalPlayer():Subscribe("Possess", function(player, character)
      UpdateLocalCharacter(character)
    end)
  end

  -- Updates all existing Players
  UpdateAllPlayersScoreboard()
end)

-- Function to set all needed events on local character (to update the UI when it takes damage or dies)
function UpdateLocalCharacter(character)
  -- Verifies if character is not nil (eg. when GetControllerCharacter() doesn't return a character)
  if (character == nil) then return end

  -- Updates the UI with the current character's health
  UpdateHealth(character:GetHealth())

  -- Sets on character an event to update the health's UI after it takes damage
  character:Subscribe("TakeDamage", function(charac, damage, type, bone, from_direction, instigator, causer)
    -- Updates the Health UI
    UpdateHealth(math.max(charac:GetHealth() - damage, 0))
  end)

  -- Sets on character an event to update the health's UI after it dies
  character:Subscribe("Death", function(charac)
    UpdateHealth(0)
  end)

  -- Sets on character an event to update the health's UI after it respawns
  character:Subscribe("Respawn", function(charac)
    UpdateHealth(100)
  end)

  -- Try to get if the character is holding any weapon
  local current_picked_item = character:GetPicked()

  -- If so, update the UI
  if (current_picked_item and current_picked_item:GetType() == "Weapon" and not current_picked_item:GetValue("ToolGun")) then
    UpdateAmmo(true, current_picked_item:GetAmmoClip(), current_picked_item:GetAmmoBag())
  end

  -- Sets on character an event to update his grabbing weapon (to show ammo on UI)
  character:Subscribe("PickUp", function(charac, object)
    if (object:GetType() == "Weapon" and not object:GetValue("ToolGun")) then
      UpdateAmmo(true, object:GetAmmoClip(), object:GetAmmoBag())

      -- Sets on character an event to update the UI when he fires
      character:Subscribe("Fire", function(charac, weapon)
        UpdateAmmo(true, weapon:GetAmmoClip(), weapon:GetAmmoBag())
      end)

      -- Sets on character an event to update the UI when he reloads the weapon
      character:Subscribe("Reload", function(charac, weapon, ammo_to_reload)
        UpdateAmmo(true, weapon:GetAmmoClip(), weapon:GetAmmoBag())
      end)
    end
  end)

  -- Sets on character an event to remove the ammo ui when he drops it's weapon
  character:Subscribe("Drop", function(charac, object)
    UpdateAmmo(false)
    character:Unsubscribe("Fire")
    character:Unsubscribe("Reload")
  end)
end

-- Function to update the Ammo's UI
function UpdateAmmo(enable_ui, ammo, ammo_bag)
  MainHUD:CallEvent("UpdateWeaponAmmo", enable_ui, ammo, ammo_bag)
end

-- Function to update the Health's UI
function UpdateHealth(health)
  MainHUD:CallEvent("UpdateHealth", health)
end

-- VOIP UI
Player.Subscribe("VOIP", function(player, is_talking)
  MainHUD:CallEvent("ToggleVoice", player:GetName(), is_talking)
end)

Player.Subscribe("Destroy", function(player)
  MainHUD:CallEvent("ToggleVoice", player:GetName(), false)
  MainHUD:CallEvent("UpdatePlayer", player:GetID(), false)
end)

-- Receives from server the current match_state and remaining_time
Events.SubscribeRemote("UpdateMatchState", function(match_state, remaining_time)
  Deathmatch.match_state = match_state
  Deathmatch.remaining_time = remaining_time - 1

  local label = ""

  if (Deathmatch.match_state == MATCH_STATES.WARM_UP) then
    MainHUD:CallEvent("ToggleScoreboard", false)
    label = "WARM UP "
  elseif (Deathmatch.match_state == MATCH_STATES.PREPARING) then
    MainHUD:CallEvent("ToggleScoreboard", false)
    label = "STARTING IN "
  elseif (Deathmatch.match_state == MATCH_STATES.IN_PROGRESS) then
    label = ""
  elseif (Deathmatch.match_state == MATCH_STATES.POST_TIME) then
    -- Forces the Scoreboard to appear
    MainHUD:CallEvent("ToggleScoreboard", true)
    UpdateAllPlayersScoreboard()
    label = "POST TIME "
  end

  -- Calls UI to display the current match status and current remaining_time
  MainHUD:CallEvent("UpdateMatchStatus", label, Deathmatch.remaining_time)
end)

-- Helpers for spawning sounds
Events.SubscribeRemote("SpawnSound", function(location, sound_asset, is_2D, volume, pitch)
  Sound(location, sound_asset, is_2D, true, SoundType.SFX, volume, pitch)
end)

Events.SubscribeRemote("SpawnActionSound", function(location, sound_asset)
  Sound(location, sound_asset, false, true, SoundType.SFX, 1, 1, 400, 10000, AttenuationFunction.LogReverse)
end)

-- When local Picks Up a Power Up, forces it to update the health and ammo
Events.SubscribeRemote("PickedUpPowerUp", function()
  Sound(Vector(), "nanos-world::A_VR_Open", true, true, SoundType.SFX, 1, 1)

  local character = Client.GetLocalPlayer():GetControlledCharacter()
  if (character) then
    UpdateHealth(character:GetHealth())

    local weapon = character:GetPicked()
    if (weapon and NanosUtils.IsA(weapon, Weapon)) then
      UpdateAmmo(true, weapon:GetAmmoClip(), weapon:GetAmmoBag())
    end
  end
end)
