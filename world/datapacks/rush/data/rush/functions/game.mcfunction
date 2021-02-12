#random
scoreboard players operation @e[tag=reset] random += Average Counter

execute if entity @e[tag=reset,scores={random=51..}] run tag @e[tag=random,sort=random,limit=1] add selected
execute if entity @e[tag=selected,tag=Iron] run summon item 0 103 -74 {Item:{id:"minecraft:iron_ingot",Count:1b,tag:{replacenbt:1b,HideFlags:63}}}
execute if entity @e[tag=selected,tag=Gold] run summon item 0 103 -74 {Item:{id:"minecraft:gold_ingot",Count:1b,tag:{replacenbt:1b,HideFlags:63}}}
tag @e[tag=selected] remove selected

execute if entity @e[tag=reset,scores={random=51..}] run tag @e[tag=random,sort=random,limit=1] add selected
execute if entity @e[tag=selected,tag=Iron] run summon item -74 103 0 {Item:{id:"minecraft:iron_ingot",Count:1b,tag:{replacenbt:1b,HideFlags:63}}}
execute if entity @e[tag=selected,tag=Gold] run summon item -74 103 0 {Item:{id:"minecraft:gold_ingot",Count:1b,tag:{replacenbt:1b,HideFlags:63}}}
tag @e[tag=selected] remove selected

execute if entity @e[tag=reset,scores={random=51..}] run tag @e[tag=random,sort=random,limit=1] add selected
execute if entity @e[tag=selected,tag=Iron] run summon item 0 103 74 {Item:{id:"minecraft:iron_ingot",Count:1b,tag:{replacenbt:1b,HideFlags:63}}}
execute if entity @e[tag=selected,tag=Gold] run summon item 0 103 74 {Item:{id:"minecraft:gold_ingot",Count:1b,tag:{replacenbt:1b,HideFlags:63}}}
tag @e[tag=selected] remove selected

execute if entity @e[tag=reset,scores={random=51..}] run tag @e[tag=random,sort=random,limit=1] add selected
execute if entity @e[tag=selected,tag=Iron] run summon item 74 103 0 {Item:{id:"minecraft:iron_ingot",Count:1b,tag:{replacenbt:1b,HideFlags:63}}}
execute if entity @e[tag=selected,tag=Gold] run summon item 74 103 0 {Item:{id:"minecraft:gold_ingot",Count:1b,tag:{replacenbt:1b,HideFlags:63}}}
tag @e[tag=selected] remove selected

execute if entity @e[tag=reset,scores={random=51..}] run particle minecraft:cloud 2000 103.5 1925.5 0.1 0.1 0.1 0.01 10 force
execute if entity @e[tag=reset,scores={random=51..}] run particle minecraft:cloud 1925.5 103.5 2000 0.1 0.1 0.1 0.01 10 force
execute if entity @e[tag=reset,scores={random=51..}] run particle minecraft:cloud 2000 103.5 2074.5 0.1 0.1 0.1 0.01 10 force
execute if entity @e[tag=reset,scores={random=51..}] run particle minecraft:cloud 2074.5 103.5 2000 0.1 0.1 0.1 0.01 10 force
scoreboard players set @e[tag=reset,scores={random=51..}] random 0



#respawn
execute as @a[scores={death=1}] run function rush:game/death
execute as @e[scores={death=1..}] run function rush:game/respawn

#tnt
execute as @e[type=tnt,nbt={Fuse:1s}] at @s unless block ~ ~ ~ water run function rush:game/tnt

#smoke
execute if entity @e[type=area_effect_cloud,tag=Smoke] run scoreboard players add @a[scores={Var=1..}] Var 1
execute as @e[type=area_effect_cloud,nbt={Effects:[{Id:26b}]}] at @s run function rush:smoke/spawn
execute as @e[type=area_effect_cloud,tag=Smoke] at @s run function rush:smoke/use
scoreboard players set @a[scores={Var=300..}] Var 0

