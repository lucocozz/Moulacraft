team add Player
team modify Player color yellow
team add Admin
team modify Admin color red

scoreboard objectives add Server_stats dummy
scoreboard objectives add PV health
scoreboard objectives add Morts deathCount
tellraw @a {"text": "Server data setup.", "color":"green"}
