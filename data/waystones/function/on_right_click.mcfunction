execute store result storage waystones:temp vals.X int 1 run data get entity @s SelectedItem.components.minecraft:lodestone_tracker.target.pos[0]
execute store result storage waystones:temp vals.Y int 1 run data get entity @s SelectedItem.components.minecraft:lodestone_tracker.target.pos[1]
execute store result storage waystones:temp vals.Z int 1 run data get entity @s SelectedItem.components.minecraft:lodestone_tracker.target.pos[2]
data modify storage waystones:temp vals.dimension set from entity @s SelectedItem.components.minecraft:lodestone_tracker.target.dimension
item replace entity @s weapon.mainhand with compass
function waystones:tp with storage waystones:temp vals


advancement revoke @s only waystones:on_right_click