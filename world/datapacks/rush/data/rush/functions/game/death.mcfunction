#death
title @a times 5 40 10
function rush:join
execute if entity @s[team=green] if entity @e[tag=c_Green,scores={Counter=0}] run title @a title {"text":"The green team is dead!","color":"dark_green"}
execute if entity @s[team=green] if entity @e[tag=c_Green,scores={Counter=0}] run playsound minecraft:entity.wither.death master @a 0 100 0 500 2
execute if entity @s[team=blue] if entity @e[tag=c_Blue,scores={Counter=0}] run title @a title {"text":"The blue team is dead!","color":"dark_blue"}
execute if entity @s[team=blue] if entity @e[tag=c_Blue,scores={Counter=0}] run playsound minecraft:entity.wither.death master @a 0 100 0 500 2
execute if entity @s[team=pink] if entity @e[tag=c_Pink,scores={Counter=0}] run title @a title {"text":"The pink team is dead!","color":"light_purple"}
execute if entity @s[team=pink] if entity @e[tag=c_Pink,scores={Counter=0}] run playsound minecraft:entity.wither.death master @a 0 100 0 500 2
execute if entity @s[team=orange] if entity @e[tag=c_Orange,scores={Counter=0}] run title @a title {"text":"The orange team is dead!","color":"gold"}
execute if entity @s[team=orange] if entity @e[tag=c_Orange,scores={Counter=0}] run playsound minecraft:entity.wither.death master @a 0 100 0 500 2
scoreboard players set @s[scores={death=1}] death 2
function rush:scoreboard/reload
fill ~2 192 ~2 ~-2 192 ~-2 air


#win test
scoreboard players set TeamAlive Counter 0
execute if entity @a[team=blue,tag=TeamAlive] run scoreboard players add TeamAlive Counter 1
execute if entity @a[team=pink,tag=TeamAlive] run scoreboard players add TeamAlive Counter 1
execute if entity @a[team=orange,tag=TeamAlive] run scoreboard players add TeamAlive Counter 1
execute if entity @a[team=green,tag=TeamAlive] run scoreboard players add TeamAlive Counter 1

execute if score TeamAlive Counter <= 1 Counter as @e[tag=reset] at @s run function rush:win
