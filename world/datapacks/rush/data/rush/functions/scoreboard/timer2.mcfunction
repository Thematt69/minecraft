scoreboard players set Timer Timer 0
scoreboard players add Seconde Timer 1

execute if score Seconde Timer matches 60.. run scoreboard players add Minute Timer 1
execute if score Seconde Timer matches 60.. run scoreboard players set Seconde Timer 0

execute if score Minute Timer matches 60.. run scoreboard players add Heure Timer 1
execute if score Minute Timer matches 60.. run scoreboard players set Minute Timer 0

execute if score Heure Timer matches 1.. run title @a actionbar ["",{"score":{"name":"Heure","objective":"Timer"},"color":"green","bold":"true"},{"text":"h","color":"green"},{"score":{"name":"Minute","objective":"Timer"},"color":"green","bold":"true"},{"text":"m","color":"green"},{"score":{"name":"Seconde","objective":"Timer","bold":"true"},"color":"green","bold":"true"},{"text":"s","color":"green"}]

execute if score Heure Timer matches ..0 run title @a actionbar ["",{"score":{"name":"Minute","objective":"Timer"},"color":"green","bold":"true"},{"text":"m","color":"green"},{"score":{"name":"Seconde","objective":"Timer"},"color":"green","bold":"true"},{"text":"s","color":"green"}]