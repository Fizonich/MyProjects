# Таймер #

scoreboard players add @a[tag=Infectioning] InfectTimer 1
scoreboard players add @a[tag=Infect] InfectParticle 1

scoreboard players reset @a[tag=Infect,scores={InfectStage=1..2}] InfectKill
scoreboard players reset @a[tag=!Infect] InfectKill
scoreboard players reset @a[tag=Infect,scores={InfectStage=1..2}] InfectDeath
scoreboard players reset @a[tag=!Infect] InfectDeath

# Триггер #

execute at @a[tag=!Infect,tag=!Infectioning,tag=!Resist,gamemode=survival] if block ~ ~-1 ~ minecraft:sculk run tag @p[tag=!Infect,tag=!Infectioning,tag=!Resist,gamemode=survival] add Infectioning
execute at @a[tag=!Infect,tag=!Infectioning,tag=!Resist,gamemode=survival] if block ~ ~ ~ minecraft:sculk_vein run tag @p[tag=!Infect,tag=!Infectioning,tag=!Resist,gamemode=survival] add Infectioning

# Заражение #

execute at @a[tag=Infectioning] unless block ~ ~-1 ~ minecraft:sculk unless block ~ ~ ~ minecraft:sculk_vein run scoreboard players reset @p[tag=Infectioning] InfectTimer
execute at @a[tag=Infectioning] unless block ~ ~-1 ~ minecraft:sculk unless block ~ ~ ~ minecraft:sculk_vein run tag @p[tag=Infectioning] remove Infectioning

execute at @a[tag=Infectioning,scores={InfectTimer=60}] run playsound minecraft:entity.warden.heartbeat ambient @a[tag=Infectioning,scores={InfectTimer=60}] ~ ~ ~ 100 0.5
effect give @a[tag=Infectioning,scores={InfectTimer=100}] minecraft:darkness 5 255 true

execute if entity @a[tag=Infectioning,scores={InfectTimer=200}] run tag @a[tag=Infectioning,scores={InfectTimer=200}] add Infect
scoreboard players reset @a[tag=Infectioning,scores={InfectTimer=200}] InfectTimer


# Заражён #

execute at @a[tag=Infect,tag=Infectioning] run playsound minecraft:entity.warden.nearby_closest master @a ~ ~ ~ 1
execute at @a[tag=Infect,tag=Infectioning] run tellraw @a[tag=Infect,tag=Infectioning] {"text":"\u0412\u044b \u0447\u0443\u0432\u0441\u0442\u0432\u0443\u0435\u0442\u0435 \u0441\u0435\u0431\u044f \u043d\u0435 \u043e\u0447\u0435\u043d\u044c \u0445\u043e\u0440\u043e\u0448\u043e...","color":"dark_purple"}
execute at @a[tag=Infect,tag=Infectioning] run advancement grant @a[tag=Infect,tag=Infectioning] only sbfan:infection/karantin
execute at @a[tag=Infect,tag=Infectioning] run scoreboard players set @a[tag=Infect,tag=Infectioning] InfectStage 1
execute at @a[tag=Infect,tag=Infectioning] run tag @a[tag=Infect,tag=Infectioning] remove Infectioning