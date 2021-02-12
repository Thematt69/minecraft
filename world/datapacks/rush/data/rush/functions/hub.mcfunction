#lock items frame
execute as @e[type=item_frame,nbt=!{ItemRotation:0b}] run data merge entity @s {ItemRotation:0b}
execute as @e[type=item_frame,nbt=!{Invulnerable:1b}] run data merge entity @s {Invulnerable:1b}

#effect
gamemode adventure @a[x=1000,y=100,z=1000,distance=..100,gamemode=spectator]
effect clear @a[x=1000,y=100,z=1000,distance=..100] minecraft:haste
effect clear @a[x=1000,y=100,z=1000,distance=..100] minecraft:wither
effect give @a[x=1000,y=100,z=1000,distance=..100] minecraft:weakness 1 100 true
effect give @a[x=1000,y=100,z=1000,distance=..100] minecraft:resistance 1 100 true
effect give @a[x=1000,y=100,z=1000,distance=..100] minecraft:saturation 2 100 true
effect give @a[gamemode=adventure,x=1000,y=100,z=1000,distance=100..,nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}}] minecraft:haste 1 1 true

kill @e[type=item,x=1000,y=100,z=1000,distance=..100]
#reset
execute as @e[type=area_effect_cloud,tag=reset,scores={reset=1..}] positioned 0 130 0 run function rush:reset/load

#start the game
execute as @a[nbt={Inventory:[{id:"minecraft:stone"}]}] run function rush:button



#join the game
execute as @a[scores={leave=1..}] at @s run function rush:join

#game
execute if entity @e[tag=reset,tag=inGame] run function rush:game
execute as @e[tag=reset,tag=!inGame,scores={reset=0}] at @s run tp @a[distance=..500,gamemode=!creative] 1000 100 1000

execute as @a[tag=!User] run function rush:join
execute as @e[type=minecraft:area_effect_cloud,tag=LoadKill] run data merge entity @s {Age:1,NoGravity:1b}

#jump

execute as @a[x=1017,y=98,z=1000,dx=0,dy=0,dz=0] run tag @s add Jump
execute if entity @a[tag=Jump] run function rush:jump
tp @a[x=930,y=60,z=930,dx=200,dy=25,dz=200,tag=!Jump] 1000 100 1000

#menu

scoreboard players set @e[scores={death=1..}] Menu 4
scoreboard players set @e[x=1000,y=100,z=1000,distance=..100,type=player,scores={death=1..}] death 0
execute as @e[x=1000,y=100,z=1000,distance=..100,type=player] run function rush:menu/menu
