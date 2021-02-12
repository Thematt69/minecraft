execute if entity @e[tag=reset,tag=sudden] if score Max2 Timer matches 1.. run title @s actionbar ["",{"text":"Time before sudden death: ","bold":true,"color":"dark_green"},{"score":{"name":"Max2","objective":"Timer"},"bold":true,"color":"dark_green"},{"text":"h","bold":true,"color":"dark_green"},{"score":{"name":"Max","objective":"Timer"},"bold":true,"color":"dark_green"},{"text":"m","bold":true,"color":"dark_green"}]

execute if entity @e[tag=reset,tag=sudden] if score Max2 Timer matches 0 run title @s actionbar ["",{"text":"Time before sudden death: ","bold":true,"color":"dark_green"},{"score":{"name":"Max","objective":"Timer"},"bold":true,"color":"dark_green"},{"text":"m","bold":true,"color":"dark_green"}]





execute if entity @s[nbt=!{Inventory:[{Slot:0b,tag:{banner:1b}}]}] run scoreboard players add @e[tag=reset] Lock 1
execute if entity @s[nbt=!{Inventory:[{Slot:0b,tag:{banner:1b}}]}] run scoreboard players set @a[scores={Menu=3}] Menu 6

execute if entity @s[nbt=!{Inventory:[{Slot:1b,tag:{button:1b}}]}] run scoreboard players add @e[tag=Button] Lock 1
execute if entity @s[nbt=!{Inventory:[{Slot:1b,tag:{button:1b}}]}] run scoreboard players set @a[scores={Menu=3}] Menu 6


execute if entity @e[tag=reset,tag=!sudden] run scoreboard players set @s[nbt=!{Inventory:[{Slot:5b,tag:{sudden:1b}}]}] Menu 6
execute if entity @e[tag=reset,tag=!sudden] if entity @s[nbt=!{Inventory:[{Slot:5b,tag:{sudden:1b}}]}] run tag @e[tag=reset] add sudden

execute if entity @e[tag=reset,tag=sudden] if entity @s[nbt=!{Inventory:[{Slot:5b,tag:{sudden:1b}}]},scores={Menu=3}] run tag @e[tag=reset] remove sudden
execute if entity @e[tag=reset,tag=!sudden] run scoreboard players set @s[nbt=!{Inventory:[{Slot:5b,tag:{sudden:1b}}]},scores={Menu=3}] Menu 6


execute if entity @e[tag=reset,tag=sudden] if entity @s[nbt=!{Inventory:[{Slot:3b,tag:{concrete:1b}}]}] if score Max2 Timer matches 0 if score Max Timer matches 30.. run scoreboard players remove Max Timer 10
execute if entity @e[tag=reset,tag=sudden] if entity @s[nbt=!{Inventory:[{Slot:4b,tag:{concrete:1b}}]}] if score Max2 Timer matches 0 if score Max Timer matches 21.. run scoreboard players remove Max Timer 1
execute if entity @e[tag=reset,tag=sudden] if entity @s[nbt=!{Inventory:[{Slot:3b,tag:{concrete:1b}}]}] if score Max2 Timer matches 1.. run scoreboard players remove Max Timer 10
execute if entity @e[tag=reset,tag=sudden] if entity @s[nbt=!{Inventory:[{Slot:4b,tag:{concrete:1b}}]}] if score Max2 Timer matches 1.. run scoreboard players remove Max Timer 1



execute if entity @e[tag=reset,tag=sudden] if entity @s[nbt=!{Inventory:[{Slot:6b,tag:{concrete:1b}}]}] run scoreboard players add Max Timer 1
execute if entity @e[tag=reset,tag=sudden] if entity @s[nbt=!{Inventory:[{Slot:7b,tag:{concrete:1b}}]}] run scoreboard players add Max Timer 10
execute if entity @e[tag=reset,tag=sudden] run scoreboard players set @s[nbt=!{Inventory:[{Slot:3b,tag:{concrete:1b}}]}] Menu 6
execute if entity @e[tag=reset,tag=sudden] run scoreboard players set @s[nbt=!{Inventory:[{Slot:4b,tag:{concrete:1b}}]}] Menu 6
execute if entity @e[tag=reset,tag=sudden] run scoreboard players set @s[nbt=!{Inventory:[{Slot:6b,tag:{concrete:1b}}]}] Menu 6
execute if entity @e[tag=reset,tag=sudden] run scoreboard players set @s[nbt=!{Inventory:[{Slot:7b,tag:{concrete:1b}}]}] Menu 6

scoreboard players set @s[nbt=!{Inventory:[{Slot:8b,id:"minecraft:barrier"}]}] Menu 4