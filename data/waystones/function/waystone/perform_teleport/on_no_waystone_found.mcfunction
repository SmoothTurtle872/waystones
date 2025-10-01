$execute in $(dimension) positioned $(x) $(y) $(z) run forceload remove ~ ~ ~ ~
title @s actionbar "Waystone No Longer Exists"
$data modify storage waystones:temp player.remove_stone_data set value {dimension:"$(dimension)",name:"$(name)",x:$(x),y:$(y),z:$(z)}
execute store result storage waystones:temp player.remove_stone_data.player_id int 1 run scoreboard players get @s waystones.id
function waystones:waystone/perform_teleport/on_no_waystone_found/remove_stone with storage waystones:temp player.remove_stone_data