#item
clear @a[gamemode=!creative] minecraft:bucket
execute as @e[type=item,nbt={Age:1s},nbt=!{Item:{tag:{replacenbt:1b}}}] as @s[nbt=!{Item:{id:"minecraft:arrow"}}] as @s[nbt=!{Item:{id:"minecraft:spectral_arrow"}}] run data merge entity @s {Item:{tag:{CanPlaceOn:["minecraft:cyan_terracotta","minecraft:light_blue_terracotta","minecraft:light_blue_stained_glass","minecraft:orange_terracotta","minecraft:orange_stained_glass","minecraft:lime_terracotta","minecraft:magenta_terracotta","minecraft:pink_stained_glass","minecraft:green_stained_glass","minecraft:sandstone","minecraft:quartz_pillar","minecraft:quartz_stairs","minecraft:quartz_block","minecraft:quartz_slab","minecraft:tnt","minecraft:sandstone_stairs","minecraft:hopper","minecraft:redstone_block","minecraft:cobweb","minecraft:ladder","minecraft:slime_block","minecraft:stone_pressure_plate","minecraft:iron_door","minecraft:beacon","minecraft:anvil","minecraft:iron_trapdoor","minecraft:glowstone","minecraft:trapped_chest","minecraft:obsidian","minecraft:sea_lantern","minecraft:sandstone_slab"],HideFlags:63}}}


#leave the game
scoreboard players set @e[tag=reset] Counter 0
execute as @a run scoreboard players add @e[tag=reset] Counter 1
execute as @e[tag=reset] run scoreboard players operation @s Var -= @s Counter
execute if entity @e[tag=reset,scores={Var=1..}] run function rush:scoreboard/reload
execute as @e[tag=reset] run scoreboard players operation @s Var = @s Counter


#flags
execute as @a[scores={SelectedFlag=1..}] store result score @s SelectedItem run data get entity @s SelectedItemSlot
execute as @a[scores={SelectedFlag=1..}] run scoreboard players operation @s SelectedItem2 -= @s SelectedItem

execute as @a[scores={death=0,Drop=0,SelectedFlag=1,SelectedItem2=0},nbt=!{Inventory:[{id:"minecraft:blue_banner"}]}] at @s run function rush:flag/load
execute as @a[scores={death=0,Drop=0,SelectedFlag=2,SelectedItem2=0},nbt=!{Inventory:[{id:"minecraft:green_banner"}]}] at @s run function rush:flag/load
execute as @a[scores={death=0,Drop=0,SelectedFlag=3,SelectedItem2=0},nbt=!{Inventory:[{id:"minecraft:pink_banner"}]}] at @s run function rush:flag/load
execute as @a[scores={death=0,Drop=0,SelectedFlag=4,SelectedItem2=0},nbt=!{Inventory:[{id:"minecraft:orange_banner"}]}] at @s run function rush:flag/load

kill @e[tag=tpflag]
scoreboard players set @a[scores={SelectedFlag=1..}] SelectedFlag 0

execute as @a[nbt={SelectedItem:{id:"minecraft:blue_banner"}}] run scoreboard players set @s SelectedFlag 1
execute as @a[nbt={SelectedItem:{id:"minecraft:green_banner"}}] run scoreboard players set @s SelectedFlag 2
execute as @a[nbt={SelectedItem:{id:"minecraft:pink_banner"}}] run scoreboard players set @s SelectedFlag 3
execute as @a[nbt={SelectedItem:{id:"minecraft:orange_banner"}}] run scoreboard players set @s SelectedFlag 4
execute as @a[scores={SelectedFlag=1..}] run scoreboard players operation @s SelectedItem2 = @s SelectedItem
scoreboard players set @a[scores={Drop=1..}] Drop 0

execute as @e[tag=flags] at @s unless block ~ ~ ~ #minecraft:banners run function rush:flag/remove


execute as @e[type=item,nbt={Item:{id:"minecraft:pink_banner"}}] run data merge entity @s {Glowing:1b}
execute as @e[type=item,nbt={Item:{id:"minecraft:orange_banner"}}] run data merge entity @s {Glowing:1b}
execute as @e[type=item,nbt={Item:{id:"minecraft:green_banner"}}] run data merge entity @s {Glowing:1b}
execute as @e[type=item,nbt={Item:{id:"minecraft:blue_banner"}}] run data merge entity @s {Glowing:1b}

