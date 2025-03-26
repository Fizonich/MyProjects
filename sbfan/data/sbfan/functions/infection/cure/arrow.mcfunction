# Плохая стрела #

execute at @e[type=item,nbt={Item:{tag:{Cure:0}}}] if entity @e[type=item,nbt={Item:{id:"minecraft:arrow",Count:1b}},distance=..0.5] if block ~ ~ ~ minecraft:water_cauldron run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",tag:{Infect:1, custom_potion_effects:[{amplifier:4,show_particles:0b,id:resistance,duration:18001}],CustomPotionColor:3679355,display:{Name:'"Sagitta-Sacra"',Lore:['"Стрела, смазанная вакциной от скалкового вируса."']}},Count:1b}}

execute at @e[nbt={Item:{tag:{Infect:1}}}] if entity @e[type=item,nbt={Item:{tag:{Cure:0}}},distance=..0.5] run kill @e[type=item,nbt={Item:{id:"minecraft:arrow"}},distance=..0.5,limit=1]
execute at @e[nbt={Item:{tag:{Infect:1}}}] if entity @e[type=item,nbt={Item:{tag:{Cure:0}}},distance=..0.5] run particle minecraft:witch ~ ~0.3 ~ 0.1 0.1 0.1 1 50
execute at @e[nbt={Item:{tag:{Infect:1}}}] if entity @e[type=item,nbt={Item:{tag:{Cure:0}}},distance=..0.5] run playsound minecraft:block.brewing_stand.brew ambient @a ~ ~ ~ 1 1

execute at @e[nbt={Item:{tag:{Infect:1}}}] if entity @e[type=item,nbt={Item:{tag:{Cure:0}}},distance=..0.5] if block ~ ~ ~ minecraft:water_cauldron[level=1] run setblock ~ ~ ~ minecraft:cauldron
execute at @e[nbt={Item:{tag:{Infect:1}}}] if entity @e[type=item,nbt={Item:{tag:{Cure:0}}},distance=..0.5] if block ~ ~ ~ minecraft:water_cauldron[level=2] run setblock ~ ~ ~ minecraft:water_cauldron[level=1]
execute at @e[nbt={Item:{tag:{Infect:1}}}] if entity @e[type=item,nbt={Item:{tag:{Cure:0}}},distance=..0.5] if block ~ ~ ~ minecraft:water_cauldron[level=3] run setblock ~ ~ ~ minecraft:water_cauldron[level=2]

execute at @e[nbt={Item:{tag:{Infect:1}}}] if entity @e[type=item,nbt={Item:{tag:{Cure:0}}},distance=..0.5] run kill @e[type=item,nbt={Item:{tag:{Cure:0}}},distance=..0.5,limit=1]

# Хорошая стрела #

execute at @e[type=item,nbt={Item:{tag:{Cure:1}}}] if entity @e[type=item,nbt={Item:{id:"minecraft:arrow",Count:1b}},distance=..0.5] if block ~ ~ ~ minecraft:water_cauldron run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",tag:{Infect:0, custom_potion_effects:[{amplifier:4,show_particles:0b,id:resistance,duration:36001}],CustomPotionColor:16334538,display:{Name:'"Sagitta-Sacra"',Lore:['"Стрела, смазанная вакциной от скалкового вируса."']}},Count:1b}}

execute at @e[nbt={Item:{tag:{Infect:0}}}] if entity @e[type=item,nbt={Item:{tag:{Cure:1}}},distance=..0.5] run kill @e[type=item,nbt={Item:{id:"minecraft:arrow"}},distance=..0.5,limit=1]
execute at @e[nbt={Item:{tag:{Infect:0}}}] if entity @e[type=item,nbt={Item:{tag:{Cure:1}}},distance=..0.5] run particle minecraft:witch ~ ~0.3 ~ 0.1 0.1 0.1 1 50
execute at @e[nbt={Item:{tag:{Infect:0}}}] if entity @e[type=item,nbt={Item:{tag:{Cure:1}}},distance=..0.5] run playsound minecraft:block.brewing_stand.brew ambient @a ~ ~ ~ 1 1

execute at @e[nbt={Item:{tag:{Infect:0}}}] if entity @e[type=item,nbt={Item:{tag:{Cure:1}}},distance=..0.5] if block ~ ~ ~ minecraft:water_cauldron[level=1] run setblock ~ ~ ~ minecraft:cauldron
execute at @e[nbt={Item:{tag:{Infect:0}}}] if entity @e[type=item,nbt={Item:{tag:{Cure:1}}},distance=..0.5] if block ~ ~ ~ minecraft:water_cauldron[level=2] run setblock ~ ~ ~ minecraft:water_cauldron[level=1]
execute at @e[nbt={Item:{tag:{Infect:0}}}] if entity @e[type=item,nbt={Item:{tag:{Cure:1}}},distance=..0.5] if block ~ ~ ~ minecraft:water_cauldron[level=3] run setblock ~ ~ ~ minecraft:water_cauldron[level=2]

execute at @e[nbt={Item:{tag:{Infect:0}}}] if entity @e[type=item,nbt={Item:{tag:{Cure:1}}},distance=..0.5] run kill @e[type=item,nbt={Item:{tag:{Cure:1}}},distance=..0.5,limit=1]