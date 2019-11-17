
scoreboard players remove #filter-hopper# __shoukadp__ 1
execute store result score #filter-hopper# __shoukadp__ run data get block ~ ~ ~ Items[0].Count

execute store success score #filter-transfer# __shoukadp__ if score #filter-hopper# __shoukadp__ matches 2..

execute store result score #filter-cooldown# __shoukadp__ run data get block ~ ~ ~ TransferCooldown
execute if score #filter-timer# __shoukadp__ matches 7 if score #filter-cooldown# __shoukadp__ matches 0 if score #filter-transfer# __shoukadp__ matches 0 run scoreboard players set #inv-rotate# __shoukadp__ 1
execute if score #filter-timer# __shoukadp__ matches 7 if score #filter-cooldown# __shoukadp__ matches 0 if score #filter-transfer# __shoukadp__ matches 0 run scoreboard players set #inv-keep# __shoukadp__ 0
execute if score #filter-timer# __shoukadp__ matches 7 if score #filter-cooldown# __shoukadp__ matches 0 if score #filter-transfer# __shoukadp__ matches 0 run function filter-hopper:tasks/hopper_position/to_facing
#execute if score #filter-timer# __shoukadp__ matches 7 if score #filter-cooldown# __shoukadp__ matches 0 if score #filter-transfer# __shoukadp__ matches 0 run function filter-hopper:tasks/inv_rotation