data modify storage waystones:temp player.stones set value []
function waystones:get_player_stones
data modify storage waystones:temp player.loop.function set value "waystones:waystone/display_gui/prepare_data"
data modify storage waystones:temp player.loop.args set value {}
function tc:array/loop with storage waystones:temp player.loop
function waystones:waystone/display_gui/show with storage waystones:temp player
scoreboard players enable @s waystones.teleport
scoreboard players set @s waystones.teleport -1