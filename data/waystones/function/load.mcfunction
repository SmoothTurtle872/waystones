tellraw @a [{"text": "The code is load!", "color":"green"},{"text": " (Waystones Datapack)", "color": "gray"}]

scoreboard objectives add waystones.internal dummy
execute unless score initialised waystones.internal matches 2.. run data merge storage waystones:settings {cooldown:15,use_time:1,data:"{cooldown:$(cooldown),use_time:$(use_time),cross_dimensional_xp_requirement:$(cross_dimensional_xp_requirement),same_dimensional_xp_requirement:$(same_dimensional_xp_requirement),xp_cost:$(xp_cost)}",cross_dimensional_xp_requirement:true,same_dimensional_xp_requirement:false,xp_cost:3}
scoreboard players set initialised waystones.internal 2


scoreboard objectives add waystones.id dummy
execute unless score next waystones.id = @s waystones.id run scoreboard players set next waystones.id 0

scoreboard objectives add waystones.teleport trigger