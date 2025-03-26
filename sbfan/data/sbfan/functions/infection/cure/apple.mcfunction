tag @a[tag=Infect,nbt={active_effects:[{id:"minecraft:absorption",duration:2399},{id:"minecraft:weakness"}]},scores={InfectStage=3}] add Heal
playsound minecraft:entity.warden.heartbeat ambient @a[tag=Heal] ~ ~ ~ 1
tellraw @a[tag=Heal] {"text":"\u0412\u0438\u0440\u0443\u0441 \u0441\u043b\u0438\u0448\u043a\u043e\u043c \u0441\u0438\u043b\u044c\u043d\u043e \u043c\u0443\u0442\u0438\u0440\u043e\u0432\u0430\u043b, \u0447\u0442\u043e\u0431\u044b \u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u044c\u0441\u044f \u0442\u0430\u043a\u0438\u043c \u0441\u043f\u043e\u0441\u043e\u0431\u043e\u043c...","color":"dark_purple"}
effect clear @a[tag=Heal] absorption
effect clear @a[tag=Heal] weakness
tag @a[tag=Heal] remove Heal

tag @a[tag=Infect,nbt={active_effects:[{id:"minecraft:absorption",duration:2399},{id:"minecraft:weakness"}]},scores={InfectStage=2}] add Heal
tellraw @a[tag=Heal] {"text":"\u0412\u044b \u0447\u0443\u0432\u0441\u0442\u0432\u0443\u0435\u0442\u0435, \u0447\u0442\u043e \u0431\u043e\u043b\u0435\u0437\u043d\u044c \u043d\u0435\u043c\u043d\u043e\u0433\u043e \u043e\u0442\u0441\u0442\u0443\u043f\u0438\u043b\u0430...","color":"green"}
particle minecraft:dragon_breath ~ ~1 ~ 0.3 0.5 0.3 0.05 200
playsound minecraft:entity.zombie_villager.cure ambient @a ~ ~ ~ 0.3
advancement grant @a[tag=Heal] only sbfan:infection/apple
scoreboard players remove @a[tag=Infect,nbt={active_effects:[{id:"minecraft:absorption",duration:2399},{id:"minecraft:weakness"}]},scores={InfectStage=2..3}] InfectStage 1
effect clear @a[tag=Heal] absorption
effect clear @a[tag=Heal] weakness
tag @a[tag=Heal] remove Heal

tag @a[tag=Infect,nbt={active_effects:[{id:"minecraft:absorption",duration:2399},{id:"minecraft:weakness"}]},scores={InfectStage=1}] add Heal
tellraw @a[tag=Heal] {"text":"\u0412\u044b \u0447\u0443\u0432\u0441\u0442\u0432\u0443\u0435\u0442\u0435, \u0447\u0442\u043e \u0431\u043e\u043b\u0435\u0437\u043d\u044c \u043f\u043e\u043a\u0438\u0434\u0430\u0435\u0442 \u0432\u0430\u0448\u0435 \u0442\u0435\u043b\u043e...","color":"green"}
particle minecraft:dragon_breath ~ ~1 ~ 0.3 0.5 0.3 0.05 200
playsound minecraft:entity.zombie_villager.cure ambient @a ~ ~ ~ 0.3
advancement grant @a[tag=Heal] only sbfan:infection/apple
tag @a[tag=Heal] remove Infect
scoreboard players reset @a[tag=Heal] InfectParticle
scoreboard players reset @a[tag=Heal] InfectStage
scoreboard players reset @a[tag=Heal] InfectMutation
effect clear @a[tag=Heal] absorption
effect clear @a[tag=Heal] weakness
tag @a[tag=Heal] remove Heal