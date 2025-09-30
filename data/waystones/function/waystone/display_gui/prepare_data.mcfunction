$data modify storage waystones:temp stone set value $(element)
execute store result storage waystones:temp stone.id int 1 run scoreboard players get loop1.current tc.loop.array
function waystones:waystone/display_gui/add_to_list with storage waystones:temp stone