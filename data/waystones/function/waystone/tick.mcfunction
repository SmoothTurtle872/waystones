execute unless block ~ ~ ~ lodestone run return run function waystones:waystone/remove

execute if data entity @s interaction run function waystones:waystone/detect_save
execute on target run function waystones:waystone/display_gui
execute if data entity @s interaction run data remove entity @s interaction