effect give @a[nbt={Inventory:[{id:"minecraft:pink_banner"}]},team=!pink] glowing 1 1 true
effect give @a[nbt={Inventory:[{id:"minecraft:orange_banner"}]},team=!orange] glowing 1 1 true
effect give @a[nbt={Inventory:[{id:"minecraft:green_banner"}]},team=!green] glowing 1 1 true
effect give @a[nbt={Inventory:[{id:"minecraft:blue_banner"}]},team=!blue] glowing 1 1 true

execute as @e[tag=flags] at @s if block ~ ~ ~ #rush:standing run setblock ~ ~1 ~ minecraft:air destroy

#spectator

execute if entity @a[team=green] run title @a[x=52,dx=100,y=0,dy=256,z=-100,dz=200,team=!green,gamemode=spectator,scores={Counter=1..}] subtitle {"text":"You can't see the other team's base when your team is alive","color":"red"}
execute if entity @a[team=green] run title @a[x=52,dx=100,y=0,dy=256,z=-100,dz=200,team=!green,gamemode=spectator,scores={Counter=1..}] title {"text":"Your team is alive!","bold":true,"color":"red"}
execute if entity @a[team=green] run execute as @a[x=52,dx=100,y=0,dy=256,z=-100,dz=200,team=!green,gamemode=spectator,scores={Counter=1..}] at @s run tp @s 50 ~ ~ 

execute if entity @a[team=blue] run title @a[x=-52,dx=-100,y=0,dy=256,z=-100,dz=200,team=!blue,gamemode=spectator,scores={Counter=1..}] subtitle {"text":"You can't see the other team's base when your team is alive","color":"red"}
execute if entity @a[team=blue] run title @a[x=-52,dx=-100,y=0,dy=256,z=-100,dz=200,team=!blue,gamemode=spectator,scores={Counter=1..}] title {"text":"Your team is alive!","bold":true,"color":"red"}
execute if entity @a[team=blue] run execute as @a[x=-52,dx=-100,y=0,dy=256,z=-100,dz=200,team=!blue,gamemode=spectator,scores={Counter=1..}] at @s run tp @s -50 ~ ~ 


execute if entity @a[team=orange] run title @a[x=-100,dx=200,y=0,dy=256,z=52,dz=100,team=!orange,gamemode=spectator,scores={Counter=1..}] subtitle {"text":"You can't see the other team's base when your team is alive","color":"red"}
execute if entity @a[team=orange] run title @a[x=-100,dx=200,y=0,dy=256,z=52,dz=100,team=!orange,gamemode=spectator,scores={Counter=1..}] title {"text":"Your team is alive!","bold":true,"color":"red"}
execute if entity @a[team=orange] run execute as @a[x=-100,dx=200,y=0,dy=256,z=52,dz=100,team=!orange,gamemode=spectator,scores={Counter=1..}] at @s run tp @s ~ ~ 50

execute if entity @a[team=pink] run title @a[x=-100,dx=200,y=0,dy=256,z=-52,dz=-100,team=!pink,gamemode=spectator,scores={Counter=1..}] subtitle {"text":"You can't see the other team's base when your team is alive","color":"red"}
execute if entity @a[team=pink] run title @a[x=-100,dx=200,y=0,dy=256,z=-52,dz=-100,team=!pink,gamemode=spectator,scores={Counter=1..}] title {"text":"Your team is alive!","bold":true,"color":"red"}
execute if entity @a[team=pink] run execute as @a[x=-100,dx=200,y=0,dy=256,z=-52,dz=-100,team=!pink,gamemode=spectator,scores={Counter=1..}] at @s run tp @s ~ ~ -50

#timer
scoreboard players add Timer Timer 1
execute if entity @e[tag=reset,tag=sudden] run execute if score Timer Timer matches 20.. run function rush:scoreboard/timer
execute if entity @e[tag=reset,tag=!sudden] run execute if score Timer Timer matches 20.. run function rush:scoreboard/timer2
execute as @e[type=minecraft:ender_dragon,limit=1,nbt={DragonPhase:6}] run data merge entity @s {DragonPhase:8}


#win test if deconnexion (and not crash)
scoreboard players set TeamAlive Counter 0
execute if entity @a[team=blue,tag=TeamAlive] run scoreboard players add TeamAlive Counter 1
execute if entity @a[team=pink,tag=TeamAlive] run scoreboard players add TeamAlive Counter 1
execute if entity @a[team=orange,tag=TeamAlive] run scoreboard players add TeamAlive Counter 1
execute if entity @a[team=green,tag=TeamAlive] run scoreboard players add TeamAlive Counter 1

