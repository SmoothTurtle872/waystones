execute on target run data modify storage waystones:temp stone.dimension set from entity @s Dimension
execute store result storage waystones:temp stone.x int 1 run data get entity @s Pos[0]
execute store result storage waystones:temp stone.y int 1 run data get entity @s Pos[1]
execute store result storage waystones:temp stone.z int 1 run data get entity @s Pos[2]
data modify storage waystones:temp stone.name set from entity @s CustomName
execute on target store result storage waystones:temp stone.player_id int 1 run function waystones:get_id
execute if function waystones:waystone/detect_save/wrapper run return 0
function waystones:waystone/save_stone with storage waystones:temp stone