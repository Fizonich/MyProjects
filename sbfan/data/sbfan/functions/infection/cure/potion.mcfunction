# Плохое зелье #

execute at @e[type=item,nbt={Item:{tag:{Strange:1}}}] if entity @e[type=item,nbt={Item:{id:"minecraft:enchanted_golden_apple",Count:1b}},distance=..0.5] if entity @e[type=item,nbt={Item:{tag:{Potion:"minecraft:long_weakness"}}},distance=..0.5] if block ~ ~ ~ minecraft:moving_piston[facing=down] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",tag:{Cure:0, custom_potion_effects:[{amplifier:4,show_particles:0b,id:resistance,duration:18000}],CustomPotionColor:3679355,display:{Name:'"Saint-Julien"',Lore:['"Вакцина от скалкового вируса. Невозможно синтезировать в зельеварке."']}},Count:1b}}

execute at @e[nbt={Item:{tag:{Cure:0}}}] if entity @e[type=item,nbt={Item:{tag:{Strange:1}}},distance=..0.5] run kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_golden_apple"}},distance=..0.5,limit=1]
execute at @e[nbt={Item:{tag:{Cure:0}}}] if entity @e[type=item,nbt={Item:{tag:{Strange:1}}},distance=..0.5] run kill @e[type=item,nbt={Item:{tag:{Potion:"minecraft:long_weakness"}}},distance=..0.5,limit=1]
execute at @e[nbt={Item:{tag:{Cure:0}}}] if entity @e[type=item,nbt={Item:{tag:{Strange:1}}},distance=..0.5] run particle minecraft:white_smoke ~ ~ ~ 0.3 0 0.3 0.1 100
execute at @e[nbt={Item:{tag:{Cure:0}}}] if entity @e[type=item,nbt={Item:{tag:{Strange:1}}},distance=..0.5] run playsound minecraft:entity.armadillo.brush ambient @a ~ ~ ~ 1 0.75


execute at @e[nbt={Item:{tag:{Cure:0}}}] if entity @e[type=item,nbt={Item:{tag:{Strange:1}}},distance=..0.5] run kill @e[type=item,nbt={Item:{tag:{Strange:1}}},distance=..0.5,limit=1]

execute at @e[type=item,nbt={Item:{tag:{Strange:1}}}] if entity @e[type=item,nbt={Item:{id:"minecraft:enchanted_golden_apple",Count:1b}},distance=..0.5] if entity @e[type=item,nbt={Item:{tag:{Potion:"minecraft:weakness"}}},distance=..0.5] if block ~ ~ ~ minecraft:moving_piston[facing=down] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",tag:{Cure:0, custom_potion_effects:[{amplifier:4,show_particles:0b,id:resistance,duration:18000}],CustomPotionColor:3679355,display:{Name:'"Saint-Julien"',Lore:['"Вакцина от скалкового вируса. Невозможно синтезировать в зельеварке."']}},Count:1b}}

execute at @e[nbt={Item:{tag:{Cure:0}}}] if entity @e[type=item,nbt={Item:{tag:{Strange:1}}},distance=..0.5] run kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_golden_apple"}},distance=..0.5,limit=1]
execute at @e[nbt={Item:{tag:{Cure:0}}}] if entity @e[type=item,nbt={Item:{tag:{Strange:1}}},distance=..0.5] run kill @e[type=item,nbt={Item:{tag:{Potion:"minecraft:weakness"}}},distance=..0.5,limit=1]
execute at @e[nbt={Item:{tag:{Cure:0}}}] if entity @e[type=item,nbt={Item:{tag:{Strange:1}}},distance=..0.5] run particle minecraft:white_smoke ~ ~ ~ 0.3 0 0.3 0.1 100
execute at @e[nbt={Item:{tag:{Cure:0}}}] if entity @e[type=item,nbt={Item:{tag:{Strange:1}}},distance=..0.5] run playsound minecraft:entity.armadillo.brush ambient @a ~ ~ ~ 1 0.75

execute at @e[nbt={Item:{tag:{Cure:0}}}] if entity @e[type=item,nbt={Item:{tag:{Strange:1}}},distance=..0.5] run kill @e[type=item,nbt={Item:{tag:{Strange:1}}},distance=..0.5,limit=1]

