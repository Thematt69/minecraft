worldborder set 20000
scoreboard players set @a TimerDeath 0
kill @e[type=ender_dragon]
kill @e[type=wither]
kill @e[tag=Zone]
kill @e[type=minecraft:area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}]
kill @e[tag=Smoke]
execute as @a at @s run fill ~3 192 ~3 ~-3 192 ~-3 air
effect clear @a
scoreboard players set @a Menu 4
spawnpoint @e[type=player] 1000 100 1000
execute if entity @a[team=orange,tag=TeamAlive] run title @a title {"text":"The orange team win!","color":"gold"} 
execute if entity @a[team=green,tag=TeamAlive] run title @a title {"text":"The green team win!","color":"green"} 
execute if entity @a[team=pink,tag=TeamAlive] run title @a title {"text":"The pink team win!","color":"light_purple"} 
execute if entity @a[team=blue,tag=TeamAlive] run title @a title {"text":"The blue team win!","color":"blue"} 
clear @a
tag @e[tag=inGame] remove inGame
tp @a 1000 100 1000
gamemode adventure @e[type=player]
tag @a remove TeamAlive
scoreboard objectives setdisplay sidebar

scoreboard players reset * Mort
scoreboard players reset * InGame 

