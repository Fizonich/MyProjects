playsound minecraft:block.sculk.step ambient @a ~ ~ ~ 1
particle minecraft:wax_off ~ ~1.5 ~ 0.2 0.2 0.2 1 50
scoreboard players set @a[nbt={Inventory:[{Slot:103b,tag:{Eyes:1}}]}] EyesTimer 864000
tellraw @a[nbt={Inventory:[{Slot:103b,tag:{Eyes:1}}]}] {"text":"\u0412\u044b \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u043b\u0438 \u0433\u043b\u0430\u0437\u043d\u043e\u0439 \u0438\u043c\u043f\u043b\u0430\u043d\u0442.","color":"aqua"}
tag @a[nbt={Inventory:[{Slot:103b,tag:{Eyes:1}}]}] add Eyes
advancement grant @a[nbt={Inventory:[{Slot:103b,tag:{Eyes:1}}]}] only sbfan:infection/eyes
item replace entity @a[nbt={Inventory:[{Slot:103b,tag:{Eyes:1}}]}] armor.head with air
