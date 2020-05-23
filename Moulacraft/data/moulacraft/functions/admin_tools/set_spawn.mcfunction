execute if entity @e[name=Spawn] run tp @e[name=Spawn] @s
execute unless entity @e[name=Spawn] as @s at @s run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Spawn"}'}
tellraw @s {"text": "Spawn set !", "color":"yellow"}