
execute as @s[scores={reset=220}] run setblock -81 96 -8 minecraft:structure_block{mode:"LOAD",name:"rush:base/blue",posY:0,sizeX:32} destroy
execute as @s[scores={reset=221}] run setblock -81 97 -8 minecraft:redstone_block destroy
execute as @s[scores={reset=220}] run particle minecraft:explosion_emitter -73 100 2000 8 32 8 0 20 force

execute as @s[scores={reset=240}] run setblock -8 96 64 minecraft:structure_block{mode:"LOAD",name:"rush:base/orange",posY:0,sizeX:32} destroy
execute as @s[scores={reset=241}] run setblock -8 97 64 minecraft:redstone_block destroy
execute as @s[scores={reset=240}] run particle minecraft:explosion_emitter 2000 100 2072 8 32 8 0 20 force

execute as @s[scores={reset=280}] run setblock 64 96 -8 minecraft:structure_block{mode:"LOAD",name:"rush:base/green",posY:0,sizeX:32} destroy
execute as @s[scores={reset=281}] run setblock 64 97 -8 minecraft:redstone_block destroy
execute as @s[scores={reset=280}] run particle minecraft:explosion_emitter 72 100 2000 8 32 8 0 20 force

execute as @s[scores={reset=300}] run setblock -8 96 -81 minecraft:structure_block{mode:"LOAD",name:"rush:base/pink",posY:0,sizeX:32} destroy
execute as @s[scores={reset=301}] run setblock -8 97 -81 minecraft:redstone_block destroy
execute as @s[scores={reset=300}] run particle minecraft:explosion_emitter 0 100 -73 8 32 8 0 20 force

execute as @s[scores={reset=320}] run setblock -3 118 -3 minecraft:structure_block{mode:"LOAD",name:"rush:other/middle",posY:0,sizeX:32} destroy
execute as @s[scores={reset=321}] run setblock -3 119 -3 minecraft:redstone_block destroy
execute as @s[scores={reset=320}] run particle minecraft:explosion_emitter 0 120 2000 3 32 3 0 10 force

