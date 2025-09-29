tag @s add waystones.has_id
$scoreboard players operation $(UUID) waystones.id = next waystones.id
execute store result storage waystones:temp player.id int 1 run scoreboard players get next waystones.id
function waystones:generate_id/initialise_storage with storage waystones:temp player
scoreboard players add next waystones.id 1