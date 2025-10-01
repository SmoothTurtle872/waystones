$execute in $(dimension) positioned $(x) $(y) $(z) run forceload add ~ ~ ~ ~
$execute in $(dimension) positioned $(x) $(y) $(z) if entity @n[tag=waystones.waystone.hitbox,distance=..0.5] run return fail
return 1
