require 'lifx'

lifx = LIFX::Client.lan
lifx.discover!
sleep 2 # Wait for tag data to come back

light = if lifx.tags.include?('living_room')

pink = LIFX::Color.hsb(335, 1, 0.5)

light.turn_on!
light.set_color(color, duration: 0.2)