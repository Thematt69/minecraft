
spawnpoint @a[team=green] ~ ~ ~
execute if block ~ ~-1 ~ minecraft:air run spawnpoint @a[team=green] ~ ~-1 ~

tag @s add Green

tellraw @a ["",{"text":"The ","color":"green"},{"text":"green","bold":true,"color":"dark_green"},{"text":" flag was replaced!","color":"green"}]