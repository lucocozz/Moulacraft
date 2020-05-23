scoreboard objectives add Sleep custom:sleep_in_bed
scoreboard objectives add NotSleep custom:time_since_rest
scoreboard objectives add Sleeping_vars dummy
function moulacraft:multiplayer_sleeping/init
tellraw @a {"text": "Multiplayer sleeping setup.", "color":"green"}
