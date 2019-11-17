scoreboard players set #inv-max# __shoukadp__ 4
execute unless score #inv-rotate# __shoukadp__ matches 1 run scoreboard players set #inv-rotate# __shoukadp__ 0
execute unless score #inv-keep# __shoukadp__ matches 1 run scoreboard players set #inv-keep# __shoukadp__ 0
execute store result score #inv-length# __shoukadp__ run data get block ~ ~ ~ Items

execute if score #inv-length# __shoukadp__ matches 1.. if entity @s[nbt={Rotation:[271.0f,0f]}] positioned ~1 ~ ~ run function filter-hopper:tasks/hopper_position/to/jukebox
execute if score #inv-length# __shoukadp__ matches 1.. if entity @s[nbt={Rotation:[92.0f,0f]}] positioned ~-1 ~ ~ run function filter-hopper:tasks/hopper_position/to/jukebox
execute if score #inv-length# __shoukadp__ matches 1.. if entity @s[nbt={Rotation:[183.0f,0f]}] positioned ~ ~ ~-1 run function filter-hopper:tasks/hopper_position/to/jukebox
execute if score #inv-length# __shoukadp__ matches 1.. if entity @s[nbt={Rotation:[4.0f,0f]}] positioned ~ ~ ~1 run function filter-hopper:tasks/hopper_position/to/jukebox

execute if score #inv-keep# __shoukadp__ matches 0 if entity @s[nbt={Rotation:[271.0f,0f]}] run setblock ~ ~ ~ minecraft:hopper[facing=east]{CustomName:'{"text":"Filter Hopper"}',TransferCooldown:8s} replace
execute if score #inv-keep# __shoukadp__ matches 0 if entity @s[nbt={Rotation:[90.0f,10f]}] run setblock ~ ~ ~ minecraft:hopper[facing=west]{CustomName:'{"text":"Filter Hopper"}',TransferCooldown:8s} replace
execute if score #inv-keep# __shoukadp__ matches 0 if entity @s[nbt={Rotation:[183.0f,0f]}] run setblock ~ ~ ~ minecraft:hopper[facing=north]{CustomName:'{"text":"Filter Hopper"}',TransferCooldown:8s} replace
execute if score #inv-keep# __shoukadp__ matches 0 if entity @s[nbt={Rotation:[4.0f,0f]}] run setblock ~ ~ ~ minecraft:hopper[facing=south]{CustomName:'{"text":"Filter Hopper"}',TransferCooldown:8s} replace

function filter-hopper:tasks/hopper_position/from/jukebox

#Clean Up
scoreboard players reset #inv-rotate# __shoukadp__
scoreboard players reset #inv-max# __shoukadp__
scoreboard players reset #inv-length# __shoukadp__
scoreboard players reset #inv-slot# __shoukadp__