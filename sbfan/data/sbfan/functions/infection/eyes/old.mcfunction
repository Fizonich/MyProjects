scoreboard players remove @a[tag=Eyes] EyesTimer 1

execute at @a[scores={EyesTimer=..0}] run playsound minecraft:item.shield.break ambient @a ~ ~ ~ 1
execute at @a[scores={EyesTimer=..0}] run tag @a[scores={EyesTimer=..0}] remove Eyes
execute at @a[scores={EyesTimer=..0}] run particle minecraft:dust 0.4 0.4 0.4 1 ~ ~1.5 ~ 0.2 0.2 0.2 1 100
execute at @a[scores={EyesTimer=..0}] run effect give @a[scores={EyesTimer=..0}] minecraft:nausea 10 255 true
execute at @a[scores={EyesTimer=..0}] run tellraw @a[scores={EyesTimer=..0}] {"text":"\u0412\u0430\u0448 \u0433\u043b\u0430\u0437\u043d\u043e\u0439 \u0438\u043c\u043f\u043b\u0430\u043d\u0442 \u0438\u0441\u0447\u0435\u0440\u043f\u0430\u043b \u0441\u0432\u043e\u0439 \u0440\u0435\u0441\u0443\u0440\u0441. \u041d\u0435\u043e\u0431\u0445\u043e\u0434\u0438\u043c\u043e \u043f\u043e\u0441\u0442\u0430\u0432\u0438\u0442\u044c \u043d\u043e\u0432\u044b\u0439 \u0438\u043c\u043f\u043b\u0430\u043d\u0442.","color":"red"}
execute at @a[scores={EyesTimer=..0}] run scoreboard players reset @a[scores={EyesTimer=..0}] EyesTimer