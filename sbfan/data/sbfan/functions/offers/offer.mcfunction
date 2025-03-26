# Защита комнат #

execute at @a[name=!Fizon,tag=!Zal,x=-37,y=158,z=-27,dy=4,dx=23,dz=6] run playsound block.note_block.bit ambient @a[name=!Fizon,tag=!Zal,x=-37,y=158,z=-27,dy=4,dx=23,dz=6] ~ ~ ~ 1 0.5
execute at @a[name=!Fizon,tag=!Zal,x=-37,y=158,z=-27,dy=4,dx=23,dz=6] run tellraw @a[name=!Fizon,tag=!Zal,x=-37,y=158,z=-27,dy=4,dx=23,dz=6] {"text":"\u0412\u044b \u0447\u0443\u0432\u0441\u0442\u0432\u0443\u0435\u0442\u0435, \u043a\u0430\u043a \u043d\u0435\u0438\u0437\u0432\u0435\u0441\u0442\u043d\u0430\u044f \u0441\u0438\u043b\u0430 \u043d\u0435 \u043f\u043e\u0437\u0432\u043e\u043b\u044f\u0435\u0442 \u0432\u0430\u043c \u0432\u043e\u0439\u0442\u0438 \u0432 \u043a\u043e\u043c\u043d\u0430\u0442\u0443...","color":"light_purple"}
execute at @a[name=!Fizon,tag=!Zal,x=-37,y=158,z=-27,dy=4,dx=23,dz=6] run tp @a[name=!Fizon,tag=!Zal,x=-37,y=158,z=-27,dy=4,dx=23,dz=6] -13 159 -24

execute if entity @a[name=!Fizon,tag=!Room,x=-1,y=151,z=-28,dx=8,dy=7,dz=7] run tellraw @a[name=!Fizon,tag=!Room,x=-1,y=151,z=-28,dx=8,dy=7,dz=7] {"text":"\u0412\u044b \u0447\u0443\u0432\u0441\u0442\u0432\u0443\u0435\u0442\u0435, \u043a\u0430\u043a \u043d\u0435\u0438\u0437\u0432\u0435\u0441\u0442\u043d\u0430\u044f \u0441\u0438\u043b\u0430 \u043d\u0435 \u043f\u043e\u0437\u0432\u043e\u043b\u044f\u0435\u0442 \u0432\u0430\u043c \u0432\u043e\u0439\u0442\u0438 \u0432\u043d\u0443\u0442\u0440\u044c...","color":"light_purple"}
execute if entity @a[name=!Fizon,tag=!Room,x=-1,y=151,z=-28,dx=8,dy=7,dz=7] run playsound block.note_block.bit ambient @a[name=!Fizon,tag=!Room,x=-1,y=151,z=-28,dx=8,dy=7,dz=7] ~ ~ ~ 1 0.5
execute if entity @a[name=!Fizon,tag=!Room,x=-1,y=151,z=-28,dx=8,dy=7,dz=7] run tp @a[name=!Fizon,tag=!Room,x=-1,y=151,z=-28,dx=8,dy=7,dz=7] -1 160 -21

# Огонь #

execute if block -18 76 37 air run fill -17 76 36 -18 76 37 soul_fire
execute if block -18 76 36 air run fill -17 76 36 -18 76 37 soul_fire
execute if block -17 76 37 air run fill -17 76 36 -18 76 37 soul_fire
execute if block -17 76 36 air run fill -17 76 36 -18 76 37 soul_fire

# Отправка подношения #

