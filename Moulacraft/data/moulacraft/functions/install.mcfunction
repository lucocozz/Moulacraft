function #moulacraft:setup_all
tellraw @s {"text": "Moulacraft install !", "color":"dark_green", "bold": true}
playsound entity.player.levelup master @s ~ ~ ~
scoreboard players set init moulacraft_data 1
