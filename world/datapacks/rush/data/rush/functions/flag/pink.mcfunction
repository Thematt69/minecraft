#pink banner
spawnpoint @a[team=pink] ~ ~ ~
execute if block ~ ~-1 ~ minecraft:air run spawnpoint @a[team=pink] ~ ~-1 ~

tag @s add Pink

tellraw @a ["",{"text":"The ","color":"green"},{"text":"pink","bold":true,"color":"light_purple"},{"text":" flag was replaced!","color":"green"}]