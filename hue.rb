require 'hue'

client = Hue::Client.new
light = client.lights.first
light.on = true
light.hue = 46920
light.color_temperature = 100
light.set_state({:color_temperature => 400, :transition => 100})