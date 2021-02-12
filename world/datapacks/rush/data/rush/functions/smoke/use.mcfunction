scoreboard players add @s Var 1
particle minecraft:large_smoke ~ ~ ~ 2 2 2 0 15 force
effect give @a[distance=..3,gamemode=adventure] invisibility 1 1 true
effect give @a[distance=..3,gamemode=adventure,scores={Var=0}] blindness 2 2 true
kill @s[scores={Var=300..}]