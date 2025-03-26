# Частицы #

execute at @a[tag=Infect,scores={InfectParticle=12000}] run particle minecraft:sculk_soul ~ ~1 ~ 0.5 0.5 0.5 0.01 15
execute at @a[tag=Infect,scores={InfectParticle=12000}] run playsound minecraft:entity.warden.listening hostile @a ~ ~ ~ 0.3
execute at @a[tag=Infect,scores={InfectParticle=12000}] run scoreboard players reset @a[tag=Infect,scores={InfectParticle=12000}] InfectParticle

# Ускорение #

execute at @a[tag=Infect,scores={InfectStage=1}] if block ~ ~-1 ~ minecraft:sculk run effect give @p[tag=Infect] minecraft:speed 1 2 true
execute at @a[tag=Infect,scores={InfectStage=1}] if block ~ ~ ~ minecraft:sculk_vein run effect give @p[tag=Infect] minecraft:speed 1 2 true

# Слабость #

effect give @a[tag=Infect,scores={InfectStage=1}] minecraft:weakness 10 0 true

# Мутация #

scoreboard players add @a[tag=!Mutate,tag=Infect,scores={InfectStage=1}] InfectMutation 1
execute at @a[tag=Infect,scores={InfectStage=1,InfectMutation=432000..}] run tag @a[tag=Infect,scores={InfectStage=1,InfectMutation=432000..}] add Mutation
execute at @a[tag=Mutation] run playsound minecraft:entity.warden.nearby_closer ambient @a ~ ~ ~ 1
execute at @a[tag=Mutation] run particle minecraft:sculk_soul ~ ~1 ~ 0.3 0.3 0.3 0.1 100
tellraw @a[tag=Mutation] {"text":"\u0412\u044b \u0447\u0443\u0432\u0441\u0442\u0432\u0443\u0435\u0442\u0435, \u043a\u0430\u043a \u0432\u0438\u0440\u0443\u0441 \u0432\u043d\u0443\u0442\u0440\u0438 \u0432\u0430\u0441 \u043c\u0443\u0442\u0438\u0440\u0443\u0435\u0442...","color":"dark_purple"}
scoreboard players reset @a[tag=Mutation] InfectParticle
scoreboard players reset @a[tag=Mutation] InfectMutation
scoreboard players set @a[tag=Mutation] InfectStage 2