execute as @a[scores={Coords=1}] store result score @s Coords_x run data get entity @s Pos[0]
execute as @a[scores={Coords=1}] store result score @s Coords_y run data get entity @s Pos[1]
execute as @a[scores={Coords=1}] store result score @s Coords_z run data get entity @s Pos[2]
execute if entity @a[scores={Coords=1}] run title @a actionbar ["",{"text":"x:","bold":true,"color":"gold"},{"score":{"name":"*","objective":"Coords_x"},"bold":true,"color":"red"},{"text":" y:","bold":true,"color":"gold"},{"score":{"name":"*","objective":"Coords_y"},"bold":true,"color":"red"},{"text":" z:","bold":true,"color":"gold"},{"score":{"name":"*","objective":"Coords_z"},"bold":true,"color":"red"}]
scoreboard players set @a[scores={Coords=2..}] Coords 0