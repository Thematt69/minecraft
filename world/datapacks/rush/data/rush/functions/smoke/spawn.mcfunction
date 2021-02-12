summon area_effect_cloud ~ ~ ~ {Tags:[Smoke],Duration:999999999}
scoreboard players set @a[scores={Smoke=1..}] Var 1
scoreboard players set @a[scores={Smoke=1..}] Smoke 0
kill @s