Server.LoadPackage("default-weapons")
Package.Require("Bot/Bot.lua")
Package.Require("Weapons/HFG.lua")
Package.Require("Sky.lua")
Package.Require("Weapons/BouncyGun.lua")


-- List of the Default Weapons
DefaultWeapons = {
  NanosWorldWeapons.AK47,
  NanosWorldWeapons.AK5C,
  NanosWorldWeapons.GE3,
  NanosWorldWeapons.P90,
  NanosWorldWeapons.UMP45,
  NanosWorldWeapons.Makarov,
  NanosWorldWeapons.M1911,
  NanosWorldWeapons.SA80,
  NanosWorldWeapons.Ithaca37,
  NanosWorldWeapons.Rem870,
  NanosWorldWeapons.SPAS12,
  NanosWorldWeapons.AWP,
  NanosWorldWeapons.AK74U,
  NanosWorldWeapons.GE36,
  NanosWorldWeapons.Glock,
  NanosWorldWeapons.DesertEagle,
  NanosWorldWeapons.AR4,
  NanosWorldWeapons.Moss500,
  NanosWorldWeapons.AP5,
  NanosWorldWeapons.SMG11,
  NanosWorldWeapons.Lewis,
  NanosWorldWeapons.M1Garand,
  NanosWorldWeapons.ColtPython,
  HFG,
  BouncyGun
}

-- List of Weapons used in GunGame mode
GunGameWeapons = {
  -- SMGs
  [0] = NanosWorldWeapons.P90,
  [1] = NanosWorldWeapons.UMP45,
  [2] = NanosWorldWeapons.AP5,
  -- Rifles
  [3] = NanosWorldWeapons.AR4,
  [4] = NanosWorldWeapons.GE36,
  [5] = NanosWorldWeapons.GE3,
  [6] = NanosWorldWeapons.AK47,
  -- Shotguns
  [7] = NanosWorldWeapons.Rem870,
  [8] = NanosWorldWeapons.Ithaca37,
  [9] = NanosWorldWeapons.SPAS12,
  -- Sniper
  [10] = NanosWorldWeapons.AWP,
  -- Machine
  [11] = NanosWorldWeapons.Lewis,
  -- Pistols
  [12] = NanosWorldWeapons.DesertEagle,
  [13] = NanosWorldWeapons.Makarov,
  [14] = NanosWorldWeapons.M1911,
  [15] = NanosWorldWeapons.Glock,
}

-- List of Quaternius Weapons
QuaterniusWeapons = {
  "SpawnAssaultRifle_01",
  "SpawnAssaultRifle_02",
  "SpawnAssaultRifle_03",
  "SpawnAssaultRifle_04",
  "SpawnAssaultRifle_05",
  "SpawnAssaultRifle_06",
  "SpawnAssaultRifle_07",
  "SpawnAssaultRifle_08",
  "SpawnAssaultRifle_09",

  "SpawnBullpup_01",
  "SpawnBullpup_02",
  "SpawnBullpup_03",

  "SpawnPistol_01",
  "SpawnPistol_02",
  "SpawnPistol_03",
  "SpawnPistol_04",
  "SpawnPistol_05",
  "SpawnPistol_06",

  "SpawnRevolver_01",
  "SpawnRevolver_02",
  "SpawnRevolver_03",
  "SpawnRevolver_04",
  "SpawnRevolver_05",

  "SpawnSubmachineGun_01",
  "SpawnSubmachineGun_02",
  "SpawnSubmachineGun_03",
  "SpawnSubmachineGun_04",
  "SpawnSubmachineGun_05",

  "SpawnShotgun_01",
  "SpawnShotgun_02",
  "SpawnShotgun_03",
  "SpawnShotgun_04",
  "SpawnShotgun_05",

  "SpawnShotgun_SawedOff",

  "SpawnSniperRifle_01",
  "SpawnSniperRifle_02",
  "SpawnSniperRifle_03",
  "SpawnSniperRifle_04",
  "SpawnSniperRifle_05",
}

