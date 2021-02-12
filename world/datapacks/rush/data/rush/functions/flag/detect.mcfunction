execute as @s at @s unless block ~ ~ ~ minecraft:chest unless block ~ ~ ~ #minecraft:banners unless block ~ ~1 ~ #minecraft:banners run tp @s ^ ^ ^0.01
scoreboard players add @s Var 1
execute as @s[scores={Var=..700}] at @s unless block ~ ~ ~ minecraft:chest unless block ~ ~ ~ #minecraft:banners unless block ~ ~1 ~ #minecraft:banners unless block ^1 ^ ^ #minecraft:banners unless block ^-1 ^ ^ #minecraft:banners unless block ^ ^-1 ^ #minecraft:banners unless block ^ ^1 ^ #minecraft:banners run function rush:flag/detect