# Хорошее зелье #

execute at @e[type=item,nbt={Item:{tag:{Saint:1}}}] if entity @e[type=item,nbt={Item:{id:"minecraft:enchanted_golden_apple",Count:1b}},distance=..0.5] if entity @e[type=item,nbt={Item:{tag:{Potion:"minecraft:long_weakness"}}},distance=..0.5] if block ~ ~ ~ minecraft:moving_piston[facing=down] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",tag:{Cure:1, custom_potion_effects:[{amplifier:4,show_particles:0b,id:resistance,duration:36000}],CustomPotionColor:16334538,display:{Name:'"Saint-Julien"',Lore:['"Вакцина от скалкового вируса. Невозможно синтезировать в зельеварке."']}},Count:1b}}

execute at @e[nbt={Item:{tag:{Cure:1}}}] if entity @e[type=item,nbt={Item:{tag:{Saint:1}}},distance=..0.5] run kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_golden_apple"}},distance=..0.5,limit=1]
execute at @e[nbt={Item:{tag:{Cure:1}}}] if entity @e[type=item,nbt={Item:{tag:{Saint:1}}},distance=..0.5] run kill @e[type=item,nbt={Item:{tag:{Potion:"minecraft:long_weakness"}}},distance=..0.5,limit=1]
execute at @e[nbt={Item:{tag:{Cure:1}}}] if entity @e[type=item,nbt={Item:{tag:{Saint:1}}},distance=..0.5] run particle minecraft:white_smoke ~ ~ ~ 0.3 0 0.3 0.1 100
execute at @e[nbt={Item:{tag:{Cure:1}}}] if entity @e[type=item,nbt={Item:{tag:{Saint:1}}},distance=..0.5] run playsound minecraft:entity.armadillo.brush ambient @a ~ ~ ~ 1 0.75

execute at @e[nbt={Item:{tag:{Cure:1}}}] if entity @e[type=item,nbt={Item:{tag:{Saint:1}}},distance=..0.5] run kill @e[type=item,nbt={Item:{tag:{Saint:1}}},distance=..0.5,limit=1]


execute at @e[type=item,nbt={Item:{tag:{Saint:1}}}] if entity @e[type=item,nbt={Item:{id:"minecraft:enchanted_golden_apple",Count:1b}},distance=..0.5] if entity @e[type=item,nbt={Item:{tag:{Potion:"minecraft:weakness"}}},distance=..0.5] if block ~ ~ ~ minecraft:moving_piston[facing=down] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",tag:{Cure:1, custom_potion_effects:[{amplifier:4,show_particles:0b,id:resistance,duration:36000}],CustomPotionColor:16334538,display:{Name:'"Saint-Julien"',Lore:['"Вакцина от скалкового вируса. Невозможно синтезировать в зельеварке."']}},Count:1b}}

execute at @e[nbt={Item:{tag:{Cure:1}}}] if entity @e[type=item,nbt={Item:{tag:{Saint:1}}},distance=..0.5] run kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_golden_apple"}},distance=..0.5,limit=1]
execute at @e[nbt={Item:{tag:{Cure:1}}}] if entity @e[type=item,nbt={Item:{tag:{Saint:1}}},distance=..0.5] run kill @e[type=item,nbt={Item:{tag:{Potion:"minecraft:weakness"}}},distance=..0.5,limit=1]
execute at @e[nbt={Item:{tag:{Cure:1}}}] if entity @e[type=item,nbt={Item:{tag:{Saint:1}}},distance=..0.5] run particle minecraft:white_smoke ~ ~ ~ 0.3 0 0.3 0.1 100
execute at @e[nbt={Item:{tag:{Cure:1}}}] if entity @e[type=item,nbt={Item:{tag:{Saint:1}}},distance=..0.5] run playsound minecraft:entity.armadillo.brush ambient @a ~ ~ ~ 1 0.75

execute at @e[nbt={Item:{tag:{Cure:1}}}] if entity @e[type=item,nbt={Item:{tag:{Saint:1}}},distance=..0.5] run kill @e[type=item,nbt={Item:{tag:{Saint:1}}},distance=..0.5,limit=1]