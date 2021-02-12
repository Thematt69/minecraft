execute unless entity @e[type=area_effect_cloud,tag=flags,tag=Green] run tag @s[team=green] remove TeamAlive
execute unless entity @e[type=area_effect_cloud,tag=flags,tag=Blue] run tag @s[team=blue] remove TeamAlive
execute unless entity @e[type=area_effect_cloud,tag=flags,tag=Orange] run tag @s[team=orange] remove TeamAlive
execute unless entity @e[type=area_effect_cloud,tag=flags,tag=Pink] run tag @s[team=pink] remove TeamAlive
fill ~2 192 ~2 ~-2 192 ~-2 air

scoreboard players add @s InGame 0
execute if entity @e[tag=reset,tag=inGame] run team join spec @s[scores={InGame=..0}]
execute if entity @e[tag=reset,tag=inGame] run scoreboard players set @s InGame 1

tag @s remove inGame
execute if entity @e[tag=reset,tag=inGame] run tag @s[scores={InGame=1}] add inGame


scoreboard players set @a[team=spec] Counter 0
scoreboard players set @s[scores={leave=1..}] death 0

gamemode spectator @s[tag=inGame,tag=!TeamAlive]
gamemode adventure @s[tag=inGame,tag=TeamAlive]
spawnpoint @s[tag=inGame,tag=!TeamAlive] 0 130 0
tp @s[tag=inGame,tag=!TeamAlive] 0 130 0
clear @s[tag=inGame,tag=!TeamAlive]

gamemode adventure @s[tag=!inGame]
tag @s[tag=!inGame] remove TeamAlive
spawnpoint @s[tag=!inGame] 1000 100 1000
tp @s[tag=!inGame] 1000 100 1000
clear @s[tag=!inGame]

scoreboard players set @s leave 0
function rush:scoreboard/reload
tag @s add User

scoreboard players set @s Menu 4

tag @s remove Jump
scoreboard players add @s JumpPB1 0
scoreboard players add @s JumpPB2 0
execute if score @s JumpPB2 matches 0 run scoreboard players set @s JumpPB2 2147483647


