execute at @a[nbt={active_effects:[{id:"minecraft:saturation",duration:20}]},tag=Hunger] run effect clear @a[nbt={active_effects:[{id:"minecraft:saturation",duration:20}]},tag=Hunger] minecraft:saturation

execute at @a[nbt={active_effects:[{id:"minecraft:saturation",duration:20}]},tag=!Hunger] run playsound minecraft:entity.warden.agitated hostile @a ~ ~ ~ 1
execute at @a[nbt={active_effects:[{id:"minecraft:saturation",duration:20}]},tag=!Hunger] run particle minecraft:witch ~ ~1 ~ 0.3 0.5 0.3 1 200
scoreboard players reset @a[nbt={active_effects:[{id:"minecraft:saturation",duration:20}]},tag=!Hunger] InfectHunger
tellraw @a[nbt={active_effects:[{id:"minecraft:saturation",duration:20}]},tag=!Hunger] {"text":"\u0412\u044b \u043e\u0449\u0443\u0449\u0430\u0435\u0442\u0435, \u043a\u0430\u043a \u0447\u0443\u0432\u0441\u0442\u0432\u043e \u0433\u043e\u043b\u043e\u0434\u0430 \u043f\u043e\u043a\u0438\u0434\u0430\u0435\u0442 \u0432\u0430\u0441...","color":"dark_purple"}
advancement grant @a[nbt={active_effects:[{id:"minecraft:saturation",duration:20}]},tag=!Hunger] only sbfan:infection/hunger
tag @a[nbt={active_effects:[{id:"minecraft:saturation",duration:20}]},tag=!Hunger] add Hunger

execute at @a[nbt={active_effects:[{id:"minecraft:saturation",duration:20}]}] run effect clear @a[nbt={active_effects:[{id:"minecraft:saturation",duration:20}]}] minecraft:saturation