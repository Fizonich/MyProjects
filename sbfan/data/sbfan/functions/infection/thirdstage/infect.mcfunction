# Голод #

scoreboard players add @a[tag=!Hunger,tag=Infect,scores={InfectStage=3}] InfectHunger 1

# Частицы #

execute at @a[tag=Infect,scores={InfectParticle=6000,InfectStage=3}] run particle minecraft:sculk_soul ~ ~1 ~ 1.4 1.4 1.4 0.01 150
execute at @a[tag=Infect,scores={InfectParticle=6000,InfectStage=3}] run playsound minecraft:entity.warden.listening_angry hostile @a ~ ~ ~ 0.3
execute at @a[tag=Infect,scores={InfectParticle=6000,InfectStage=3}] run playsound minecraft:entity.warden.tendril_clicks hostile @a ~ ~ ~ 0.3

# Смерть #

execute at @a[tag=Infect,scores={InfectBoom=1,InfectStage=3}] run particle minecraft:sculk_soul ~ ~1 ~ 1.4 1.4 1.4 0.01 150
execute at @a[tag=Infect,scores={InfectBoom=1,InfectStage=3}] run playsound minecraft:entity.warden.listening_angry hostile @a ~ ~ ~ 0.3
execute at @a[tag=Infect,scores={InfectBoom=1,InfectStage=3}] run playsound minecraft:entity.warden.tendril_clicks hostile @a ~ ~ ~ 0.3
execute at @a[tag=Infect,scores={InfectBoom=1,InfectStage=3}] run fill ~-3 ~4 ~-3 ~3 ~-3 ~3 minecraft:sculk replace minecraft:grass_block
execute at @a[tag=Infect,scores={InfectBoom=1,InfectStage=3}] run fill ~-3 ~4 ~-3 ~3 ~-3 ~3 minecraft:sculk replace minecraft:dirt
execute at @a[tag=Infect,scores={InfectBoom=1,InfectStage=3}] run fill ~-3 ~4 ~-3 ~3 ~-3 ~3 minecraft:sculk replace minecraft:coarse_dirt
execute at @a[tag=Infect,scores={InfectBoom=1,InfectStage=3}] run fill ~-3 ~4 ~-3 ~3 ~-3 ~3 minecraft:sculk replace minecraft:stone
execute at @a[tag=Infect,scores={InfectBoom=1,InfectStage=3}] run fill ~-3 ~4 ~-3 ~3 ~-3 ~3 minecraft:sculk replace minecraft:end_stone
execute at @a[tag=Infect,scores={InfectBoom=1,InfectStage=3}] run fill ~-3 ~4 ~-3 ~3 ~-3 ~3 minecraft:sculk replace minecraft:deepslate
execute at @a[tag=Infect,scores={InfectBoom=1,InfectStage=3}] run fill ~-3 ~4 ~-3 ~3 ~-3 ~3 minecraft:sculk replace minecraft:andesite
execute at @a[tag=Infect,scores={InfectBoom=1,InfectStage=3}] run fill ~-3 ~4 ~-3 ~3 ~-3 ~3 minecraft:sculk replace minecraft:diorite
execute at @a[tag=Infect,scores={InfectBoom=1,InfectStage=3}] run fill ~-3 ~4 ~-3 ~3 ~-3 ~3 minecraft:sculk replace minecraft:granite

execute at @a[tag=Infect,scores={InfectBoom=1,InfectStage=3}] if entity @a[tag=!Infect,tag=!Resist,gamemode=survival,distance=..4] run tag @a[tag=!Infect,tag=!Resist,gamemode=survival,distance=..4] add Infest
execute at @a[tag=Infect,scores={InfectBoom=1,InfectStage=3}] if entity @a[tag=Infect,scores={InfectStage=1},gamemode=survival,distance=..4] run tag @a[tag=Infect,scores={InfectStage=1},gamemode=survival,distance=..4] add Infest
execute at @a[tag=Infest] run tag @a[tag=Infest] add Infect
execute at @a[tag=Infest] run scoreboard players set @a[tag=Infest] InfectStage 2
execute at @a[tag=Infest] run playsound minecraft:entity.warden.nearby_closest ambient @a[tag=Infest] ~ ~ ~ 1
execute at @a[tag=Infest] run particle minecraft:sculk_soul ~ ~1 ~ 0.2 0.4 0.2 0.1 200
tellraw @a[tag=Infest] {"text":"\u0412\u044b \u0447\u0443\u0432\u0441\u0442\u0432\u0443\u0435\u0442\u0435 \u0441\u0435\u0431\u044f \u043d\u0435 \u043e\u0447\u0435\u043d\u044c \u0445\u043e\u0440\u043e\u0448\u043e...","color":"dark_purple"}
effect give @a[tag=Infest] minecraft:darkness 5 255 true
effect give @a[tag=Infest] minecraft:nausea 10 255 true
advancement grant @a[tag=Infest] only sbfan:infection/karantin
tag @a[tag=Infest] remove Infest

execute at @a[tag=Infect,scores={InfectParticle=6000,InfectStage=3}] run scoreboard players reset @a[tag=Infect,scores={InfectParticle=6000,InfectStage=3}] InfectParticle
scoreboard players reset @a InfectBoom

# Баффы #

team add Warden
team modify Warden friendlyFire false
team join Warden @e[type=minecraft:warden,team=!Warden]
team join Warden @a[tag=Infect,scores={InfectStage=3},team=!Warden]

execute at @a[tag=Infect,scores={InfectStage=3}] if block ~ ~-1 ~ minecraft:sculk run effect give @p[tag=Infect] minecraft:speed 1 2 true
execute at @a[tag=Infect,scores={InfectStage=3}] if block ~ ~ ~ minecraft:sculk_vein run effect give @p[tag=Infect] minecraft:speed 1 2 true

effect give @a[tag=Infect,scores={InfectStage=3}] minecraft:strength 1 2 true

effect give @a[tag=Infect,scores={InfectStage=3}] minecraft:health_boost 1 4 true

# Дебаффы #

effect give @a[tag=!Eyes,tag=Infect,scores={InfectStage=3}] minecraft:blindness 10 255 true

effect give @a[tag=!Haste,tag=Infect,scores={InfectStage=3}] minecraft:mining_fatigue 10 1 true

