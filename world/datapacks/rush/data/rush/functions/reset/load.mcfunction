#initialization
tag @a remove Jump
execute as @s[scores={reset=1}] run teleport @a ~ ~ ~
execute as @s[scores={reset=1}] run gamemode spectator @a
execute as @s[scores={reset=1}] run kill @e[tag=Zone]
execute as @s[scores={reset=1}] run title @a times 1 500 1
execute as @s[scores={reset=1}] run title @a title {"text":"Waiting for reset...","color":"dark_blue"}
execute as @s[scores={reset=1}] run bossbar set minecraft:reset value 0
execute as @s[scores={reset=1}] run bossbar set minecraft:reset max 460
execute as @s[scores={reset=1}] run bossbar set minecraft:reset players @a
execute as @s[scores={reset=1}] run bossbar set minecraft:reset visible true

#clear map
execute as @s[scores={reset=10}] positioned -99 0 -99 run function rush:reset/clear
execute as @s[scores={reset=20}] positioned -99 96 -99 run function rush:reset/clear


execute as @s[scores={reset=40}] positioned -67 0 -99 run function rush:reset/clear
execute as @s[scores={reset=50}] positioned -67 96 -99 run function rush:reset/clear

 
execute as @s[scores={reset=70}] positioned -35 0 -99 run function rush:reset/clear
execute as @s[scores={reset=80}] positioned -35 96 -99 run function rush:reset/clear

execute as @s[scores={reset=100}] positioned -3 0 -99 run function rush:reset/clear
execute as @s[scores={reset=110}] positioned -3 96 -99 run function rush:reset/clear

execute as @s[scores={reset=130}] positioned 29 0 -99 run function rush:reset/clear
execute as @s[scores={reset=140}] positioned 29 96 -99 run function rush:reset/clear

execute as @s[scores={reset=160}] positioned 61 0 -99 run function rush:reset/clear
execute as @s[scores={reset=170}] positioned 61 96 -99 run function rush:reset/clear

execute as @s[scores={reset=190}] positioned 68 0 -99 run function rush:reset/clear
execute as @s[scores={reset=200}] positioned 68 96 -99 run function rush:reset/clear

#add base
execute as @s[scores={reset=220..321}] run function rush:reset/set


#timer
scoreboard players add @e[scores={reset=1..},tag=reset] reset 1
execute store result bossbar minecraft:reset value run scoreboard players get @s reset

#end reset
execute as @s[scores={reset=500}] run bossbar set minecraft:reset visible false
execute as @s[scores={reset=500}] run function rush:start
scoreboard players set @s[scores={reset=500..}] reset 0