scoreboard players set leave leave2 0
scoreboard players operation leave leave2 += * leave

scoreboard players operation leave leave2 -= leave2 leave2

scoreboard players set leave2 leave2 0
scoreboard players operation leave2 leave2 += * leave


execute if score leave leave2 matches 1 if score TeamAlive Counter <= 1 Counter as @e[tag=reset] at @s run function rush:win

#tp after death
scoreboard players add @a[scores={TimerDeath=1..}] TimerDeath 1

tp @a[gamemode=spectator,team=pink,scores={TimerDeath=1..}] @e[tag=flags,tag=Pink,limit=1]
tp @a[gamemode=spectator,team=blue,scores={TimerDeath=1..}] @e[tag=flags,tag=Blue,limit=1]
tp @a[gamemode=spectator,team=orange,scores={TimerDeath=1..}] @e[tag=flags,tag=Orange,limit=1]
tp @a[gamemode=spectator,team=green,scores={TimerDeath=1..}] @e[tag=flags,tag=Green,limit=1]
execute as @e[tag=flags,tag=Pink,limit=1] at @s if block ~ ~-1 ~ minecraft:air run tp @a[gamemode=spectator,team=pink,scores={TimerDeath=1..}] ~ ~-1 ~
execute as @e[tag=flags,tag=Blue,limit=1] at @s if block ~ ~-1 ~ minecraft:air run tp @a[gamemode=spectator,team=blue,scores={TimerDeath=1..}] ~ ~-1 ~
execute as @e[tag=flags,tag=orange,limit=1] at @s if block ~ ~-1 ~ minecraft:air run tp @a[gamemode=spectator,team=Orange,scores={TimerDeath=1..}] ~ ~-1 ~
execute as @e[tag=flags,tag=Green,limit=1] at @s if block ~ ~-1 ~ minecraft:air run tp @a[gamemode=spectator,team=green,scores={TimerDeath=1..}] ~ ~-1 ~

title @a[gamemode=spectator,scores={TimerDeath=2},tag=TeamAlive] title {"text":"Respawn in 3s","color":"red"}
title @a[gamemode=spectator,scores={TimerDeath=20},tag=TeamAlive] title {"text":"Respawn in 2s","color":"red"}
title @a[gamemode=spectator,scores={TimerDeath=40},tag=TeamAlive] title {"text":"Respawn in 1s","color":"red"}
title @a[gamemode=spectator,scores={TimerDeath=60},tag=TeamAlive] title {"text":"Respawn...","color":"red"}

gamemode adventure @a[gamemode=spectator,scores={TimerDeath=60..},tag=TeamAlive]
scoreboard players set @a[scores={TimerDeath=60..},tag=TeamAlive] TimerDeath 0



#zone
execute as @e[type=area_effect_cloud,tag=Low] at @s run particle dust 1 0.5 1 4 ~ ~-90 ~ 6 15 6 0 2 force
execute as @e[type=area_effect_cloud,tag=Low] at @s run particle dust 1 0.5 1 4 ~ ~-60 ~ 6 15 6 0 4 force
execute as @e[type=area_effect_cloud,tag=Low] at @s run particle dust 1 0.5 1 4 ~ ~-20 ~ 6 10 6 0 5 force

execute as @e[type=area_effect_cloud,tag=High] at @s run particle dust 1 0.5 1 4 ~ ~20 ~ 6 10 6 0 5 force
execute as @e[type=area_effect_cloud,tag=High] at @s run particle dust 1 0.5 1 4 ~ ~60 ~ 6 15 6 0 4 force
execute as @e[type=area_effect_cloud,tag=High] at @s run particle dust 1 0.5 1 4 ~ ~90 ~ 6 15 6 0 2 force


execute as @e[type=area_effect_cloud,tag=Low] at @s positioned -15 ~ -15 run effect give @a[dx=30,dy=-200,dz=30] minecraft:wither 1 2 true
execute as @e[type=area_effect_cloud,tag=High] at @s positioned -15 ~ -15 run effect give @a[dx=30,dy=200,dz=30] minecraft:wither 1 2 true
