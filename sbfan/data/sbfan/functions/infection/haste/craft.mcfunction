kill @e[type=item,nbt={Item:{id:"minecraft:potion",Count:1b}},distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:wet_sponge",Count:1b}},distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:nether_star",Count:1b}},distance=..0.5]
particle minecraft:white_smoke ~ ~ ~ 0.3 0 0.3 0.1 100
playsound minecraft:entity.armadillo.brush ambient @a ~ ~ ~ 1 0.75
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",tag:{Haste:1,custom_potion_effects:[{amplifier:4,show_particles:0b,id:strength,duration:36000}],CustomPotionColor:16512045,display:{Name:'"Eksafis"',Lore:['"Особое снадобье, восстанавливающее утерянную силу кирки."']}},Count:1b}}