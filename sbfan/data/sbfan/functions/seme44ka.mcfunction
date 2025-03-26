tellraw @a[nbt={SleepTimer:1s},distance=0,limit=1] {"text":"\u0412\u044b \u043d\u0435 \u043c\u043e\u0436\u0435\u0442\u0435 \u0441\u043f\u0430\u0442\u044c, \u043f\u043e\u043a\u0430 \u0441\u0442\u0440\u0430\u0434\u0430\u0435\u0442\u0435 \u0431\u0435\u0441\u0441\u043e\u043d\u043d\u0438\u0446\u0435\u0439..."}
playsound minecraft:entity.player.breath ambient @a ~ ~ ~ 1
damage @a[nbt={SleepTimer:1s},distance=0,limit=1] 1 minecraft:magic
execute at seme44ka run particle minecraft:angry_villager ~ ~1.7 ~ 0.2 0.2 0.2 1 2