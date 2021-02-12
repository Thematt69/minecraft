scoreboard players set @s[nbt=!{Inventory:[{Slot:8b,id:"minecraft:written_book"}]}] Menu 4

execute if entity @e[tag=reset,scores={Lock=1..}] run title @s[nbt=!{Inventory:[{Slot:4b,tag:{banner:1b}}]}] title {"text":"Team selection is locked!","color":"dark_red"}
execute if entity @e[tag=reset,scores={Lock=1..}] run scoreboard players set @s[nbt=!{Inventory:[{Slot:4b,tag:{banner:1b}}]}] Menu 4
execute if entity @e[tag=reset,scores={Lock=0}] run scoreboard players set @s[nbt=!{Inventory:[{Slot:4b,tag:{banner:1b}}]}] Menu 5

tellraw @s[nbt=!{Inventory:[{Slot:0b,id:"minecraft:clock"}]},tag=!op] ["",{"text":"\n[OP Check] If you are OP, click ","bold":true,"color":"red"},{"text":"here","bold":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/tag @s add op"}}]
scoreboard players set @s[nbt=!{Inventory:[{Slot:0b,id:"minecraft:clock"}]},tag=!op] Menu 4
scoreboard players set @s[nbt=!{Inventory:[{Slot:0b,id:"minecraft:clock"}]},tag=op] Menu 6


