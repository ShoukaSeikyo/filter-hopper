scoreboard players set #inv-max# __shoukadp__ 4
function filter-hopper:tasks/hopper_utils/clone/to/jukebox

execute unless score #inv-keep# __shoukadp__ matches 1 if entity @s[nbt={Rotation:[271.0f,0f]}] run setblock ~ ~ ~ minecraft:hopper[facing=east]{CustomName:'{"text":"Filter Hopper"}',TransferCooldown:8s} replace
execute unless score #inv-keep# __shoukadp__ matches 1 if entity @s[nbt={Rotation:[90.0f,10f]}] run setblock ~ ~ ~ minecraft:hopper[facing=west]{CustomName:'{"text":"Filter Hopper"}',TransferCooldown:8s} replace
execute unless score #inv-keep# __shoukadp__ matches 1 if entity @s[nbt={Rotation:[183.0f,0f]}] run setblock ~ ~ ~ minecraft:hopper[facing=north]{CustomName:'{"text":"Filter Hopper"}',TransferCooldown:8s} replace
execute unless score #inv-keep# __shoukadp__ matches 1 if entity @s[nbt={Rotation:[4.0f,0f]}] run setblock ~ ~ ~ minecraft:hopper[facing=south]{CustomName:'{"text":"Filter Hopper"}',TransferCooldown:8s} replace

function filter-hopper:tasks/inv_utils/clone/to/hopper/from/jukebox

#Clean Up
scoreboard players reset #inv-rotate# __shoukadp__
scoreboard players reset #inv-max# __shoukadp__
scoreboard players reset #inv-slot# __shoukadp__