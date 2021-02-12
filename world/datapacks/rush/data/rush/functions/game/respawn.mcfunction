scoreboard players set @s death 0
gamemode spectator @s[tag=!TeamAlive]
tp @s[gamemode=adventure,team=pink] @e[tag=flags,tag=Pink,limit=1]
tp @s[gamemode=adventure,team=blue] @e[tag=flags,tag=Blue,limit=1]
tp @s[gamemode=adventure,team=orange] @e[tag=flags,tag=Orange,limit=1]
tp @s[gamemode=adventure,team=green] @e[tag=flags,tag=Green,limit=1]
execute if entity @e[tag=inGame] run tp @s[gamemode=spectator] 0 130 0
execute as @s run function rush:game/armor
scoreboard players set @s Menu 4

execute as @s[team=pink] run scoreboard players set @a[team=pink] Counter 0
execute as @s[team=blue] run scoreboard players set @a[team=blue] Counter 0
execute as @s[team=orange] run scoreboard players set @a[team=orange] Counter 0
execute as @s[team=green] run scoreboard players set @a[team=green] Counter 0

execute if entity @a[team=blue,tag=TeamAlive] run scoreboard players add @a[team=blue] Counter 1
execute if entity @a[team=pink,tag=TeamAlive] run scoreboard players add @a[team=pink] Counter 1
execute if entity @a[team=orange,tag=TeamAlive] run scoreboard players add @a[team=orange] Counter 1
execute if entity @a[team=green,tag=TeamAlive] run scoreboard players add @a[team=green] Counter 1


gamemode spectator @s[tag=TeamAlive]
scoreboard players set @s[tag=TeamAlive] TimerDeath 1