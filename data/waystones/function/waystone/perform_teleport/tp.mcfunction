$execute if function waystones:waystone/perform_teleport/detect_still_exists run return run function waystones:waystone/perform_teleport/on_no_waystone_found {dimension:"$(dimension)",x:$(x),y:$(y),z:$(z),name:"$(name)"}
playsound entity.enderman.teleport player @a ~ ~ ~
particle minecraft:reverse_portal ~ ~1 ~ 0.1 0.5 0.1 0.1 100
$execute in $(dimension) positioned $(x) $(y) $(z) run tp @s ~ ~1 ~
execute at @s run playsound entity.enderman.teleport player @a ~ ~ ~
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.1 0.5 0.1 0.1 100