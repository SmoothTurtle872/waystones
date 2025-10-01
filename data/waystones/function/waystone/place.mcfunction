tag @s add waystone.spawner
execute positioned ~ ~0.99 ~ align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
execute unless data entity @s CustomName run data modify entity @s CustomName set value "Unnamed Waystone"
rotate @s 0.0 0.0
execute at @s run setblock ~ ~ ~ lodestone
execute at @s run summon interaction ~ ~ ~ {width:0.8f,height:2f,Tags:["waystones.waystone.hitbox","waystones.waystone","setup"],Passengers:[{id:"minecraft:item_display",item_display:"head",Tags:["waystones.waystone.display","waystones.waystone"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1.45f,0f],scale:[1.1f,1.1f,1.1f]},item:{id:"minecraft:popped_chorus_fruit",count:1,components:{"minecraft:item_model":"waystones:waystone"}}}]}
execute at @s run execute as @n[distance=..1, tag=setup,tag=waystones.waystone,tag=waystones.waystone.hitbox] run data modify entity @s CustomName set from entity @n[tag=waystone.spawner] CustomName
execute at @s run execute as @n[distance=..1, tag=setup,tag=waystones.waystone,tag=waystones.waystone.hitbox] run tag @s remove setup
kill @s