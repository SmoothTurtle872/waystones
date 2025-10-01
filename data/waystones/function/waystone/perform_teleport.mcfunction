execute store result storage waystones:temp player.selected_stone int 1 run scoreboard players get @s waystones.teleport
function waystones:get_player_stones
function waystones:waystone/perform_teleport/return_data with storage waystones:temp player
execute at @s run function waystones:waystone/perform_teleport/tp with storage waystones:temp player.selected_stone

