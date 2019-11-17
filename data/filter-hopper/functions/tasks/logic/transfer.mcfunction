execute if entity @s[nbt={Rotation:[271.0f,0f]}] positioned ~2 ~ ~ run function filter-hopper:tasks/logic/mode
execute if entity @s[nbt={Rotation:[92.0f,0f]}] positioned ~-2 ~ ~ run function filter-hopper:tasks/logic/mode
execute if entity @s[nbt={Rotation:[183.0f,0f]}] positioned ~ ~ ~-2 run function filter-hopper:tasks/logic/mode
execute if entity @s[nbt={Rotation:[4.0f,0f]}] positioned ~ ~ ~2 run function filter-hopper:tasks/logic/mode

execute if score #filter-mode# __shoukadp__ matches 1 run function filter-hopper:tasks/hopper_utils/position/down
execute if score #filter-mode# __shoukadp__ matches 2 run function filter-hopper:tasks/hopper_utils/position/stairs

scoreboard players reset #filter-mode# __shoukadp__
