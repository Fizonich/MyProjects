setblock ~ ~ ~ minecraft:cauldron
kill @e[type=item,nbt={Item:{id:"minecraft:suspicious_stew",tag:{effects:[{id:"minecraft:saturation",duration:7}]},Count:1b}},distance=..0.5]
kill @e[type=item,distance=..0.5,nbt={Item:{Count:1b,tag:{Flesh:1}}}]
playsound minecraft:block.brewing_stand.brew ambient @a ~ ~ ~ 1
particle minecraft:witch ~ ~0.5 ~ 0 0 0 1 30
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:suspicious_stew",tag:{display:{Name:'"Filtro-Creatos"', Lore: ['"Загадочный суп, способный навеки утолить голод любого заражённого."']},Hunger:1,effects:[{id:"minecraft:saturation",duration:21}]},Count:1b}}
