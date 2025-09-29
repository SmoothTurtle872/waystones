execute as @e[type=armor_stand, tag=waystones.waystone.setup] at @s run function waystones:waystone/place
execute as @e[type=interaction, tag=waystones.waystone, tag=waystones.waystone.hitbox] at @s run function waystones:waystone/tick

execute as @a[tag=!waystones.has_id] run function waystones:generate_id with entity @s