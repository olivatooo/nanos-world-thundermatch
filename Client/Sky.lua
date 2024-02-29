Events.SubscribeRemote("ChangeWeather", function(weather, time)
  Sky.ChangeWeather(weather, time)
end)

Events.SubscribeRemote("ChangeTime", function(hours, minutes)
  Sky.SetTimeOfDay(hours, minutes)
  UpdateTimeOfDayValue(hours, minutes)
end)

Events.SubscribeRemote("SpawnSky", function(current_weather)
  Sky.Spawn(true)
  Sky.SetTimeOfDay(gmt_time.hour, gmt_time.min)
  Sky.ChangeWeather(current_weather, 0)
end)
