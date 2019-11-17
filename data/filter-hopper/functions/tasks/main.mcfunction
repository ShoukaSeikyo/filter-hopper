#We make every filter-hopper update its logic.
execute as @e[type=minecraft:area_effect_cloud,tag=filter-hopper] at @s run function filter-hopper:tasks/logic

#We setup a global timer to rotate items in the inventories.
scoreboard players add #filter-timer# __shoukadp__ 1
execute if score #filter-timer# __shoukadp__ matches 8 run scoreboard players set #filter-timer# __shoukadp__ 0