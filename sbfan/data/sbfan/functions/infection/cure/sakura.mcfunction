summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:firework_star",tag:{Saint:1,display:{Name:'"Священный орган"',Lore:['"Такой же странный орган, но наполненный энергией священной сакуры."']}},Count:1b}}
particle minecraft:cherry_leaves ~ ~0.5 ~ 0.3 0.3 0.3 1 50
playsound minecraft:entity.allay.ambient_with_item ambient @a ~ ~ ~ 1 0.9
kill @e[x=-50,y=57,z=-65,dx=114,dy=90,dz=102,type=minecraft:item,nbt={Item:{tag:{Strange:1}}}]