tellraw @a[nbt={active_effects:[{id:"minecraft:resistance",duration:36000}],Tags:["Infect"]}] {"text":"\u0412\u044b \u0447\u0443\u0432\u0441\u0442\u0432\u0443\u0435\u0442\u0435 \u0441\u0435\u0431\u044f \u043d\u0430\u043c\u043d\u043e\u0433\u043e \u043b\u0443\u0447\u0448\u0435.","color":"yellow"}
execute at @a[nbt={active_effects:[{id:"minecraft:resistance",duration:36000}],Tags:["Infect"]}] run playsound minecraft:entity.player.levelup ambient @a ~ ~ ~ 0.5
execute at @a[nbt={active_effects:[{id:"minecraft:resistance",duration:36000}],Tags:["Infect"]}] run particle minecraft:happy_villager ~ ~1 ~ 0.3 0.5 0.3 1 100
tag @a[nbt={active_effects:[{id:"minecraft:resistance",duration:36000}],Tags:["Infect"]}] add Resist
tag @a[nbt={active_effects:[{id:"minecraft:resistance",duration:36000}],Tags:["Infect"]}] remove Mutate
scoreboard players reset @a[nbt={active_effects:[{id:"minecraft:resistance",duration:36000}],Tags:["Infect"]}] InfectParticle
scoreboard players reset @a[nbt={active_effects:[{id:"minecraft:resistance",duration:36000}],Tags:["Infect"]}] InfectTimer
scoreboard players reset @a[nbt={active_effects:[{id:"minecraft:resistance",duration:36000}],Tags:["Infect"]}] InfectHunger
scoreboard players reset @a[nbt={active_effects:[{id:"minecraft:resistance",duration:36000}],Tags:["Infect"]}] InfectStage
scoreboard players reset @a[nbt={active_effects:[{id:"minecraft:resistance",duration:36000}],Tags:["Infect"]}] InfectMutation
team leave @a[nbt={active_effects:[{id:"minecraft:resistance",duration:36000}],Tags:["Infect"]}] 
advancement grant @a[nbt={active_effects:[{id:"minecraft:resistance",duration:36000}],Tags:["Infect"]}] only sbfan:infection/cured

tag @a[nbt={active_effects:[{id:"minecraft:resistance",duration:36000}],Tags:["Infect"]}] remove Infect
effect clear @a[nbt={active_effects:[{id:"minecraft:resistance",duration:36000}]}] minecraft:resistance