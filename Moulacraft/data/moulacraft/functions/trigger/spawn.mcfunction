execute if entity @e[name=Spawn] run teleport @a[scores={Spawn=1..}] @e[name=Spawn,limit=1]
execute unless entity @e[name=Spawn] run tellraw @a[scores={Spawn=1..}] {"text": "Aucun spawn trouve.", "color":"yellow"}
scoreboard players set @a[scores={Spawn=1..}] Spawn 0