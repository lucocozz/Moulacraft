scoreboard objectives remove Spawn
scoreboard objectives remove Coords
function moulacraft:trigger/coords/remove
scoreboard objectives remove Stats
tellraw @a {"text": "Trigger removed.", "color":"red"}
