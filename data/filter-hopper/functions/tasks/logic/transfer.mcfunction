execute if entity @s[nbt={Rotation:[271.0f,0f]}] positioned ~2 ~ ~ run function filter-hopper:tasks/logic/mode
execute if entity @s[nbt={Rotation:[92.0f,0f]}] positioned ~-2 ~ ~ run function filter-hopper:tasks/logic/mode
execute if entity @s[nbt={Rotation:[183.0f,0f]}] positioned ~ ~ ~-2 run function filter-hopper:tasks/logic/mode
execute if entity @s[nbt={Rotation:[4.0f,0f]}] positioned ~ ~ ~2 run function filter-hopper:tasks/logic/mode

#If there is a Filter under this Hopper, we do not rotate this one
execute align xyz positioned ~ ~1.5 ~ if entity @e[distance=0..1,tag=filter-valid] run scoreboard players set #filter-mode# __shoukadp__ 0
execute if score #filter-mode# __shoukadp__ matches 1 run function filter-hopper:tasks/hopper_utils/position/down
execute if score #filter-mode# __shoukadp__ matches 2 run function filter-hopper:tasks/hopper_utils/position/stairs

scoreboard players reset #filter-mode# __shoukadp__
