kill @e[type=item,nbt={Item:{Count:1b,tag:{Cure:1}}},distance=..0.5]
kill @e[type=item,nbt={Item:{Count:1b,tag:{Strange:1}}},distance=..0.5]
particle minecraft:white_smoke ~ ~ ~ 0.3 0 0.3 0.1 100
playsound minecraft:entity.armadillo.brush ambient @a ~ ~ ~ 1 0.75
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",tag:{Ultra:1,custom_potion_effects:[{amplifier:4,show_particles:0b,id:resistance,duration:72000}],CustomPotionColor:2367528,display:{Name:'"Asteneia"',Lore:['"Смертельное зелье, заражающее даже с иммунитетом."']}},Count:1b}}