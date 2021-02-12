
spawnpoint @a[team=blue] ~ ~ ~
execute if block ~ ~-1 ~ minecraft:air run spawnpoint @a[team=blue] ~ ~-1 ~

tag @s add Blue

tellraw @a ["",{"text":"The ","color":"green"},{"text":"blue","bold":true,"color":"dark_blue"},{"text":" flag was replaced!","color":"green"}]