scoreboard players set Timer Timer 0
scoreboard players remove Seconde Timer 1

#zone sudden death last 2min

execute if score Minute Timer matches 1.. as @e[type=area_effect_cloud,tag=Low] at @s run tp ~ ~1 ~
execute if score Minute Timer matches 1.. as @e[type=area_effect_cloud,tag=High] at @s run tp ~ ~-1 ~

execute if score Minute Timer matches 0 if score Seconde Timer matches 30.. as @e[type=area_effect_cloud,tag=Low] at @s run tp ~ ~1 ~
execute if score Minute Timer matches 0 if score Seconde Timer matches 30.. as @e[type=area_effect_cloud,tag=High] at @s run tp ~ ~-1 ~


execute if score Heure Timer matches ..-1 if score Minute Timer matches 2 if score Seconde Timer matches 0 run summon area_effect_cloud 0 20 0 {Tags:["Zone","LoadKill","Low"],Duration:999999999}
execute if score Heure Timer matches ..-1 if score Minute Timer matches 2 if score Seconde Timer matches 0 run summon area_effect_cloud 0 190 0 {Tags:["Zone","LoadKill","High"],Duration:999999999}



#timer
execute if score Seconde Timer matches ..-1 run scoreboard players remove Minute Timer 1
execute if score Seconde Timer matches ..-1 run scoreboard players set Seconde Timer 59

execute if score Minute Timer matches ..-1 run scoreboard players remove Heure Timer 1
execute if score Minute Timer matches ..-1 run scoreboard players set Minute Timer 59


execute if score Heure Timer matches 1.. run title @a actionbar ["",{"score":{"name":"Heure","objective":"Timer"},"bold":true,"color":"dark_red"},{"text":"h","color":"dark_red","bold":"true"},{"score":{"name":"Minute","objective":"Timer"},"bold":true,"color":"dark_red"},{"text":"m","color":"dark_red","bold":"true"},{"score":{"name":"Seconde","objective":"Timer"},"bold":true,"color":"dark_red"},{"text":"s","color":"dark_red","bold":"true"},{"text":" before sudden death","color":"dark_red"}]

execute if score Heure Timer matches 0 run title @a actionbar ["",{"score":{"name":"Minute","objective":"Timer"},"bold":true,"color":"dark_red"},{"text":"m","color":"dark_red","bold":"true"},{"score":{"name":"Seconde","objective":"Timer"},"bold":true,"color":"dark_red"},{"text":"s","color":"dark_red","bold":"true"},{"text":" before sudden death","color":"dark_red"}]


execute if score Heure Timer matches ..-1 as @e[tag=flags] at @s run setblock ~ ~ ~ air
execute if score Heure Timer matches ..-1 if score Minute Timer matches 59 run gamerule mobGriefing true


execute if score Heure Timer matches ..-1 if score Minute Timer matches 59 run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1000

execute if score Heure Timer matches ..-1 if score Minute Timer matches 59 run worldborder set 21 480


execute if score Heure Timer matches ..-1 if score Minute Timer matches 59 run title @a title {"text":"Sudden Death","color":"dark_red"}
execute if score Heure Timer matches ..-1 if score Minute Timer matches 59 run scoreboard players set Seconde Timer 0
execute if score Heure Timer matches ..-1 if score Minute Timer matches 59 run scoreboard players set Minute Timer 10

execute if score Heure Timer matches ..-1 run title @a actionbar ["",{"score":{"name":"Minute","objective":"Timer"},"bold":true,"color":"dark_red"},{"text":"m","color":"dark_red","bold":"true"},{"score":{"name":"Seconde","objective":"Timer"},"bold":true,"color":"dark_red"},{"text":"s","color":"dark_red","bold":"true"},{"text":" before the end","color":"dark_red"}]