-- List of textures patterns for default weapons
PatternList = {
  "T_80s_Pattern.jpg",
  "T_Chochip_Pattern.jpg",
  "T_Cracks_Pattern.jpg",
  "T_Desert_Marpat_Pattern.jpg",
  "T_Hexagon_Glow_Pattern.jpg",
  "T_Hexagon_Pattern.jpg",
  "T_Ink_Pattern.jpg",
  "T_LeafSpray_Pattern.jpg",
  "T_Net01_Pattern.jpg",
  "T_Stripes_Pattern.jpg",
  "T_Urban_Marpat_Pattern.jpg",
  "T_W90_Pattern.jpg",
  "T_W90K_Pattern.jpg",
  "T_Wood_Marpat_Pattern.jpg",
  "T_Murica_Pattern.jpg",
  "T_Watermelon_Pattern.jpg",
  "T_Infernoo.jpg",
  "T_Pattern_001.jpg",
  "T_Pattern_002.jpg",
  "T_Pattern_003.jpg",
  "T_Pattern_004.jpg",
  "T_Pattern_005.jpg",
  "T_Pattern_006.jpg",
  "T_Pattern_007.jpg",
  "T_Pattern_008.jpg",
  "T_Pattern_009.jpg",
  "T_Pattern_010.jpg",
  "T_Pattern_011.jpg",
  "T_Pattern_012.jpg",
  "T_Pattern_013.jpg",
  "T_Pattern_014.jpg",
  "T_Pattern_015.jpg",
  "T_Pattern_016.jpg",
  "T_Pattern_017.jpg",
  "T_Pattern_018.jpg",
  "T_Pattern_019.jpg",
  "T_Pattern_020.jpg",
  "T_Pattern_021.jpg",
  "T_Pattern_022.jpg",
  "T_Pattern_023.jpg",
  "T_Pattern_024.jpg",
  "T_Pattern_025.jpg",
  "T_Pattern_026.jpg",
  "T_Pattern_027.jpg",
  "T_Pattern_028.jpg",
  "T_Pattern_029.jpg",
  "T_Pattern_030.jpg",
  "T_Pattern_031.jpg",
  "T_Pattern_032.jpg",
  "T_Pattern_033.jpg",
  "T_Pattern_034.jpg",
  "T_Pattern_035.jpg",
  "T_Pattern_036.jpg",
  "T_Pattern_037.jpg",
  "T_Pattern_038.jpg",
  "T_Pattern_039.jpg",
  "T_Pattern_040.jpg",
  "T_Pattern_041.jpg",
  "T_Pattern_042.jpg",
  "T_Pattern_043.jpg",
  "T_Pattern_044.jpg",
  "T_Pattern_045.jpg",
  "T_Pattern_046.jpg",
  "T_Pattern_047.jpg",
  "T_Pattern_048.jpg",
  "T_Pattern_049.jpg",
  "T_Pattern_050.jpg",
  "T_Pattern_051.jpg",
  "T_Pattern_052.jpg",
  "T_Pattern_053.jpg",
  "T_Pattern_054.jpg",
  "T_Pattern_055.jpg",
  "T_Pattern_056.jpg",
  "T_Pattern_057.jpg",
  "T_Pattern_058.jpg",
  "T_Pattern_059.jpg",
  "T_Pattern_060.jpg",
  "T_Pattern_061.jpg",
  "T_Pattern_062.jpg",
  "T_Pattern_063.jpg",
  "T_Pattern_064.jpg",
  "T_Pattern_065.jpg",
  "T_Pattern_066.jpg",
  "T_Pattern_067.jpg",
  "T_Pattern_068.jpg",
  "T_Pattern_069.jpg",
  "T_Pattern_070.jpg",
  "T_Pattern_071.jpg",
  "T_Pattern_072.jpg",
  "T_Pattern_073.jpg",
  "T_Pattern_074.jpg",
  "T_Pattern_075.jpg",
  "T_Pattern_076.jpg",
  "T_Pattern_077.jpg",
  "T_Pattern_078.jpg",
  "T_Pattern_079.jpg",
  "T_Pattern_080.jpg",
  "T_Pattern_081.jpg",
  "T_Pattern_082.jpg",
  "T_Pattern_083.jpg",
  "T_Pattern_084.jpg",
  "T_Pattern_085.jpg",
  "T_Pattern_086.jpg",
  "T_Pattern_087.jpg",
  "T_Pattern_088.jpg",
  "T_Pattern_089.jpg",
  "T_Pattern_090.jpg",
  "T_Pattern_091.jpg",
  "T_Pattern_092.jpg",
  "T_Pattern_093.jpg",
  "T_Pattern_094.jpg",
  "T_Pattern_095.jpg",
  "T_Pattern_096.jpg",
  "T_Pattern_097.jpg",
  "T_Pattern_098.jpg",
  "T_Pattern_099.jpg",
  "T_Pattern_100.jpg",
  "T_Pattern_101.jpg",
  "T_Pattern_102.jpg",
  "T_Pattern_103.jpg",
  "T_Pattern_104.jpg",
  "T_Pattern_105.jpg",
  "T_Pattern_106.jpg",
  "T_Pattern_107.jpg",
  "T_Pattern_108.jpg",
  "T_Pattern_109.jpg",
  "T_Pattern_110.jpg",
  "T_Pattern_111.jpg",
  "T_Pattern_112.jpg",
  "T_Pattern_113.jpg",
  "T_Pattern_114.jpg",
  "T_Pattern_115.jpg",
  "T_Pattern_116.jpg",
  "T_Pattern_117.jpg"
}

