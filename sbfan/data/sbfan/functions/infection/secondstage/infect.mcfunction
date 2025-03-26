# Частицы #

execute at @a[tag=Infect,scores={InfectParticle=6000,InfectStage=2}] run particle minecraft:sculk_soul ~ ~1 ~ 0.5 0.5 0.5 0.01 30
execute at @a[tag=Infect,scores={InfectParticle=6000,InfectStage=2}] run playsound minecraft:entity.warden.listening hostile @a ~ ~ ~ 0.3
execute at @a[tag=Infect,scores={InfectParticle=6000,InfectStage=2}] run playsound minecraft:entity.warden.tendril_clicks hostile @a ~ ~ ~ 0.3

# Смерть #

execute at @a[tag=Infect,scores={InfectPoom=1,InfectStage=2}] run playsound minecraft:entity.warden.listening hostile @a ~ ~ ~ 0.3
execute at @a[tag=Infect,scores={InfectPoom=1,InfectStage=2}] run playsound minecraft:entity.warden.tendril_clicks hostile @a ~ ~ ~ 0.3
execute at @a[tag=Infect,scores={InfectPoom=1,InfectStage=2}] run fill ~-1 ~2 ~-1 ~1 ~-1 ~1 minecraft:sculk replace minecraft:grass_block
execute at @a[tag=Infect,scores={InfectPoom=1,InfectStage=2}] run fill ~-1 ~2 ~-1 ~1 ~-1 ~1 minecraft:sculk replace minecraft:dirt
execute at @a[tag=Infect,scores={InfectPoom=1,InfectStage=2}] run fill ~-1 ~2 ~-1 ~1 ~-1 ~1 minecraft:sculk replace minecraft:coarse_dirt
execute at @a[tag=Infect,scores={InfectPoom=1,InfectStage=2}] run fill ~-1 ~2 ~-1 ~1 ~-1 ~1 minecraft:sculk replace minecraft:stone
execute at @a[tag=Infect,scores={InfectPoom=1,InfectStage=2}] run fill ~-1 ~2 ~-1 ~1 ~-1 ~1 minecraft:sculk replace minecraft:end_stone
execute at @a[tag=Infect,scores={InfectPoom=1,InfectStage=2}] run fill ~-1 ~2 ~-1 ~1 ~-1 ~1 minecraft:sculk replace minecraft:deepslate
execute at @a[tag=Infect,scores={InfectPoom=1,InfectStage=2}] run fill ~-1 ~2 ~-1 ~1 ~-1 ~1 minecraft:sculk replace minecraft:andesite
execute at @a[tag=Infect,scores={InfectPoom=1,InfectStage=2}] run fill ~-1 ~2 ~-1 ~1 ~-1 ~1 minecraft:sculk replace minecraft:diorite
execute at @a[tag=Infect,scores={InfectPoom=1,InfectStage=2}] run fill ~-1 ~2 ~-1 ~1 ~-1 ~1 minecraft:sculk replace minecraft:granite

execute at @a[tag=Infect,scores={InfectPoom=1,InfectStage=2}] if entity @a[tag=!Infect,tag=!Resist,gamemode=survival,distance=..2] run tag @a[tag=!Infect,tag=!Resist,gamemode=survival,distance=..2] add Infest
execute at @a[tag=Infest] run tag @a[tag=Infest] add Infect
execute at @a[tag=Infest] run scoreboard players set @a[tag=Infest] InfectStage 1
execute at @a[tag=Infest] run playsound minecraft:entity.warden.nearby_closest ambient @a[tag=Infest] ~ ~ ~ 1
execute at @a[tag=Infest] run particle minecraft:sculk_soul ~ ~1 ~ 0.2 0.4 0.2 0.1 200
tellraw @a[tag=Infest] {"text":"\u0412\u044b \u0447\u0443\u0432\u0441\u0442\u0432\u0443\u0435\u0442\u0435 \u0441\u0435\u0431\u044f \u043d\u0435 \u043e\u0447\u0435\u043d\u044c \u0445\u043e\u0440\u043e\u0448\u043e...","color":"dark_purple"}
effect give @a[tag=Infest] minecraft:darkness 5 255 true
effect give @a[tag=Infest] minecraft:nausea 10 255 true
advancement grant @a[tag=Infest] only sbfan:infection/karantin
tag @a[tag=Infest] remove Infest

execute at @a[tag=Infect,scores={InfectParticle=6000,InfectStage=2}] run scoreboard players reset @a[tag=Infect,scores={InfectParticle=6000,InfectStage=2}] InfectParticle
scoreboard players reset @a InfectPoom

# Баффы #

execute at @a[tag=Infect,scores={InfectStage=2}] if block ~ ~-1 ~ minecraft:sculk run effect give @p[tag=Infect] minecraft:speed 1 2 true
execute at @a[tag=Infect,scores={InfectStage=2}] if block ~ ~ ~ minecraft:sculk_vein run effect give @p[tag=Infect] minecraft:speed 1 2 true

effect give @a[tag=Infect,scores={InfectStage=2}] minecraft:strength 1 0 true

# Дебаффы #

effect give @a[tag=!Eyes,tag=Infect,scores={InfectStage=2}] minecraft:darkness 10 255 true

effect give @a[tag=!Haste,tag=Infect,scores={InfectStage=2}] minecraft:mining_fatigue 10 0 true

tag @a[tag=Mutation,scores={InfectStage=2}] remove Mutation