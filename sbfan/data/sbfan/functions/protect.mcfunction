scoreboard players set @a[tag=!Protect] ProtectCD 0
scoreboard players remove @a[scores={ProtectCD=1..}] ProtectCD 1
execute at @a[tag=Protect,scores={ProtectHealth=1..4,ProtectCD=0}] run tag @a[tag=Protect,scores={ProtectHealth=1..4,ProtectCD=0}] add Protected
execute at @a[tag=Protected] run effect give @a[tag=Protected] minecraft:instant_health 1 250 true
execute at @a[tag=Protected] run playsound minecraft:entity.allay.ambient_with_item ambient @a ~ ~ ~ 1
execute at @a[tag=Protected] run tellraw @a[tag=Protected] {"text":"\u0412\u044b \u0447\u0443\u0432\u0441\u0442\u0432\u0443\u0435\u0442\u0435, \u043a\u0430\u043a \u044d\u043d\u0435\u0440\u0433\u0438\u044f \u0445\u0440\u0430\u043d\u0438\u0442\u0435\u043b\u044f \u0441\u0432\u044f\u0449\u0435\u043d\u043d\u043e\u0439 \u0441\u0430\u043a\u0443\u0440\u044b \u043b\u0435\u0447\u0438\u0442 \u0432\u0430\u0441...","color":"light_purple"}
execute at @a[tag=Protected] run particle minecraft:cherry_leaves ~ ~1 ~ 0.3 0.5 0.3 1 300
execute at @a[tag=Protected] run particle minecraft:happy_villager ~ ~1 ~ 0.2 0.3 0.2 1 100
execute at @a[tag=Protected] run effect give @a[tag=Protected] minecraft:water_breathing 15 255
execute at @a[tag=Protected] run effect give @a[tag=Protected] minecraft:fire_resistance 15 255
execute at @a[tag=Protected] run effect give @a[tag=Protected] minecraft:absorption 30 1
execute at @a[tag=Protected] run effect give @a[tag=Protected] minecraft:resistance 5 255
execute at @a[tag=Protected] run scoreboard players set @a[tag=Protected] ProtectCD 24000
execute at @a[tag=Protected] run tag @a[tag=Protected] remove Protected