execute positioned -16.97 76.00 37.04 if entity @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9] if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] run tellraw @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9,limit=1,sort=nearest] {"text":"\u0412\u044b \u0447\u0443\u0432\u0441\u0442\u0432\u0443\u0435\u0442\u0435, \u043a\u0430\u043a \u0445\u0440\u0430\u043d\u0438\u0442\u0435\u043b\u044c \u0441\u0432\u044f\u0449\u0435\u043d\u043d\u043e\u0439 \u0441\u0430\u043a\u0443\u0440\u044b \u0431\u043b\u0430\u0433\u043e\u0434\u0430\u0440\u0438\u0442 \u0432\u0430\u0441 \u0437\u0430 \u043e\u0441\u0442\u0430\u0432\u043b\u0435\u043d\u043d\u043e\u0435 \u043f\u043e\u0434\u043d\u043e\u0448\u0435\u043d\u0438\u0435...","color":"light_purple"}
execute positioned -16.97 76.00 37.04 if entity @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9] if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] run scoreboard players add @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9,limit=1,sort=nearest] Offers 1
execute positioned -16.97 76.00 37.04 if entity @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9] if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] run playsound minecraft:block.fire.extinguish ambient @a ~ ~ ~ 1
execute positioned -16.97 76.00 37.04 if entity @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9] if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] run particle minecraft:sculk_soul -16.97 77.00 37.04 0.8 0.6 0.8 0.05 100
execute positioned -16.97 76.00 37.04 if entity @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9] if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] run tellraw Fizon ["",{"text":"[\u0425\u0440\u0430\u043c] \u041e\u0441\u0442\u0430\u0432\u043b\u0435\u043d\u043e \u043f\u043e\u0434\u043d\u043e\u0448\u0435\u043d\u0438\u0435 \u043e\u0442 ","color":"light_purple"},{"selector":"@a[x=-22,y=75,z=35,dy=2,dz=4,dx=9,gamemode=!spectator]","color":"light_purple"}]

# Особые подношения #

execute if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3,nbt={Item:{id:"minecraft:diamond"}}] run advancement grant @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9] only sbfan:offers/specialoffer
execute if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3,nbt={Item:{id:"minecraft:diamond"}}] run advancement grant @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9] only sbfan:offers/diamond

execute if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3,nbt={Item:{id:"minecraft:diamond_block"}}] run advancement grant @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9] only sbfan:offers/specialoffer
execute if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3,nbt={Item:{id:"minecraft:diamond_block"}}] run advancement grant @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9] only sbfan:offers/diamond_block

execute if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3,nbt={Item:{id:"minecraft:netherite_ingot"}}] run advancement grant @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9] only sbfan:offers/specialoffer
execute if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3,nbt={Item:{id:"minecraft:netherite_ingot"}}] run advancement grant @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9] only sbfan:offers/netherite

execute if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3,nbt={Item:{id:"minecraft:netherite_block"}}] run advancement grant @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9] only sbfan:offers/specialoffer
execute if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3,nbt={Item:{id:"minecraft:netherite_block"}}] run advancement grant @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9] only sbfan:offers/netherite_block

execute if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3,nbt={Item:{id:"minecraft:elytra"}}] run advancement grant @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9] only sbfan:offers/specialoffer
execute if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3,nbt={Item:{id:"minecraft:elytra"}}] run advancement grant @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9] only sbfan:offers/elytra

execute if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3,nbt={Item:{id:"minecraft:coal"}}] run advancement grant @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9] only sbfan:offers/specialoffer
execute if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3,nbt={Item:{id:"minecraft:coal"}}] run advancement grant @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9] only sbfan:offers/coal

execute if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3,nbt={Item:{id:"minecraft:cobblestone"}}] run advancement grant @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9] only sbfan:offers/specialoffer
execute if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3,nbt={Item:{id:"minecraft:cobblestone"}}] run advancement grant @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9] only sbfan:offers/cobblestone

execute if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3,nbt={Item:{id:"minecraft:dirt"}}] run advancement grant @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9] only sbfan:offers/specialoffer
execute if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3,nbt={Item:{id:"minecraft:dirt"}}] run advancement grant @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9] only sbfan:offers/dirt

execute if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3,nbt={Item:{id:"minecraft:pufferfish"}}] run advancement grant @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9] only sbfan:offers/specialoffer
execute if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3,nbt={Item:{id:"minecraft:pufferfish"}}] run advancement grant @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9] only sbfan:offers/fugu

