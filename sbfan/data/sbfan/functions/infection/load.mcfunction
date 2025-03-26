execute at @e[type=item,nbt={Item:{tag:{Saint:1}}}] run function sbfan:infection/cure/potion
execute at @e[type=item,nbt={Item:{tag:{Strange:1}}}] run function sbfan:infection/cure/potion

execute at @e[type=item,nbt={Item:{id:"minecraft:ender_eye", Count:2b}}] if entity @e[type=item,nbt={Item:{id:"minecraft:glass", Count:2b}},distance=..0.5] if block ~ ~-1 ~ #minecraft:anvil run function sbfan:infection/eyes/craft
execute at @a[nbt={Inventory:[{Slot:103b,tag:{Eyes:1}}]}] run function sbfan:infection/eyes/equip
execute if entity @a[scores={EyesTimer=..864000}] run function sbfan:infection/eyes/old

execute at @e[type=item,nbt={Item:{id:"minecraft:suspicious_stew",tag:{effects:[{id:"minecraft:saturation",duration:7}]},Count:1b}}] if entity @e[type=item,distance=..0.5,nbt={Item:{Count:1b,tag:{Flesh:1}}}] if block ~ ~ ~ minecraft:water_cauldron[level=3] run function sbfan:infection/hunger/craft
execute at @a[nbt={active_effects:[{id:"minecraft:saturation",duration:20}]}] run function sbfan:infection/hunger/eat

execute at @e[type=item,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strength"}}}] if entity @e[type=item,nbt={Item:{id:"minecraft:wet_sponge",Count:1b}},distance=..0.5] if entity @e[type=item,nbt={Item:{id:"minecraft:nether_star",Count:1b}},distance=..0.5] if block ~ ~ ~ minecraft:moving_piston[facing=down] run function sbfan:infection/haste/craft
execute at @e[type=item,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_strength"}}}] if entity @e[type=item,nbt={Item:{id:"minecraft:wet_sponge",Count:1b}},distance=..0.5] if entity @e[type=item,nbt={Item:{id:"minecraft:nether_star",Count:1b}},distance=..0.5] if block ~ ~ ~ minecraft:moving_piston[facing=down] run function sbfan:infection/haste/craft
execute at @e[type=item,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_strength"}}}] if entity @e[type=item,nbt={Item:{id:"minecraft:wet_sponge",Count:1b}},distance=..0.5] if entity @e[type=item,nbt={Item:{id:"minecraft:nether_star",Count:1b}},distance=..0.5] if block ~ ~ ~ minecraft:moving_piston[facing=down] run function sbfan:infection/haste/craft

execute at @a[nbt={active_effects:[{id:"minecraft:strength",duration:36000}]}] run function sbfan:infection/haste/use

execute at @e[nbt={Item:{tag:{Cure:1}}}] if block ~ ~-1 ~ minecraft:sculk_catalyst[bloom=true] run function sbfan:infection/freeze/appear
execute at @a[nbt={active_effects:[{id:"minecraft:fire_resistance",duration:36000}]}] run function sbfan:infection/freeze/use

execute at @e[type=item,nbt={Item:{Count:1b,tag:{Cure:1}}}] if entity @e[type=item,nbt={Item:{Count:1b,tag:{Strange:1}}},distance=..0.5] if block ~ ~ ~ minecraft:moving_piston[facing=down] run function sbfan:infection/ultra/craft
execute at @a[nbt={active_effects:[{id:"minecraft:resistance",duration:72000}]}] run function sbfan:infection/ultra/use

execute at @e[type=item,nbt={Item:{tag:{Cure:1}}}] run function sbfan:infection/cure/arrow
execute at @e[type=item,nbt={Item:{tag:{Cure:0}}}] run function sbfan:infection/cure/arrow

execute at @a[tag=Infect,nbt={active_effects:[{id:"minecraft:absorption",duration:2399},{id:"minecraft:weakness"}]},scores={InfectStage=1..3}] run function sbfan:infection/cure/apple
execute at @a[tag=Heal] run function sbfan:infection/cure/apple
execute at @a[nbt={active_effects:[{id:"minecraft:resistance",duration:36000}]}] run function sbfan:infection/cure/good
execute at @a[nbt={active_effects:[{id:"minecraft:resistance",duration:18000}]}] run function sbfan:infection/cure/bad
execute at @e[x=-50,y=57,z=-65,dx=114,dy=90,dz=102,type=minecraft:item,nbt={Item:{tag:{Strange:1}}}] if block ~ ~-1 ~ minecraft:cherry_wood run function sbfan:infection/cure/sakura

function sbfan:infection/firststage/start
execute if entity @a[tag=Infect,scores={InfectStage=1}] run function sbfan:infection/firststage/infect
execute if entity @a[tag=Infect,scores={InfectStage=2}] run function sbfan:infection/secondstage/infect
execute if entity @a[tag=Infect,scores={InfectStage=3}] run function sbfan:infection/thirdstage/infect

execute if entity @a[tag=Infect,scores={InfectStage=3,InfectHunger=65980..}] run function sbfan:infection/thirdstage/hunger
execute at @a[tag=BeastDead] run function sbfan:infection/thirdstage/hunger
execute at @a[tag=Infect,scores={InfectStage=3,InfectKill=1}] run function sbfan:infection/thirdstage/hunger