tellraw @a [{"text": "The code is load!", "color":"green"},{"text": " (Waystones Datapack)", "color": "gray"}]

execute unless score initialised waystones.internal matches 1.. run data merge storage waystones:settings {cooldown:15,use_time:1,data:"{cooldown:$(cooldown),use_time:$(use_time)}"}

scoreboard objectives add waystones.internal dummy
scoreboard players set initialised waystones.internal 1

scoreboard objectives add waystones.id dummy
execute unless score next waystones.id = @s waystones.id run scoreboard players set next waystones.id 0

scoreboard objectives add waystones.teleport trigger