execute if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3,nbt={Item:{id:"minecraft:cherry_log"}}] run advancement grant @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9] only sbfan:offers/specialoffer
execute if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3,nbt={Item:{id:"minecraft:cherry_log"}}] run advancement grant @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9] only sbfan:offers/sakura
execute if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3,nbt={Item:{id:"minecraft:cherry_wood"}}] run advancement grant @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9] only sbfan:offers/specialoffer
execute if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3,nbt={Item:{id:"minecraft:cherry_wood"}}] run advancement grant @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9] only sbfan:offers/sakura
execute if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3,nbt={Item:{id:"minecraft:cherry_leaves"}}] run advancement grant @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9] only sbfan:offers/specialoffer
execute if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3,nbt={Item:{id:"minecraft:cherry_leaves"}}] run advancement grant @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9] only sbfan:offers/sakura

# Телепорт предмета #

execute positioned -16.97 76.00 37.04 if entity @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9,name=QuaSoo_QS,gamemode=!spectator] if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] run tp @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] -15.5 160.7 -21.5
execute positioned -16.97 76.00 37.04 if entity @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9,name=ectonya] if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] run tp @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] -16.5 160.7 -21.5
execute positioned -16.97 76.00 37.04 if entity @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9,name=Vaflo] if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] run tp @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] -17.5 160.7 -21.5
execute positioned -16.97 76.00 37.04 if entity @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9,name=Fizon,gamemode=!spectator] if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] run tp @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] -18.5 160.7 -21.5
execute positioned -16.97 76.00 37.04 if entity @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9,name=waayss_] if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] run tp @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] -19.5 160.7 -21.5
execute positioned -16.97 76.00 37.04 if entity @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9,name=Komich_] if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] run tp @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] -20.5 160.7 -21.5
execute positioned -16.97 76.00 37.04 if entity @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9,name=_walxyy] if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] run tp @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] -21.5 160.7 -21.5
execute positioned -16.97 76.00 37.04 if entity @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9,name=Scifyro] if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] run tp @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] -24.5 160.7 -21.5
execute positioned -16.97 76.00 37.04 if entity @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9,name=JayceeOkDa] if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] run tp @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] -25.5 160.7 -21.5
execute positioned -16.97 76.00 37.04 if entity @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9,name=Vivianitte] if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] run tp @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] -26.5 160.7 -21.5
execute positioned -16.97 76.00 37.04 if entity @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9,name=vilgee_] if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] run tp @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] -27.5 160.7 -21.5
execute positioned -16.97 76.00 37.04 if entity @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9,name=MrDuotin] if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] run tp @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] -28.5 160.7 -21.5
execute positioned -16.97 76.00 37.04 if entity @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9,name=lia_99] if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] run tp @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] -29.5 160.7 -21.5
execute positioned -16.97 76.00 37.04 if entity @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9,name=Ginahrom] if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] run tp @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] -30.5 160.7 -21.5
execute positioned -16.97 76.00 37.04 if entity @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9,name=hmkahekto] if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] run tp @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] -31.5 160.7 -21.5
execute positioned -16.97 76.00 37.04 if entity @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9,name=LmeBxxy] if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] run tp @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] -32.5 160.7 -21.5
execute positioned -16.97 76.00 37.04 if entity @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9,name=seme44ka] if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] run tp @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] -33.5 160.7 -21.5
execute positioned -16.97 76.00 37.04 if entity @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9,name=Razum23u23] if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] run tp @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] -34.5 160.7 -21.5
execute positioned -16.97 76.00 37.04 if entity @a[x=-22,y=75,z=35,dy=2,dz=4,dx=9,name=Zhenyanotzhenya] if entity @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] run tp @e[type=item,x=-19,y=76,z=35,dx=3,dy=2,dz=3] -35.5 160.7 -21.5

# Счёт и достижения #

execute if entity @a[scores={Offers=1}] run advancement grant @a[scores={Offers=1}] only sbfan:offers/offer
execute if entity @a[scores={Offers=10}] run advancement grant @a[scores={Offers=10}] only sbfan:offers/moreoffer
execute if entity @a[scores={Offers=50}] run advancement grant @a[scores={Offers=50}] only sbfan:offers/lotsoffer
execute if entity @a[scores={Offers=100}] run advancement grant @a[scores={Offers=100}] only sbfan:offers/godoffer