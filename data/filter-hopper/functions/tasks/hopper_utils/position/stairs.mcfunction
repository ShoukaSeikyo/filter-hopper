scoreboard players set #inv-max# __shoukadp__ 4
function filter-hopper:tasks/hopper_utils/clone/to/jukebox
execute if entity @s[nbt={Rotation:[271.0f,0f]}] positioned ~2 ~ ~ run function filter-hopper:tasks/hopper_utils/position/stairs/rotation
execute if entity @s[nbt={Rotation:[92.0f,0f]}] positioned ~-2 ~ ~ run function filter-hopper:tasks/hopper_utils/position/stairs/rotation
execute if entity @s[nbt={Rotation:[183.0f,0f]}] positioned ~ ~ ~-2 run function filter-hopper:tasks/hopper_utils/position/stairs/rotation
execute if entity @s[nbt={Rotation:[4.0f,0f]}] positioned ~ ~ ~2 run function filter-hopper:tasks/hopper_utils/position/stairs/rotation
function filter-hopper:tasks/inv_utils/clone/to/hopper/from/jukebox

#Clean Up
scoreboard players reset #inv-rotate# __shoukadp__
scoreboard players reset #inv-max# __shoukadp__
scoreboard players reset #inv-length# __shoukadp__
scoreboard players reset #inv-slot# __shoukadp__