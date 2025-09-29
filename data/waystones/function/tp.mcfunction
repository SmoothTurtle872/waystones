playsound entity.enderman.teleport player @a ~ ~ ~
particle minecraft:reverse_portal ~ ~1 ~ 0.1 0.5 0.1 0.1 100
$execute in $(dimension) positioned $(X) $(Y) $(Z) run tp @s ~ ~1 ~
execute at @s run playsound entity.enderman.teleport player @a ~ ~ ~
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.1 0.5 0.1 0.1 100
$item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:custom_name":{"text":"Linked Compass","color":"yellow"},"minecraft:max_stack_size":1,"minecraft:item_name":{"text":"Linking Compass","color":"yellow"},"minecraft:item_model":"waystones:linking_compass","minecraft:lodestone_tracker":{"target":{"pos":[$(X),$(Y),$(Z)],"dimension":"$(dimension)"},"tracked":true},"minecraft:custom_data":{linking_compass:true}},"conditions":[]}
function waystones:set_components with storage waystones:settings