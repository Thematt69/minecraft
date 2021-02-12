execute if entity @a[team=!blue,distance=..5] as @s[tag=Blue] run tellraw @a ["",{"text":"The ","bold":true,"color":"red"},{"text":"blue","bold":true,"color":"dark_blue"},{"text":" flag was destroy!","bold":true,"color":"red"}]
execute if entity @a[team=!orange,distance=..5] as @s[tag=Orange] run tellraw @a ["",{"text":"The ","bold":true,"color":"red"},{"text":"orange","bold":true,"color":"gold"},{"text":" flag was destroy!","bold":true,"color":"red"}]
execute if entity @a[team=!pink,distance=..5] as @s[tag=Pink] run tellraw @a ["",{"text":"The ","bold":true,"color":"red"},{"text":"pink","bold":true,"color":"light_purple"},{"text":" flag was destroy!","bold":true,"color":"red"}]
execute if entity @a[team=!green,distance=..5] as @s[tag=Green] run tellraw @a ["",{"text":"The ","bold":true,"color":"red"},{"text":"green","bold":true,"color":"dark_green"},{"text":" flag was destroy!","bold":true,"color":"red"}]

execute as @s[tag=Blue] at @s if entity @a[team=!blue,distance=..5] run playsound minecraft:entity.wither.death hostile @a ~ ~ ~ 10000 2
execute as @s[tag=Orange] at @s if entity @a[team=!orange,distance=..5] run playsound minecraft:entity.wither.death hostile @a ~ ~ ~ 10000 2
execute as @s[tag=Pink] at @s if entity @a[team=!pink,distance=..5] run playsound minecraft:entity.wither.death hostile @a ~ ~ ~ 10000 2
execute as @s[tag=Green] at @s if entity @a[team=!green,distance=..5] run playsound minecraft:entity.wither.death hostile @a ~ ~ ~ 10000 2

kill @s
execute as @s[tag=Blue] at @s if entity @a[team=!blue,distance=..5] run scoreboard players set @a[gamemode=spectator,team=blue] death 1
execute as @s[tag=Orange] at @s if entity @a[team=!blue,distance=..5] run scoreboard players set @a[gamemode=spectator,team=orange] death 1
execute as @s[tag=Pink] at @s if entity @a[team=!blue,distance=..5] run scoreboard players set @a[gamemode=spectator,team=pink] death 1
execute as @s[tag=Green] at @s if entity @a[team=!blue,distance=..5] run scoreboard players set @a[gamemode=spectator,team=green] death 1

function rush:scoreboard/reload