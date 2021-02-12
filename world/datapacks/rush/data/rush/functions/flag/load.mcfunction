scoreboard players set @s SelectedItem 0
scoreboard players set @s SelectedItem2 1
scoreboard players set @s SelectedFlag 0

summon area_effect_cloud ~ ~ ~ {Tags:["tpflag"],Duration:999999999}
tp @e[type=area_effect_cloud,tag=tpflag] @s
execute as @e[type=area_effect_cloud,tag=tpflag] at @s positioned ^ ^ ^-1 run tp ~ ~1.5 ~
execute as @e[tag=tpflag,type=area_effect_cloud] at @s unless block ~ ~ ~ #minecraft:banners if block ^ ^-1 ^0.5 #minecraft:banners run tp ^ ^-1 ^0.5

execute as @e[tag=tpflag,type=area_effect_cloud] at @s run function rush:flag/detect


execute as @e[tag=tpflag,type=area_effect_cloud] at @s if block ~ ~ ~ minecraft:chest run kill @s

execute as @e[tag=tpflag,type=area_effect_cloud] at @s unless block ~ ~ ~ #minecraft:banners if block ^ ^-1 ^ #minecraft:banners run tp ^ ^-1 ^
execute as @e[tag=tpflag,type=area_effect_cloud] at @s unless block ~ ~ ~ #minecraft:banners if block ~ ~1 ~ #minecraft:banners run tp ~ ~1 ~
execute as @e[tag=tpflag,type=area_effect_cloud] at @s unless block ~ ~ ~ #minecraft:banners if block ^1 ^ ^ #minecraft:banners run tp ^1 ^ ^
execute as @e[tag=tpflag,type=area_effect_cloud] at @s unless block ~ ~ ~ #minecraft:banners if block ^-1 ^ ^ #minecraft:banners run tp ^-1 ^ ^
execute as @e[tag=tpflag,type=area_effect_cloud] at @s unless block ~ ~ ~ #minecraft:banners if block ^ ^1 ^ #minecraft:banners run tp ^ ^1 ^



execute as @e[tag=tpflag,type=area_effect_cloud] at @s align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
execute as @e[tag=flags] at @s positioned ~-0.5 ~-0.5 ~-0.5 run kill @e[tag=tpflag,dx=0,dy=0,dz=0]
execute as @e[tag=tpflag,type=area_effect_cloud] at @s if block ~ ~ ~ #minecraft:banners run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["flags","Spawn"],Duration:999999999}

execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s run particle minecraft:item_snowball ~ ~1 ~ 0 0.3 0 0.2 30 force
execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s run playsound block.piston.contract master @a[distance=..10] ~ ~ ~ 1 2 0.5

execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s if block ~ ~ ~ minecraft:blue_banner run function rush:flag/blue
execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s if block ~ ~ ~ minecraft:blue_wall_banner run function rush:flag/blue

execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s if block ~ ~ ~ minecraft:green_banner run function rush:flag/green
execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s if block ~ ~ ~ minecraft:green_wall_banner run function rush:flag/green

execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s if block ~ ~ ~ minecraft:orange_banner run function rush:flag/orange
execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s if block ~ ~ ~ minecraft:orange_wall_banner run function rush:flag/orange

execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s if block ~ ~ ~ minecraft:pink_banner run function rush:flag/pink
execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s if block ~ ~ ~ minecraft:pink_wall_banner run function rush:flag/pink

execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s if block ~ ~ ~ #minecraft:banners[facing=south] run tp @s ~ ~ ~ 0 ~
execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s if block ~ ~ ~ #minecraft:banners[facing=west] run tp @s ~ ~ ~ 90 0 
execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s if block ~ ~ ~ #minecraft:banners[facing=north] run tp @s ~ ~ ~ -180 0 
execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s if block ~ ~ ~ #minecraft:banners[facing=east] run tp @s ~ ~ ~ -90 0 

execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s if block ~ ~ ~ #minecraft:banners[rotation=0] run tp @s ~ ~ ~ 0 ~
execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s if block ~ ~ ~ #minecraft:banners[rotation=1] run tp @s ~ ~ ~ 22.5 ~
execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s if block ~ ~ ~ #minecraft:banners[rotation=2] run tp @s ~ ~ ~ 45 ~
execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s if block ~ ~ ~ #minecraft:banners[rotation=3] run tp @s ~ ~ ~ 67.5 ~

execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s if block ~ ~ ~ #minecraft:banners[rotation=4] run tp @s ~ ~ ~ 90 ~
execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s if block ~ ~ ~ #minecraft:banners[rotation=5] run tp @s ~ ~ ~ 112.5 ~
execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s if block ~ ~ ~ #minecraft:banners[rotation=6] run tp @s ~ ~ ~ 135 ~
execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s if block ~ ~ ~ #minecraft:banners[rotation=7] run tp @s ~ ~ ~ 157.5 ~

execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s if block ~ ~ ~ #minecraft:banners[rotation=8] run tp @s ~ ~ ~ 180 ~
execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s if block ~ ~ ~ #minecraft:banners[rotation=9] run tp @s ~ ~ ~ -157.5 ~
execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s if block ~ ~ ~ #minecraft:banners[rotation=10] run tp @s ~ ~ ~ -135 ~
execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s if block ~ ~ ~ #minecraft:banners[rotation=11] run tp @s ~ ~ ~ -112.5 ~

execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s if block ~ ~ ~ #minecraft:banners[rotation=12] run tp @s ~ ~ ~ -90 ~
execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s if block ~ ~ ~ #minecraft:banners[rotation=13] run tp @s ~ ~ ~ -67.5 ~
execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s if block ~ ~ ~ #minecraft:banners[rotation=14] run tp @s ~ ~ ~ -45 ~
execute as @e[type=area_effect_cloud,tag=Spawn,tag=flags] at @s if block ~ ~ ~ #minecraft:banners[rotation=15] run tp @s ~ ~ ~ -22.5 ~


tag @e[tag=Spawn] remove Spawn

function rush:scoreboard/reload

