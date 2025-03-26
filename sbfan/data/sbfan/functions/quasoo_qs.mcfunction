# Бафф #

particle minecraft:dust 0 0 0 1 ~ ~1 ~ 0.7 0.9 0.7 1 150
damage @e[name=!QuaSoo_QS,name=!Fizon,limit=1,sort=random,distance=..3] 6 minecraft:magic

# Дебафф #

execute if block ~ ~ ~ minecraft:water_cauldron run scoreboard players add QuaSoo_QS QuaSoo_QS 1
execute if block ~ ~ ~ minecraft:water run scoreboard players add QuaSoo_QS QuaSoo_QS 1

execute if entity @a[name=QuaSoo_QS,scores={QuaSoo_QS=30..}] run damage QuaSoo_QS 4 minecraft:drown
execute if entity @a[name=QuaSoo_QS,scores={QuaSoo_QS=30..}] run scoreboard players set QuaSoo_QS QuaSoo_QS 0

# Креатив #

execute at @a[name=QuaSoo_QS,gamemode=creative,tag=!Creative] run tellraw QuaSoo_QS {"text":"[\u0410\u043d\u0442\u0438\u041a\u0443\u0430\u0441\u043e\u0432\u0430\u044f \u0417\u0430\u0449\u0438\u0442\u0430] \u042d\u0439-\u044d\u0439... \u0422\u044b \u0432\u0435\u0434\u044c \u043d\u0435 \u0445\u043e\u0447\u0435\u0448\u044c \u0447\u0438\u0442\u0435\u0440\u0438\u0442\u044c? \u0415\u0441\u043b\u0438 \u043d\u0435 \u0445\u043e\u0447\u0435\u0448\u044c, \u0442\u043e \u043e\u0431\u0440\u0430\u0442\u0438\u0441\u044c \u043a \u0445\u0440\u0430\u043d\u0438\u0442\u0435\u043b\u044e, \u043e\u043d \u0442\u0435\u0431\u0435 \u0440\u0430\u0437\u0440\u0435\u0448\u0438\u0442 \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u044c \u043a\u0440\u0435\u0430\u0442\u0438\u0432.","color":"red"}
execute at @a[name=QuaSoo_QS,gamemode=creative,tag=!Creative] run playsound minecraft:entity.villager.no ambient QuaSoo_QS ~ ~ ~ 1
execute at @a[name=QuaSoo_QS,gamemode=creative,tag=!Creative] run gamemode survival QuaSoo_QS
