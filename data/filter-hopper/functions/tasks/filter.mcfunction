scoreboard players set #filter-transfer# __shoukadp__ 0

#We wait for the hopper under this to be ready to do its thing on the next tick and check if our first slot has more than 1 of its item
##execute if block ~ ~-1 ~ hopper{TransferCooldown:1} run function filter-hopper:tasks/filter/check_slot

function filter-hopper:tasks/filter/check_slot
execute if score #filter-transfer# __shoukadp__ matches 1 run function filter-hopper:tasks/filter/check_mode
execute if score #filter-transfer# __shoukadp__ matches 1 if score #filter-mode# __shoukadp__ matches 1 run function filter-hopper:tasks/hopper_position/to_down
execute if score #filter-transfer# __shoukadp__ matches 1 if score #filter-mode# __shoukadp__ matches 2 run function filter-hopper:tasks/hopper_position/to_opposing
execute if score #filter-transfer# __shoukadp__ matches 0 run function filter-hopper:tasks/hopper_position/to_facing

execute if block ~ ~-1 ~ hopper store result score #filter-cooldown# __shoukadp__ run data get block ~ ~-1 ~ TransferCooldown
execute if score #filter-transfer# __shoukadp__ matches 0 if score #filter-cooldown# __shoukadp__ matches 0..1 run data merge block ~ ~-1 ~ {TransferCooldown:2s}

execute if entity @s[nbt={Rotation:[271.0f,0f]}] run setblock ~1 ~ ~ minecraft:jukebox[has_record=true]
execute if entity @s[nbt={Rotation:[92.0f,0f]}] run setblock ~-1 ~ ~ minecraft:jukebox[has_record=true]
execute if entity @s[nbt={Rotation:[183.0f,0f]}] run setblock ~ ~ ~-1 minecraft:jukebox[has_record=true]
execute if entity @s[nbt={Rotation:[4.0f,0f]}] run setblock ~ ~ ~1 minecraft:jukebox[has_record=true]

#Clean Up
scoreboard players reset #filter-mode# __shoukadp__
scoreboard players reset #filter-hopper# __shoukadp__
scoreboard players reset #filter-transfer# __shoukadp__
scoreboard players reset #filter-cooldown# __shoukadp__