kill @e[nbt={Item:{tag:{Cure:1}}},limit=1,sort=nearest]
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",tag:{Freeze:1,custom_potion_effects:[{amplifier:4,show_particles:0b,id:fire_resistance,duration:36000}],CustomPotionColor:2010870,display:{Name:'"Stamatisei"',Lore:['"Препарат, позволяющий остановить мутацию между первым и вторым этапом заражения."']}},Count:1b}}
playsound minecraft:block.sculk_sensor.clicking ambient @a ~ ~ ~ 1
particle minecraft:sculk_soul ~ ~ ~ 0.2 0.2 0.2 0.1 100