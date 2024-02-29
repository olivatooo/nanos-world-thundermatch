SandboxSky = {
  current_weather = 5,                       -- PartlyCloudy
  probability_change_weather = 0.5,          -- 50% of chance
  weather_change_check_interval = 1000 * 30, -- 5 minutes
  weather_transition_time_min = 10,
  weather_transition_time_max = 20,
}

Package.Subscribe("Load", function()
  Events.BroadcastRemote("SpawnSky", SandboxSky.current_weather)
  Events.BroadcastRemote("ChangeTime", 16, 30)
  Timer.SetInterval(function()
    math.randomseed(os.time())
    if (math.random(0, 100) / 100 >= SandboxSky.probability_change_weather) then return end

    SandboxSky.current_weather = math.random(1, 13)
    local transition_time = math.random(SandboxSky.weather_transition_time_min,
      SandboxSky.weather_transition_time_max)

    Console.Log("Automatically changing Weather to '%d'.", SandboxSky.current_weather)

    Events.BroadcastRemote("ChangeWeather", SandboxSky.current_weather, transition_time)
  end, SandboxSky.weather_change_check_interval)
end)

Player.Subscribe("Spawn", function(player)
  Events.CallRemote("SpawnSky", player, SandboxSky.current_weather)
end)
