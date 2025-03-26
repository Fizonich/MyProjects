execute at @a[tag=Infect,scores={InfectHunger=66000}] run playsound minecraft:entity.warden.agitated hostile @a ~ ~ ~ 0.3
execute at @a[tag=Infect,scores={InfectHunger=66000}] run tellraw @a[tag=Infect,scores={InfectHunger=66000}] ["",{"text":"*\u043c\u044b\u0441\u043b\u0438* ","color":"gray"},{"selector":"@a[tag=Infect,scores={InfectHunger=66000}]","color":"gray"},{"text":": \u042f \u0445\u043e\u0447\u0443 \u0435\u0441\u0442\u044c...","color":"gray"}]
execute at @a[tag=Infect,scores={InfectHunger=67200}] run title @a[tag=Infect,scores={InfectHunger=67200}] title {"text":"\u0415\u0434\u0430...","color":"red"}
execute at @a[tag=Infect,scores={InfectHunger=67200}] run playsound minecraft:entity.warden.heartbeat ambient @a[tag=Infect,scores={InfectHunger=67200}] ~ ~ ~ 1
execute at @a[tag=Infect,scores={InfectHunger=69600}] run title @a[tag=Infect,scores={InfectHunger=69600}] title ["",{"text":"\u041c\u044f\u0441","color":"red"},{"text":"\u043e","obfuscated":true,"color":"red"},{"text":"..","color":"red"},{"text":".","obfuscated":true,"color":"red"}]
execute at @a[tag=Infect,scores={InfectHunger=69600}] run playsound minecraft:entity.warden.heartbeat ambient @a[tag=Infect,scores={InfectHunger=69600}] ~ ~ ~ 1
execute at @a[tag=Infect,scores={InfectHunger=71800}] run title @a[tag=Infect,scores={InfectHunger=71800}] title {"text":"\u0427\u0435\u043b\u043e\u0432\u0435\u043a","obfuscated":true,"color":"red"}
execute at @a[tag=Infect,scores={InfectHunger=71800}] run playsound minecraft:entity.warden.heartbeat ambient @a[tag=Infect,scores={InfectHunger=71800}] ~ ~ ~ 1

execute at @a[tag=Infect,scores={InfectHunger=72000}] run tellraw @a[tag=Infect,scores={InfectHunger=72000}] ["",{"selector":"@a[tag=Infect,scores={InfectHunger=72000}]","color":"dark_purple"},{"text":"?: \u0427\u0435\u043b","color":"dark_purple"},{"text":"\u043e","obfuscated":true,"color":"dark_purple"},{"text":"\u0432\u0435\u043a... \u0415","color":"dark_purple"},{"text":"\u0434","obfuscated":true,"color":"dark_purple"},{"text":"\u0430... \u0413\u043e\u043b","color":"dark_purple"},{"text":"\u043e","obfuscated":true,"color":"dark_purple"},{"text":"\u0434...","color":"dark_purple"}]
execute at @a[tag=Infect,scores={InfectHunger=72000}] run playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 1
execute at @a[tag=Infect,scores={InfectHunger=72000..}] run particle minecraft:sculk_soul ~ ~1 ~ 0.3 0.5 0.3 0.04 5
execute at @a[tag=Infect,scores={InfectHunger=72000..}] run effect give @a[tag=Infect,scores={InfectHunger=72000..}] minecraft:speed 1 4 true
execute at @a[tag=Infect,scores={InfectHunger=72000..}] run effect give @a[tag=Infect,scores={InfectHunger=72000..}] minecraft:strength 1 5 true
execute at @a[tag=Infect,scores={InfectHunger=72000..}] run effect give @a[tag=Infect,scores={InfectHunger=72000..}] minecraft:jump_boost 1 2 true
execute at @a[tag=Infect,scores={InfectHunger=72000..}] run effect give @a[tag=Infect,scores={InfectHunger=72000..}] minecraft:resistance 10 2 true
execute at @a[tag=Infect,scores={InfectHunger=72000..}] run effect give @a[tag=Infect,scores={InfectHunger=72000..}] minecraft:water_breathing 1 255 true
execute at @a[tag=Infect,scores={InfectHunger=72000..}] run effect give @a[tag=Infect,scores={InfectHunger=72000..}] minecraft:fire_resistance 1 255 true