-- Deathmatch Settings
DeathmatchSettings = {
  warmup_time = 30,
  preparing_time = 2,
  match_time = 300,
  post_time = 30,
  multikill_time = 6,
  kill_z = -400,
  multikill_time_multiplier = 1,
  spawn_locations = {
  },
  weapons_to_use = "default",
  mode = GAME_MODE.DEATHMATCH
}

-- Deathmatch Data
Deathmatch = {
  match_state = 0,
  remaining_time = 0,
  first_blood = false,
}

-- Helper for getting the correct announcer and label from kill count multi kill
function GetMultiKillLabel(kill_count)
  if (kill_count == 2) then return "DOUBLE KILL", "quake-announcer::A_DoubleKill", 25 end
  if (kill_count == 3) then return "TRIPLE KILL", "quake-announcer::A_TripleKill", 50 end
  if (kill_count == 4) then return "MULTI KILL", "quake-announcer::A_MultiKill", 100 end
  if (kill_count == 5) then return "MEGA KILL!", "quake-announcer::A_MegaKill", 200 end
  if (kill_count == 6) then return "ULTRA KILL!!", "quake-announcer::A_UltraKill", 300 end

  return "MONSTER KILL!!!", "quake-announcer::A_MonsterKill", 500
end

-- Helper for getting the correct announcer and label from kill count kill streak
function GetKillStreakLabel(kill_count)
  if (kill_count == 5) then return "KILLING SPREE", "quake-announcer::A_KillingSpree", 100 end
  if (kill_count == 10) then return "RAMPAGE!", "quake-announcer::A_Rampage", 200 end
  if (kill_count == 15) then return "DOMINATING!!", "quake-announcer::A_Dominating", 300 end
  if (kill_count == 20) then return "UNSTOPPABLE!!!", "quake-announcer::A_Unstoppable", 400 end
  if (kill_count >= 25) then return "GODLIKE!!!!!", "quake-announcer::A_Godlike", 500 end

  return nil
end

-- Helper for spawning an announcer sound
function SpawnActionSound(location, asset, player)
  -- We make a small delay to sound better
  Timer.SetTimeout(function(_asset)
    if (player) then
      Events.CallRemote("SpawnActionSound", player, location, _asset)
    else
      Events.BroadcastRemote("SpawnActionSound", location, _asset)
    end
  end, 300, asset)
end

