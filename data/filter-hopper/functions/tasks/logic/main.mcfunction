#We validate the Hopper for transfer
function filter-hopper:tasks/logic/validate

#If the Hopper is valid for transfer, we change its direction
execute if score #filter-transfer# __shoukadp__ matches 1 run function filter-hopper:tasks/logic/transfer
#else we put it back to its original position
execute unless score #filter-transfer# __shoukadp__ matches 1 run function filter-hopper:tasks/hopper_utils/position/facing

execute if block ~ ~-1 ~ hopper store result score #filter-cooldown# __shoukadp__ run data get block ~ ~-1 ~ TransferCooldown
execute if score #filter-transfer# __shoukadp__ matches 0 if score #filter-cooldown# __shoukadp__ matches 0..1 run data merge block ~ ~-1 ~ {TransferCooldown:2s}

execute if entity @s[nbt={Rotation:[271.0f,0f]}] run setblock ~1 ~ ~ minecraft:jukebox[has_record=true]
execute if entity @s[nbt={Rotation:[92.0f,0f]}] run setblock ~-1 ~ ~ minecraft:jukebox[has_record=true]
execute if entity @s[nbt={Rotation:[183.0f,0f]}] run setblock ~ ~ ~-1 minecraft:jukebox[has_record=true]
execute if entity @s[nbt={Rotation:[4.0f,0f]}] run setblock ~ ~ ~1 minecraft:jukebox[has_record=true]

#Clean Up
scoreboard players reset #filter-hopper# __shoukadp__
scoreboard players reset #filter-transfer# __shoukadp__
scoreboard players reset #filter-cooldown# __shoukadp__