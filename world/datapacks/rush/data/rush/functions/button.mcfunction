scoreboard players set TeamAlive Counter 0
execute if entity @a[team=blue] run scoreboard players add TeamAlive Counter 1
execute if entity @a[team=pink] run scoreboard players add TeamAlive Counter 1
execute if entity @a[team=orange] run scoreboard players add TeamAlive Counter 1
execute if entity @a[team=green] run scoreboard players add TeamAlive Counter 1

title @s times 2 20 2
execute if score TeamAlive Counter matches 0..1 if entity @e[tag=Button,scores={Lock=0}] run title @s title {"text":"Not enough teams!","color":"dark_red"}
execute if score TeamAlive Counter matches 0..1 if entity @e[tag=Button,scores={Lock=0}] run playsound minecraft:block.anvil.land master @s ~ ~ ~ 100

execute if entity @e[tag=Button,scores={Lock=1}] run title @s title {"text":"Start button is locked!","color":"dark_red"}
execute if entity @e[tag=Button,scores={Lock=1}] run playsound minecraft:block.anvil.land master @s ~ ~ ~ 100

execute as @e[tag=Button] run data merge entity @s {ArmorItems:[{},{},{},{id:"stone",Count:1b}],HandItems:[{},{}],DisabledSlots:0}
execute unless score TeamAlive Counter matches 0..1 if entity @e[tag=Button,scores={Lock=0}] unless entity @e[tag=reset,tag=inGame] run scoreboard players set @e[tag=reset] reset 1
clear @s stone