scoreboard objectives add Spawn trigger
scoreboard objectives add Coords trigger
function moulacraft:trigger/coords/setup
scoreboard objectives add Stats trigger
tellraw @a {"text": "Trigger setup.", "color":"green"}