-- Function to Add a Kill to the Player's kill count
function AddKill(player, location)
  local current_player_kills = player:GetValue("Kills") or 0
  player:SetValue("Kills", current_player_kills + 1, true)

  -- Updates last kill time
  local last_kill_at = player:GetValue("LastKillAt") or 0
  local now = os.time()
  player:SetValue("LastKillAt", now, true)

  -- Updates kill streak count
  local kill_streak = player:GetValue("KillStreak") or 0
  kill_streak = kill_streak + 1
  player:SetValue("KillStreak", kill_streak, true)

  -- Checks for First Blood
  if (not Deathmatch.first_blood) then
    Deathmatch.first_blood = true
    SpawnActionSound(location, "quake-announcer::A_FirstBlood")
  end

  -- Checks for Kill Streak
  if (kill_streak >= 3) then
    local label, sound_asset, score = GetKillStreakLabel(kill_streak)

    Chat.BroadcastMessage("<cyan>" .. player:GetName() .. "</> is on a <red>" .. kill_streak .. "</> kill streak!")

    if (label) then
      -- Adds a score for kill streak
      if (DeathmatchSettings.mode == GAME_MODE.DEATHMATCH) then
        AddScore(player, score, "killingspree", label)
      end

      SpawnActionSound(location, sound_asset)
    end
  end

  local multikill_count = player:GetValue("MultiKillCount") or 0
  local multikill_time = DeathmatchSettings.multikill_time +
      multikill_count * DeathmatchSettings.multikill_time_multiplier

  -- Checks for Multi Kill
  if (os.difftime(now, last_kill_at) < multikill_time) then
    multikill_count = multikill_count + 1
    player:SetValue("MultiKillCount", multikill_count, true)

    local label, sound_asset, score = GetMultiKillLabel(multikill_count)

    Chat.BroadcastMessage("<cyan>" .. player:GetName() .. "</> made a <red>" .. label .. "</>")

    -- Adds a score for multi kill
    if (DeathmatchSettings.mode == GAME_MODE.DEATHMATCH) then
      AddScore(player, score, "multikill", label)
    end

    -- If is on more than Triple Kill, spawns sound for everyone
    if (multikill_count >= 3) then
      SpawnActionSound(location, sound_asset)
    else
      SpawnActionSound(location, sound_asset, player)
    end
  else
    -- Resets Multi Kill count
    player:SetValue("MultiKillCount", 1, true)
  end

  if (DeathmatchSettings.mode == GAME_MODE.GUNGAME) then
    if ((player:GetValue("Score") or 0) + 1 == #GunGameWeapons) then
      UpdateMatchState(MATCH_STATES.POST_TIME)
      Chat.BroadcastMessage("<cyan>" .. player:GetName() .. "</> has won!")
      return
    end

    -- Updates accumulated kill
    local accumulated_kills = player:GetValue("AccumulatedKills") or 0

    if (accumulated_kills >= 1) then
      player:SetValue("AccumulatedKills", 0, true)
      -- Adds score for killing
      -- TODO sound
      AddScore(player, 1, "level_up", "LEVEL UP", false, true)

      -- If has a weapon, destroys it
      local character = player:GetControlledCharacter()
      local weapon = player:GetValue("Weapon")
      local old_aiming = character:GetWeaponAimMode()

      if (weapon and weapon:IsValid()) then
        weapon:Destroy()
      end

      local new_weapon = SpawnWeapon(player)

      if (new_weapon) then
        player:SetValue("Weapon", new_weapon)
        character:PickUp(new_weapon)
        character:SetWeaponAimMode(old_aiming)
      end
    else
      player:SetValue("AccumulatedKills", 1, true)
    end
  end
end

-- Function to Add a Death to the Player's death count
function AddDeath(player, instigator)
  local current_player_deaths = player:GetValue("Deaths") or 0
  player:SetValue("Deaths", current_player_deaths + 1, true)

  -- Checks for Kill Streak ending
  if (instigator) then
    local kill_streak = player:GetValue("KillStreak") or 0

    if (kill_streak >= 5) then
      -- Adds score for that
      if (DeathmatchSettings.mode == GAME_MODE.DEATHMATCH) then
        AddScore(instigator, 100, "killstreak_ended", "KILLSTREAK ENDED")
      end
    end
  end

  -- Resets the Streak
  player:SetValue("KillStreak", 0, true)
end

-- Helper for adding Score to a player
function AddScore(player, score, id, label, use_current_label, silence)
  local current_player_score = player:GetValue("Score") or 0
  player:SetValue("Score", current_player_score + score, true)

  if (not silence) then
    -- Calls the player to notify the Score
    Events.CallRemote("AddScore", player, score, id, label, use_current_label or false)
  end
  if current_player_score + score > 15000 then
    UpdateMatchState(MATCH_STATES.POST_TIME)
    Chat.BroadcastMessage("<cyan>" .. player:GetName() .. "</> has won!")
  end
end

-- Adds score when damaging
Character.Subscribe("TakeDamage", function(character, damage, bone, type, from, instigator, causer)
  -- If it's suicide, ignore it
  if (not instigator or instigator == character:GetPlayer()) then
    return
  end

  -- Clamps the damage to Health
  local health = character:GetHealth()
  local true_damage = health < damage and health or damage

  if (DeathmatchSettings.mode == GAME_MODE.DEATHMATCH) then
    AddScore(instigator, true_damage, "enemy_hit", "ENEMY HIT", true)
  end
end)

-- When a character dies, check if I was the last one to do damage on him and displays on the screen as a kill
ResetTimer = nil
Character.Subscribe("Death",
  function(character, last_damage_taken, last_bone_damaged, damage_type_reason, hit_from_direction, instigator)
    local dead_player = character:GetPlayer()
    NumberOfAlivePlayers = 0
    for k, v in pairs(Character.GetAll()) do
      if v:GetHealth() > 0 then
        NumberOfAlivePlayers = NumberOfAlivePlayers + 1
      end
    end

    if NumberOfAlivePlayers <= 1 then
      WonRound = true
      for k, v in pairs(Bots) do
        if v.Character and v.Character:IsValid() then
          local weapon = v.Character:GetPicked()
          if weapon and weapon:IsValid() then
            weapon:Destroy()
          end
          v.Character:SetLifeSpan(1)
          Bots[k] = nil
        end
      end
    end


    if (instigator) then
      -- Cannot be suicide
      if (instigator ~= dead_player) then
        local killer_character = instigator:GetControlledCharacter()
        local killer_location = (killer_character and killer_character:GetLocation()) or Vector()

        -- Gets the last hit bone and check if it was a Headshot
        local is_headshot = last_bone_damaged == "head" or last_bone_damaged == "neck_01"
        if (is_headshot) then
          -- If headshot, adds score and spawns an announcer sound for both killed and killer
          if (DeathmatchSettings.mode == GAME_MODE.DEATHMATCH) then
            AddScore(instigator, 20, "headshot", "HEADSHOT")
          end

          SpawnActionSound(killer_location, "quake-announcer::A_Headshot", instigator)
          SpawnActionSound(killer_location, "quake-announcer::A_Headshot", dead_player)
        end

        -- Adds score for killing

        if (DeathmatchSettings.mode == GAME_MODE.DEATHMATCH) then
          AddScore(instigator, 20, "enemy_kill", "ENEMY KILL", false, true)
        end

        -- Adds one more kill to count
        AddKill(instigator, killer_location)

        -- Spawns a Power Up in the place
        SpawnPowerUp(character:GetLocation())
      end
    end

    if (dead_player) then
      Events.CallRemote("SpawnSound", dead_player, Vector(), "quake-announcer::A_LostMatch", true, 1, 1)
      -- Adds a death to count
      AddDeath(dead_player, instigator)

      -- Immediately destroys the wepaon
      local weapon = dead_player:GetValue("Weapon")

      Timer.SetTimeout(function(_character, _player)
        if _character and _character:IsValid() then
          _character:Destroy()
          _player:TranslateCameraTo(
            DeathmatchSettings.spawn_locations[math.random(#DeathmatchSettings.spawn_locations)] + Vector(0, 0, 2000), 1,
            1)
        end
      end, 3000, character, dead_player)

      if (weapon and weapon:IsValid()) then
        weapon:Destroy()
      end
    end
    if WonRound then
      Console.Log("Won Round")
      WonRound = nil
      for k, v in pairs(Character.GetAll()) do
        if v:GetHealth() > 0 then
          local player = v:GetPlayer()
          if player then
            AddScore(player, 1000, "enemy_kill", "ENEMY KILL", false, true)
          end
        end
      end

      if ResetTimer == nil and Deathmatch.match_state == MATCH_STATES.IN_PROGRESS then
        ResetTimer = Timer.SetTimeout(function()
          UpdateMatchState(MATCH_STATES.PREPARING)
          ResetTimer = nil
        end, 3500)
      end
    end
  end)

-- When package load, starts a Warm Up
Package.Subscribe("Load", function()
  Timer.SetTimeout(function()
    UpdateMatchState(MATCH_STATES.WARM_UP)
  end, 100)
end)

UniqueRound = false
UniqueFunc = nil
function GenerateThunderMatch()
  UniqueRound = false
  if math.random(100) > 50 then
    UniqueRound = true
    UniqueFunc = DefaultWeapons[math.random(#DefaultWeapons)]
    Chat.BroadcastMessage("Everyone with the <blue>same weapon</> !")
  end
  if UniqueRound == false then
    Chat.BroadcastMessage("Everyone with <yellow>random weapons</> !")
  end
  Events.Call("SetMapSize", 62 * #Player.GetAll())
  Events.Call("ClearMap")
  Events.Call("GenerateMap")
  Timer.SetTimeout(function()
    Console.Log("Calling clear structures")
    Events.Call("ClearMapSlowly", 35)
  end, 3000)
  if #Player.GetAll() == 1 then
    Timer.SetTimeout(function()
      for _, v in pairs(Player.GetAll()) do
        RespawnPlayer(v)
        SpawnBot()
      end
    end, 200)
  else
    Timer.SetTimeout(function()
      for _, v in pairs(Player.GetAll()) do
        RespawnPlayer(v)
      end
    end, 200)
  end
end

-- Helper for updating the match state
function UpdateMatchState(new_state)
  Deathmatch.match_state = new_state

  if (new_state == MATCH_STATES.WARM_UP) then
    Events.Call("ClearMap")
    Events.Call("GenerateMap")
    Deathmatch.remaining_time = DeathmatchSettings.warmup_time

    Console.Log("[Deathmatch] Warm-up!")
    Chat.BroadcastMessage("<grey>Warm-up!</>")

    CleanUp()
  elseif (new_state == MATCH_STATES.PREPARING) then
    Deathmatch.remaining_time = DeathmatchSettings.preparing_time
    GenerateThunderMatch()
    Console.Log("[Deathmatch] Preparing!")
    Chat.BroadcastMessage("<grey>Preparing!</>")

    -- Freeze all characters
    for k, character in pairs(Character.GetAll()) do
      character:SetInputEnabled(false)
      character:SetFlyingMode(true)
    end
  elseif (new_state == MATCH_STATES.IN_PROGRESS) then
    Deathmatch.remaining_time = DeathmatchSettings.match_time
    Deathmatch.first_blood = false
    Console.Log("[Deathmatch] Round started!")
    Chat.BroadcastMessage("<grey>Round Started!</>")
    -- Unfreeze all characters
    for k, character in pairs(Character.GetAll()) do
      character:SetInputEnabled(true)
      character:SetFlyingMode(false)
    end
  elseif (new_state == MATCH_STATES.POST_TIME) then
    Deathmatch.remaining_time = DeathmatchSettings.post_time
    -- Freeze all characters
    for k, character in pairs(Character.GetAll()) do
      character:SetInputEnabled(false)
      character:SetFlyingMode(true)
    end

    -- Match summary
    Chat.BroadcastMessage("<green>End of match!</> Scoreboard:")
    Chat.BroadcastMessage("<grey>=============================</>")

    local player_rank = {}

    for k, player in pairs(Player.GetAll()) do
      table.insert(player_rank, player)
    end

    table.sort(player_rank, function(a, b) return (a:GetValue("Score") or 0) > (b:GetValue("Score") or 0) end)

    for rank, player in pairs(player_rank) do
      -- Plays announcer sound if winner or last place
      if (rank == 1) then
        Events.CallRemote("SpawnSound", player, Vector(), "quake-announcer::A_Winner", true, 1, 1)
      elseif (rank == #player_rank) then
        Events.CallRemote("SpawnSound", player, Vector(), "quake-announcer::A_LastPlace", true, 1, 1)
      end
      Chat.BroadcastMessage(tostring(rank) ..
        "# <cyan>" .. player:GetName() .. "</>: " .. tostring(player:GetValue("Score") or 0))
    end

    Chat.BroadcastMessage("<grey>=============================</>")

    Console.Log("[Deathmatch] Post time!")
    Chat.BroadcastMessage("<grey>Post time!</>")
  end

  -- Sends to the player the new match state
  UpdatePlayerMatchState()
end

-- When player joins and/or is ready
Events.SubscribeRemote("PlayerReady", function(player)
  -- If the match is about to end, don't do nothing
  if (Deathmatch.match_state ~= MATCH_STATES.POST_TIME) then
    -- Respawns the character
    local character = RespawnPlayer(player)
    -- If is preparing, freeze him
    if (Deathmatch.match_state == MATCH_STATES.PREPARING) then
      character:SetInputEnabled(false)
      character:SetFlyingMode(true)
    end
  end

  -- Sends him the match state
  UpdatePlayerMatchState(player)

  Chat.BroadcastMessage("<cyan>" .. player:GetName() .. "</> has joined the server")
end)

-- When Player leaves the server
Player.Subscribe("Destroy", function(player)
  -- Destroy it's Character
  local character = player:GetControlledCharacter()
  if (character) then
    character:Destroy()
  end

  Chat.BroadcastMessage("<cyan>" .. player:GetName() .. "</> has left the server")
end)

-- Helper for cleaning up deathmatch data from player
function CleanUp()
  for k, player in pairs(Player.GetAll()) do
    player:SetValue("Kills", 0, true)
    player:SetValue("LastKillAt", 0, true)
    player:SetValue("MultiKillCount", 0, true)
    player:SetValue("Deaths", 0, true)
    player:SetValue("Score", 0, true)
    player:SetValue("KillStreak", 0, true)
    player:SetValue("Weapon", nil)
    player:SetValue("AccumulatedKills", 0)
    RespawnPlayer(player)
  end
end

-- Helper for spawning/respawning a character for a Player
--
--
function ClearVicinity(location, radius)
  local sphere_trigger = Trigger(location, Rotator(), Vector(radius), TriggerType.Sphere, false, Color(1, 0, 0))
  sphere_trigger:SetOverlapOnlyClasses({ "StaticMesh" })
  sphere_trigger:Subscribe("BeginOverlap", function(trigger, actor_triggering)
    actor_triggering:Destroy()
  end)
  Timer.SetTimeout(function()
    sphere_trigger:Destroy()
  end, 100)
end

NumberOfAlivePlayers = 0
function RespawnPlayer(player)
  if player == nil then return end
  if player:IsValid() == false then return end

  local character = player:GetControlledCharacter()
  if character then
    character:Destroy()
    character = nil
  end

  local weapon = player:GetValue("Weapon")

  if (weapon and weapon:IsValid()) then
    weapon:Destroy()
  end
  local spawn_location = Vector(0, 0, 2000)
  if #DeathmatchSettings.spawn_locations ~= 0 then
    spawn_location = DeathmatchSettings.spawn_locations[math.random(#DeathmatchSettings.spawn_locations)] +
        Vector(0, 0, -100)
    ClearVicinity(spawn_location + Vector(0, 0, 50), 200)
  end
  -- If player already has a character
  if (character) then
    -- If has a weapon, destroys it
    local weapon = player:GetValue("Weapon")

    if (weapon and weapon:IsValid()) then
      weapon:Destroy()
    end

    -- Respawns the character
    character:Respawn(spawn_location)
  else
    -- character = Character(spawn_location.location, spawn_location.rotation, "nanos-world::SK_Mannequin")
    -- Spawns a new character
    character = Character(spawn_location, Rotator(), "nanos-world::SK_Mannequin")
    character:SetCameraMode(CameraMode.FPSOnly)
    character:SetGravityScale(0.5)
    character:SetJumpZVelocity(500)
    character:SetFallDamageTaken(0)
    character:SetAccelerationSettings(2048, 512, 1024, 9000, 256, 256, 1024)
    character:SetBrakingSettings(96, 96, 96, 3000, 10, 0)
    kill_z = Timer.SetInterval(function(_character)
      if (character:GetLocation().Z < DeathmatchSettings.kill_z) then
        _character:SetHealth(0)
      end
    end, 1000, character)

    -- Binds the Timer to the Character
    Timer.Bind(kill_z, character)
    player:Possess(character, 1, 1)
  end

  if (Deathmatch.match_state == MATCH_STATES.PREPARING) then
    character:SetInputEnabled(false)
  end

  -- Spawns a new weapon
  local weapon = SpawnWeapon(player)

  player:SetValue("Weapon", weapon)

  if (weapon) then
    character:PickUp(weapon)
  end

  -- Sets the character invulnerable for 3 seconds
  character:SetInvulnerable(true)
  character:SetMaterialColorParameter("Tint", Color.BLUE)

  Timer.Bind(
    Timer.SetTimeout(function(_character)
      _character:SetMaterialColorParameter("Tint", Color.RandomPalette())
      _character:SetInvulnerable(false)
    end, 3000, character),
    character
  )

  return character
end

function SpawnBot()
  local spawn_location = DeathmatchSettings.spawn_locations[math.random(#DeathmatchSettings.spawn_locations)] +
      Vector(0, 0, -100)

  local character = Bot(spawn_location, Rotator(), "nanos-world::SK_Mannequin")
  character:SetCameraMode(CameraMode.FPSOnly)
  character:SetGravityScale(0.35)
  character:SetJumpZVelocity(500)
  character:SetFallDamageTaken(0)
  character:SetAccelerationSettings(2048, 512, 1024, 128, 256, 256, 1024)
  character:SetBrakingSettings(96, 96, 96, 3000, 10, 0)
  kill_z = Timer.SetInterval(function(_character)
    if (character:GetLocation().Z < DeathmatchSettings.kill_z) then
      _character:SetHealth(0)
    end
  end, 1000, character)

  -- Binds the Timer to the Character
  Timer.Bind(kill_z, character)
  if (Deathmatch.match_state == MATCH_STATES.PREPARING) then
    character:SetInputEnabled(false)
  end

  -- Spawns a new weapon
  local weapon = SpawnWeapon(character)
  character:PickUp(weapon)

  -- Sets the character invulnerable for 3 seconds
  character:SetInvulnerable(true)
  character:SetMaterialColorParameter("Tint", Color.BLUE)

  Timer.Bind(
    Timer.SetTimeout(function(_character)
      _character:SetMaterialColorParameter("Tint", Color.RandomPalette())
      _character:SetInvulnerable(false)
    end, 3000, character),
    character
  )

  return character
end

-- Helper for spawning weapons
function SpawnWeapon(player)
  local weapon = nil

  local weapon_func = nil
  if UniqueRound == true then
    weapon_func = UniqueFunc
  else
    weapon_func = DefaultWeapons[math.random(#DefaultWeapons)]
  end

  weapon = weapon_func()
  weapon:SetAmmoBag(weapon:GetAmmoClip() * 100)
  weapon:SetMaterialTextureParameter("PatternTexture",
    "assets://nanos-world/Textures/Pattern/" .. PatternList[math.random(#PatternList)])
  weapon:SetMaterialScalarParameter("PatternBlend", 1)
  weapon:SetMaterialScalarParameter("PatternTiling", 2)
  weapon:SetMaterialScalarParameter("PatternRoughness", 0.3)

  return weapon
end

-- Helper for spawning a Power Up
function SpawnPowerUp(location)
  local new_location = location + Vector(0, 0, 30)

  -- Spawns 2 props for making a cross
  local powerup_01 = Prop(new_location, Rotator(), "nanos-world::SM_Cube", CollisionType.NoCollision, false, false)
  powerup_01:SetScale(Vector(0.75, 0.25, 0.25))
  powerup_01:SetMaterialColorParameter("Emissive", Color.GREEN * 5)

  local powerup_02 = Prop(new_location, Rotator(), "nanos-world::SM_Cube", CollisionType.NoCollision, false, false)
  powerup_02:SetScale(Vector(0.25, 0.25, 0.75))
  powerup_02:SetMaterialColorParameter("Emissive", Color.GREEN * 5)

  -- Spawns a trigger to activate the power up in a character
  local trigger = Trigger(new_location, Rotator(), Vector(100), TriggerType.Sphere, false)

  -- Attaches the PowerUp props, so they get destroyed immediately when trigger is destroyed
  powerup_01:AttachTo(trigger, AttachmentRule.SnapToTarget, "", 0)
  powerup_02:AttachTo(trigger, AttachmentRule.SnapToTarget, "", 0)

  -- If a character overlaps it, he gets the power up
  trigger:Subscribe("BeginOverlap", function(self, object)
    if (object:IsA(Character) and object:GetHealth() > 0) then
      -- Gives Health
      object:SetHealth(math.min(object:GetHealth() + 50, 120))
      object:SetSpeedMultiplier(object:GetSpeedMultiplier() + 0.1)

      -- Gives Ammo
      local weapon = object:GetPicked()
      if (weapon and weapon:IsA(Weapon)) then
        weapon:SetAmmoBag(math.min(weapon:GetAmmoBag() + 50, 100))
      end

      -- Calls remote to force the player to update the Health/Ammo HUD
      Events.CallRemote("PickedUpPowerUp", object:GetPlayer())

      self:Destroy()
    end
  end)

  -- Destroys the Power Up after 30 seconds
  trigger:SetLifeSpan(30)
end

-- Helper for updating the player's match state
function UpdatePlayerMatchState(player)
  if (player) then
    Events.CallRemote("UpdateMatchState", player, Deathmatch.match_state, Deathmatch.remaining_time)
  else
    Events.BroadcastRemote("UpdateMatchState", Deathmatch.match_state, Deathmatch.remaining_time)
  end
end

-- Helper for decreasing the current match state
function DecreaseRemainingTime()
  Deathmatch.remaining_time = Deathmatch.remaining_time - 1
  return (Deathmatch.remaining_time <= 0)
end

-- Helper for announcing the current match time
function AnnounceCountdown()
  if (Deathmatch.remaining_time == 300) then
    Events.BroadcastRemote("SpawnSound", Vector(), "quake-announcer::A_Countdown_05_Minutes", true, 1, 1)
    return
  end
  if (Deathmatch.remaining_time == 180) then
    Events.BroadcastRemote("SpawnSound", Vector(), "quake-announcer::A_Countdown_03_Minutes", true, 1, 1)
    return
  end
  if (Deathmatch.remaining_time == 60) then
    Events.BroadcastRemote("SpawnSound", Vector(), "quake-announcer::A_Countdown_01_Minute", true, 1, 1)
    return
  end
  if (Deathmatch.remaining_time == 30) then
    Events.BroadcastRemote("SpawnSound", Vector(), "quake-announcer::A_Countdown_30_Seconds", true, 1, 1)
    return
  end
  if (Deathmatch.remaining_time == 10) then
    Events.BroadcastRemote("SpawnSound", Vector(), "quake-announcer::A_Countdown_10", true, 1, 1)
    return
  end
  if (Deathmatch.remaining_time == 9) then
    Events.BroadcastRemote("SpawnSound", Vector(), "quake-announcer::A_Countdown_09", true, 1, 1)
    return
  end
  if (Deathmatch.remaining_time == 8) then
    Events.BroadcastRemote("SpawnSound", Vector(), "quake-announcer::A_Countdown_08", true, 1, 1)
    return
  end
  if (Deathmatch.remaining_time == 7) then
    Events.BroadcastRemote("SpawnSound", Vector(), "quake-announcer::A_Countdown_07", true, 1, 1)
    return
  end
  if (Deathmatch.remaining_time == 6) then
    Events.BroadcastRemote("SpawnSound", Vector(), "quake-announcer::A_Countdown_06", true, 1, 1)
    return
  end
  if (Deathmatch.remaining_time == 5) then
    Events.BroadcastRemote("SpawnSound", Vector(), "quake-announcer::A_Countdown_05", true, 1, 1)
    return
  end
  if (Deathmatch.remaining_time == 4) then
    Events.BroadcastRemote("SpawnSound", Vector(), "quake-announcer::A_Countdown_04", true, 1, 1)
    return
  end
  if (Deathmatch.remaining_time == 3) then
    Events.BroadcastRemote("SpawnSound", Vector(), "quake-announcer::A_Countdown_03", true, 1, 1)
    return
  end
  if (Deathmatch.remaining_time == 2) then
    Events.BroadcastRemote("SpawnSound", Vector(), "quake-announcer::A_Countdown_02", true, 1, 1)
    return
  end
  if (Deathmatch.remaining_time == 1) then
    Events.BroadcastRemote("SpawnSound", Vector(), "quake-announcer::A_Prepare", true, 1, 1)
    return
  end
end

Timer.SetInterval(function()
  if (Deathmatch.match_state == MATCH_STATES.WARM_UP) then
    if (DecreaseRemainingTime()) then
      UpdateMatchState(MATCH_STATES.PREPARING)
    end
  elseif (Deathmatch.match_state == MATCH_STATES.PREPARING) then
    if (DecreaseRemainingTime()) then
      UpdateMatchState(MATCH_STATES.IN_PROGRESS)
    else
      AnnounceCountdown()
    end
  elseif (Deathmatch.match_state == MATCH_STATES.IN_PROGRESS) then
    if (DecreaseRemainingTime()) then
      UpdateMatchState(MATCH_STATES.POST_TIME)
    else
      AnnounceCountdown()
    end
  elseif (Deathmatch.match_state == MATCH_STATES.POST_TIME) then
    if (DecreaseRemainingTime()) then
      UpdateMatchState(MATCH_STATES.PREPARING)
    end
  end
end, 1000)

-- Catches a custom event "MapLoaded" to override this script spawn locations
Events.Subscribe("MapLoaded", function(map_custom_spawn_locations)
  DeathmatchSettings.spawn_locations = map_custom_spawn_locations
end)
