#start
scoreboard players set @a Counter 1
team join spec @a[team=spawn]
gamemode adventure @a[team=!spec]
gamemode spectator @a[team=spec]
scoreboard players set @a[team=spec] Counter 0
tag @a[gamemode=adventure] add TeamAlive
tag @a[gamemode=adventure] add inGame
tag @e[tag=reset] add inGame
clear @a[gamemode=adventure]

scoreboard players set @a Var 0
scoreboard players set Heure Timer 0
scoreboard players set Minute Timer 0
scoreboard players set Seconde Timer 0

execute if entity @e[tag=reset,tag=sudden] run scoreboard players operation Heure Timer = Max2 Timer
execute if entity @e[tag=reset,tag=sudden] run scoreboard players operation Minute Timer = Max Timer

gamerule mobGriefing false
#tp
tp @a[team=green] 78 104 0
tp @a[team=blue] -78 104 0
tp @a[team=orange] 0 104 78
tp @a[team=pink] 0 104 -78
tp @a[team=spec,distance=300..] 0 120 0

spawnpoint @a[team=green] 78 104 0
spawnpoint @a[team=blue] -78 104 0
spawnpoint @a[team=orange] 0 104 78
spawnpoint @a[team=pink] 0 104 -78
worldborder set 199

scoreboard players reset @e[tag=counter] Counter
execute as @a at @s run tag @e[tag=flags,distance=..15] add nokill
execute as @e[tag=!nokill,tag=flags] at @s run setblock ~ ~ ~ air
kill @e[tag=!nokill,tag=flags]
function rush:scoreboard/reload
scoreboard objectives setdisplay sidebar rush


tellraw @a ["",{"text":"> GO RUSH !","color":"green","bold":true}]
execute as @a at @s run playsound entity.wither.death record @s ~ ~ ~ 2 1 1
scoreboard players set @a death 0
scoreboard players set @a Drop 0
scoreboard objectives setdisplay sidebar Players

execute as @a run function rush:game/armor 

scoreboard players set Average Counter 0
execute as @a[team=!spec] run scoreboard players add Average Counter 1
scoreboard players set TeamAlive Counter 0
execute if entity @a[team=blue,tag=TeamAlive] run scoreboard players add TeamAlive Counter 1
execute if entity @a[team=pink,tag=TeamAlive] run scoreboard players add TeamAlive Counter 1
execute if entity @a[team=orange,tag=TeamAlive] run scoreboard players add TeamAlive Counter 1
execute if entity @a[team=green,tag=TeamAlive] run scoreboard players add TeamAlive Counter 1
scoreboard players operation Average Counter /= TeamAlive Counter

scoreboard players set @e[tag=reset] random 70

title @a times 10 30 10

scoreboard players set @a InGame 1

execute as @e[tag=Green,limit=1,tag=flags] at @s run tp @s ~ ~ ~ 90 0
execute as @e[tag=Orange,limit=1,tag=flags] at @s run tp @s ~ ~ ~ 180 0
execute as @e[tag=Blue,limit=1,tag=flags] at @s run tp @s ~ ~ ~ -90 0
execute as @e[tag=Pink,limit=1,tag=flags] at @s run tp @s ~ ~ ~ 0 0

execute as @e[type=minecraft:villager] run data modify entity @s Offers.Recipes[].buy.tag set value {replacenbt:1b,HideFlags:63}
execute as @e[type=minecraft:villager] run data modify entity @s Offers.Recipes[].buyB.tag set value {replacenbt:1b,HideFlags:63}
execute as @e[type=minecraft:villager,name=Attack] run data modify entity @s Offers.Recipes[10].buyB.tag set value {replacenbt:1b}
execute as @e[type=minecraft:villager,name=Defense] run data modify entity @s Offers.Recipes[5].buyB.tag set value {replacenbt:1b}
execute as @e[type=minecraft:villager,name=Utility] run data modify entity @s Offers.Recipes[6].buy.tag set value {replacenbt:1b}

execute as @e[type=minecraft:villager,name=Utility] run data modify entity @s VillagerData merge value {profession:"minecraft:librarian",type:"minecraft:jungle"}
execute as @e[type=minecraft:villager,name=Defense] run data modify entity @s VillagerData merge value {profession:"minecraft:armorer",type:"minecraft:jungle"}
execute as @e[type=minecraft:villager,name=Attack] run data modify entity @s VillagerData merge value {profession:"minecraft:weaponsmith",type:"minecraft:jungle"}
execute as @e[type=minecraft:villager,name=Construction] run data modify entity @s VillagerData merge value {profession:"minecraft:mason",type:"minecraft:jungle"}

