particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.3 0.3 0.05 50
playsound minecraft:block.fire.extinguish ambient @a ~ ~ ~ 1 0.7
tellraw @a[tag=AygoFly,nbt={FallFlying:1b}] ["",{"text":"\u0412\u044b \u0447\u0443\u0432\u0441\u0442\u0432\u0443\u0435\u0442\u0435, \u043a\u0430\u043a \u0431\u043e\u0436\u0435\u0441\u0442\u0432\u0435\u043d\u043d\u0430\u044f \u0441\u0438\u043b\u0430 \u043e\u0442\u043e\u0431\u0440\u0430\u043b\u0430 \u0443 \u0432\u0430\u0441 ","color":"dark_aqua"},{"text":"\u0441\u0432\u043e\u0431\u043e\u0434\u0443","italic":true,"color":"dark_aqua"},{"text":".","color":"dark_aqua"}]
item replace entity @a[tag=AygoFly,nbt={FallFlying:1b}] armor.chest with minecraft:air