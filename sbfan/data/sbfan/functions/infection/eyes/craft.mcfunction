kill @e[type=item,nbt={Item:{id:"minecraft:ender_eye", Count:2b}},distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:glass", Count:2b}},distance=..0.5]
summon item ~ ~ ~ {Item:{Count:1b,id:"minecraft:iron_helmet",tag:{display:{Name:'"Кристальные глаза"', Lore: ['"Особый имплант, защищающий от вечной слепоты."']},Eyes:1,Enchantments:[{id:"minecraft:protection",lvl:10s}],Unbreakable:1b}}}
particle minecraft:cloud ~ ~0.5 ~ 0 0 0 0.1 50
playsound minecraft:block.anvil.use ambient @a ~ ~ ~ 1