execute at @a[tag=Infect,scores={InfectHunger=72240}] run damage @a[tag=Infect,scores={InfectHunger=72000..74000},limit=1,sort=nearest] 6 minecraft:starve
execute at @a[tag=Infect,scores={InfectHunger=72240}] run playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1
execute at @a[tag=Infect,scores={InfectHunger=72480}] run damage @a[tag=Infect,scores={InfectHunger=72000..74000},limit=1,sort=nearest] 6 minecraft:starve
execute at @a[tag=Infect,scores={InfectHunger=72480}] run playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1
execute at @a[tag=Infect,scores={InfectHunger=72720}] run damage @a[tag=Infect,scores={InfectHunger=72000..74000},limit=1,sort=nearest] 6 minecraft:starve
execute at @a[tag=Infect,scores={InfectHunger=72720}] run playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1
execute at @a[tag=Infect,scores={InfectHunger=72960}] run damage @a[tag=Infect,scores={InfectHunger=72000..74000},limit=1,sort=nearest] 6 minecraft:starve
execute at @a[tag=Infect,scores={InfectHunger=72960}] run playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1
execute at @a[tag=Infect,scores={InfectHunger=73200}] run damage @a[tag=Infect,scores={InfectHunger=72000..74000},limit=1,sort=nearest] 6 minecraft:starve
execute at @a[tag=Infect,scores={InfectHunger=73200}] run playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1
execute at @a[tag=Infect,scores={InfectHunger=73440}] run damage @a[tag=Infect,scores={InfectHunger=72000..74000},limit=1,sort=nearest] 6 minecraft:starve
execute at @a[tag=Infect,scores={InfectHunger=73440}] run playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1
execute at @a[tag=Infect,scores={InfectHunger=73680}] run damage @a[tag=Infect,scores={InfectHunger=72000..74000},limit=1,sort=nearest] 6 minecraft:starve
execute at @a[tag=Infect,scores={InfectHunger=73680}] run playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1
execute at @a[tag=Infect,scores={InfectHunger=73920}] run damage @a[tag=Infect,scores={InfectHunger=72000..74000},limit=1,sort=nearest] 6 minecraft:starve
execute at @a[tag=Infect,scores={InfectHunger=73920}] run playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1
execute at @a[tag=Infect,scores={InfectHunger=74160}] run damage @a[tag=Infect,scores={InfectHunger=72000..74000},limit=1,sort=nearest] 6 minecraft:starve
execute at @a[tag=Infect,scores={InfectHunger=74160}] run playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1

execute at @a[tag=Infect,scores={InfectHunger=74400..}] run playsound minecraft:entity.warden.death hostile @a ~ ~ ~ 1
execute at @a[tag=Infect,scores={InfectHunger=74400..}] run team add Temp
execute at @a[tag=Infect,scores={InfectHunger=74400..}] run team modify Temp deathMessageVisibility never
execute at @a[tag=Infect,scores={InfectHunger=74400..}] run team join Temp @a[tag=Infect,scores={InfectHunger=74400..},limit=1,sort=nearest]
execute at @a[tag=Infect,scores={InfectHunger=74400..}] run kill @a[tag=Infect,scores={InfectHunger=74400..},limit=1,sort=nearest]
execute at @a[tag=Infect,scores={InfectHunger=74400..}] run tellraw @a ["",{"selector":"@a[tag=Infect,scores={InfectHunger=74400..},limit=1,sort=nearest]"},{"text":" \u043f\u043e\u0433\u0438\u0431 \u043e\u0442 \u0441\u0438\u043b\u044c\u043d\u043e\u0433\u043e \u0433\u043e\u043b\u043e\u0434\u0430"}]
execute at @a[tag=Infect,scores={InfectHunger=74400..}] run team remove Temp

execute if entity @a[tag=Infect,scores={InfectHunger=72000..,InfectDeath=1..}] run tag @a[tag=Infect,scores={InfectHunger=72000..,InfectDeath=1..}] add BeastDead
execute if entity @a[tag=BeastDead] run scoreboard players reset @a[tag=BeastDead] InfectDeath
execute if entity @a[tag=BeastDead] run scoreboard players set @a[tag=BeastDead] InfectHunger 60000
execute if entity @a[tag=BeastDead] run tag @a[tag=BeastDead] remove BeastDead

execute at @a[tag=Infect,scores={InfectStage=3,InfectKill=1}] run scoreboard players reset @a[tag=Infect] InfectKilled

