#this function is used to reload the scoreboard

scoreboard players set @e[tag=c_Blue,type=area_effect_cloud,scores={Counter=0..}] Counter 0
execute as @a[team=blue,gamemode=adventure] run scoreboard players add @e[tag=c_Blue,type=area_effect_cloud] Counter 1

scoreboard players set @e[tag=c_Green,type=area_effect_cloud,scores={Counter=0..}] Counter 0
execute as @a[team=green,gamemode=adventure] run scoreboard players add @e[tag=c_Green,type=area_effect_cloud] Counter 1

scoreboard players set @e[tag=c_Orange,type=area_effect_cloud,scores={Counter=0..}] Counter 0
execute as @a[team=orange,gamemode=adventure] run scoreboard players add @e[tag=c_Orange,type=area_effect_cloud] Counter 1

scoreboard players set @e[tag=c_Pink,type=area_effect_cloud,scores={Counter=0..}] Counter 0
execute as @a[team=pink,gamemode=adventure] run scoreboard players add @e[tag=c_Pink,type=area_effect_cloud] Counter 1

scoreboard players reset * rush

#team Blue
execute if entity @e[tag=flags,tag=Blue] run scoreboard players set §9§lBlue:§a§l✓ rush 1

execute unless entity @e[tag=flags,tag=Blue] as @e[tag=c_Blue,scores={Counter=0..5}] run function rush:scoreboard/blue/0-5
execute unless entity @e[tag=flags,tag=Blue] as @e[tag=c_Blue,scores={Counter=6..}] run function rush:scoreboard/blue/6-

#team Green
execute if entity @e[tag=flags,tag=Green] run scoreboard players set §2§lGreen:§a§l✓ rush 1

execute unless entity @e[tag=flags,tag=Green] as @e[tag=c_Green,scores={Counter=0..5}] run function rush:scoreboard/green/0-5
execute unless entity @e[tag=flags,tag=Green] as @e[tag=c_Green,scores={Counter=6..}] run function rush:scoreboard/green/6-

#team Orange
execute if entity @e[tag=flags,tag=Orange] run scoreboard players set §6§lOrange:§a§l✓ rush 1

execute unless entity @e[tag=flags,tag=Orange] as @e[tag=c_Orange,scores={Counter=0..5}] run function rush:scoreboard/orange/0-5
execute unless entity @e[tag=flags,tag=Orange] as @e[tag=c_Orange,scores={Counter=6..}] run function rush:scoreboard/orange/6-

#team Pink
execute if entity @e[tag=flags,tag=Pink] run scoreboard players set §d§lPink:§a§l✓ rush 1

execute unless entity @e[tag=flags,tag=Pink] as @e[tag=c_Pink,scores={Counter=0..5}] run function rush:scoreboard/pink/0-5
execute unless entity @e[tag=flags,tag=Pink] as @e[tag=c_Pink,scores={Counter=6..}] run function rush:scoreboard/pink/6-