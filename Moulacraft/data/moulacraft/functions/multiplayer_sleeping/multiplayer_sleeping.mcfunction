scoreboard players set @a[scores={NotSleep=1..}] NotSleep 1
execute store result score Time Server_stats run time query daytime
scoreboard players set @a[scores={NotSleep=1..}] Sleep 0
execute as @a[scores={Sleep=1},tag=!Sleeping] run scoreboard players add InSleep Sleeping_vars 1

execute as @a[scores={Sleep=1},tag=!Sleeping] run tellraw @a ["",{"selector":"@s"},{"text":" est en train de dormir. ","color":"yellow"},{"text":"(","color":"red"},{"score":{"name":"InSleep","objective":"Sleeping_vars"},"color":"red"},{"text":"/","color":"red"},{"score":{"name":"SleepNeed","objective":"Sleeping_vars"},"color":"red"},{"text":")","color":"red"}]

tag @a[scores={Sleep=1},tag=!Sleeping] add Sleeping
execute as @a[scores={NotSleep=1..},tag=Sleeping] run scoreboard players remove InSleep Sleeping_vars 1

execute unless score Time Server_stats matches 0..12541 as @a[scores={NotSleep=1..},tag=Sleeping] run tellraw @a ["",{"selector":"@s"},{"text":" a quitter le lit. ","color":"yellow"},{"text":"(","color":"red"},{"score":{"name":"InSleep","objective":"Sleeping_vars"},"color":"red"},{"text":"/","color":"red"},{"score":{"name":"SleepNeed","objective":"Sleeping_vars"},"color":"red"},{"text":")","color":"red"}]

tag @a[scores={NotSleep=1..},tag=Sleeping] remove Sleeping
scoreboard players operation SleepNeed Sleeping_vars = Connected Server_stats
scoreboard players operation SleepNeed Sleeping_vars /= Divide Sleeping_vars
scoreboard players operation Round Sleeping_vars = Connected Server_stats
scoreboard players operation Round Sleeping_vars %= Divide Sleeping_vars
execute if score SleepNeed Sleeping_vars matches 0 run scoreboard players set SleepNeed Sleeping_vars 1
execute if score Connected Server_stats matches 2.. run scoreboard players operation SleepNeed Sleeping_vars += Round Sleeping_vars
execute if score Connected Server_stats matches 2.. run execute if score InSleep Sleeping_vars = SleepNeed Sleeping_vars run weather clear 2400
execute if score Connected Server_stats matches 2.. run execute if score InSleep Sleeping_vars = SleepNeed Sleeping_vars run time set 0
