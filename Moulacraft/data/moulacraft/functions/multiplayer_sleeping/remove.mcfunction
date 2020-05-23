scoreboard objectives remove NotSleep
scoreboard objectives remove Sleep
scoreboard objectives remove Sleeping_vars
tag @a[tag=Sleeping] remove Sleeping
tellraw @a {"text": "Multiplayer sleeping removed.", "color":"red"}