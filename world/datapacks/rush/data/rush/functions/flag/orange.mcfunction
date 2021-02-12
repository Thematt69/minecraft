
spawnpoint @a[team=orange] ~ ~ ~
execute if block ~ ~-1 ~ minecraft:air run spawnpoint @a[team=orange] ~ ~-1 ~

tag @s add Orange

tellraw @a ["",{"text":"The ","color":"green"},{"text":"orange","bold":true,"color":"gold"},{"text":" flag was replaced!","color":"green"}]