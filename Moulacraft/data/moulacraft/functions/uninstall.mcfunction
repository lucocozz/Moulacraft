function #moulacraft:remove_all
scoreboard objectives remove moulacraft_data
tellraw @s {"text": "Moulacraft uninstall !", "color":"dark_red","bold": true}
playsound entity.item.break master @s ~ ~ ~ 
datapack disable "file/Moulacraft"