execute as @a[tag=JReset] unless entity @s[x=1017,y=98,z=1000,dx=0,dy=0,dz=0] run tag @s remove JReset
tag @a[tag=Jump,x=1012,y=98,z=997,dx=2,dy=4,dz=7] remove Jump



scoreboard players add @a[tag=Jump] JumpMSeconde 5
scoreboard players add @a[tag=Jump,scores={JumpMSeconde=100..}] JumpSeconde 1
scoreboard players set @a[tag=Jump,scores={JumpMSeconde=100..}] JumpMSeconde 0

execute as @a[tag=Jump,scores={JumpMSeconde=..9}] run title @s actionbar ["",{"score":{"name":"@s","objective":"JumpSeconde"},"bold":true,"color":"gold"},{"text":".0","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"JumpMSeconde"},"bold":true,"color":"gold"},{"text":"s","color":"dark_aqua"}]
execute as @a[tag=Jump,scores={JumpMSeconde=10..}] run title @s actionbar ["",{"score":{"name":"@s","objective":"JumpSeconde"},"bold":true,"color":"gold"},{"text":".","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"JumpMSeconde"},"bold":true,"color":"gold"},{"text":"s","color":"dark_aqua"}]


tp @a[x=930,y=60,z=930,dx=200,dy=25,dz=200,tag=Jump] 1016 98 1000 -90 0

scoreboard players set @a[x=1017,y=98,z=1000,dx=0,dy=0,dz=0,tag=!JReset] JumpMSeconde 0
scoreboard players set @a[x=1017,y=98,z=1000,dx=0,dy=0,dz=0,tag=!JReset] JumpSeconde 0

tag @a[x=1017,y=98,z=1000,dx=0,dy=0,dz=0] add JReset


execute as @a[x=985,y=100,z=1000,dx=0,dy=0,dz=0,tag=Jump] run tag @s add EndJ

execute as @a[tag=EndJ] if score @s JumpSeconde < @s JumpPB2 run tag @s add PB
execute as @a[tag=EndJ] if score @s JumpSeconde = @s JumpPB2 if score @s JumpMSeconde < @s JumpPB1 run tag @s add PB

execute as @a[tag=EndJ] run tellraw @a[tag=!EndJ] [{"selector":"@s","color":"gold"},{"text":" finish the jump in ","color":"green"},{"score":{"name":"@s","objective":"JumpSeconde"}},{"text":".","color":"green"},{"score":{"name":"@s","objective":"JumpMSeconde"}},{"text":" secondes!","color":"green"}]

execute as @a[tag=EndJ] run tellraw @a[tag=!PB,tag=EndJ] ["",{"text":"You finished the jump in","color":"green"},{"text":" "},{"score":{"name":"@s","objective":"JumpSeconde"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"@s","objective":"JumpMSeconde"},"color":"gold"},{"text":"s! \nYour best time is ","color":"green"},{"score":{"name":"@s","objective":"JumpPB2"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@s","objective":"JumpPB1"},"color":"gold"},{"text":"s.","color":"green"}]

execute as @a[tag=EndJ] run tellraw @a[tag=PB,tag=EndJ] ["",{"text":"You finished the jump in","color":"green"},{"text":" "},{"score":{"name":"@s","objective":"JumpSeconde"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"@s","objective":"JumpMSeconde"},"color":"gold"},{"text":"s! \nThis is your new best time!","color":"green"}]

execute as @a[tag=PB,tag=EndJ] run scoreboard players operation @s JumpPB1 = @s JumpMSeconde
execute as @a[tag=PB,tag=EndJ] run scoreboard players operation @s JumpPB2 = @s JumpSeconde

execute as @a[tag=EndJ] run tag @s remove PB
execute as @a[tag=EndJ] run tag @s remove Jump
execute as @a[tag=EndJ] run tag @s remove EndJ