execute at @a[tag=Infect,scores={InfectStage=3,InfectKill=1}] if entity @a[tag=!Infect,tag=!Resist,scores={InfectKilled=1..}] run tag @a[tag=Infect,scores={InfectStage=3,InfectKill=1}] add BeastKill
execute at @a[tag=BeastKill] run scoreboard players reset @a[tag=BeastKill] InfectHunger
execute at @a[tag=BeastKill] run scoreboard players reset @a[tag=BeastKill] InfectKill
execute at @a[tag=BeastKill] run scoreboard players reset @a[scores={InfectKilled=1..}] InfectKilled
execute at @a[tag=BeastKill] run playsound minecraft:entity.warden.tendril_clicks hostile @a ~ ~ ~ 1
execute at @a[tag=BeastKill] run particle minecraft:sculk_soul ~ ~1 ~ 0.3 0.5 0.3 0.1 100
execute at @a[tag=BeastKill] run tellraw @a[tag=BeastKill] {"text":"\u0412\u044b \u0447\u0443\u0432\u0441\u0442\u0432\u0443\u0435\u0442\u0435, \u043a\u0430\u043a \u0432\u0430\u0448 \u0433\u043e\u043b\u043e\u0434 \u043d\u0435\u043d\u0430\u0434\u043e\u043b\u0433\u043e \u0443\u0442\u043e\u043b\u044f\u0435\u0442\u0441\u044f...","color":"dark_purple"}
execute at @a[tag=BeastKill] run tag @a[tag=BeastKill] remove BeastKill

execute at @a[tag=Infect,scores={InfectStage=3,InfectKill=1}] if entity @a[tag=Infect,scores={InfectKilled=1..}] run tag @a[tag=Infect,scores={InfectStage=3,InfectKill=1}] add BeastInfect
execute at @a[tag=BeastInfect] run scoreboard players reset @a[tag=BeastInfect] InfectKill
execute at @a[tag=BeastInfect] run scoreboard players reset @a[scores={InfectKilled=1..}] InfectKilled
execute at @a[tag=BeastInfect] run playsound minecraft:entity.warden.agitated hostile @a ~ ~ ~ 1
execute at @a[tag=BeastInfect] run tellraw @a[tag=BeastInfect] ["",{"text":"*\u043c\u044b\u0441\u043b\u0438* ","color":"gray"},{"selector":"@a[tag=BeastInfect]","color":"gray"},{"text":": \u042f \u043d\u0435 \u043c\u043e\u0433\u0443 \u0441\u044a\u0435\u0441\u0442\u044c \u0441\u0432\u043e\u0435\u0433\u043e \u0441\u043e\u0431\u0440\u0430\u0442\u0430...","color":"gray"}]
execute at @a[tag=BeastInfect] run tag @a[tag=BeastInfect] remove BeastInfect

execute at @a[tag=Infect,scores={InfectStage=3,InfectKill=1}] if entity @a[tag=Resist,scores={InfectKilled=1..}] run tag @a[tag=Infect,scores={InfectStage=3,InfectKill=1}] add BeastResist
execute at @a[tag=BeastResist] run scoreboard players reset @a[tag=BeastResist] InfectKill
execute at @a[tag=BeastResist] run scoreboard players reset @a[scores={InfectKilled=1..}] InfectKilled
execute at @a[tag=BeastResist] run playsound minecraft:entity.warden.agitated hostile @a ~ ~ ~ 1
execute at @a[tag=BeastResist] run tellraw @a[tag=BeastResist] ["",{"text":"*\u043c\u044b\u0441\u043b\u0438* ","color":"gray"},{"selector":"@a[tag=BeastResist]","color":"gray"},{"text":": \u042f \u043d\u0435 \u043c\u043e\u0433\u0443 \u043d\u0430\u0441\u044b\u0442\u0438\u0442\u044c\u0441\u044f \u044d\u0442\u0438\u043c \u043c\u044f\u0441\u043e\u043c...","color":"gray"}]
execute at @a[tag=BeastResist] run tag @a[tag=BeastResist] remove BeastResist
execute at @a[tag=Infect,scores={InfectStage=3,InfectKill=1..}] run scoreboard players reset @a[tag=Infect,scores={InfectStage=3,InfectKill=1..}] InfectKill

scoreboard players reset @a InfectKilled