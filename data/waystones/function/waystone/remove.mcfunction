execute as @e[type=item, distance=..1] if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"contents":{"items":"minecraft:lodestone"}}}} run function waystones:waystone/drop
execute on passengers run kill @s
kill @s