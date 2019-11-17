execute store result score #inv-length# __shoukadp__ run data get block ~ ~ ~ Items

execute if score #inv-length# __shoukadp__ matches 1.. if entity @s[nbt={Rotation:[271.0f,0f]}] positioned ~1 ~ ~ run function filter-hopper:tasks/inv_utils/clone/to/jukebox/from/hopper
execute if score #inv-length# __shoukadp__ matches 1.. if entity @s[nbt={Rotation:[92.0f,0f]}] positioned ~-1 ~ ~ run function filter-hopper:tasks/inv_utils/clone/to/jukebox/from/hopper
execute if score #inv-length# __shoukadp__ matches 1.. if entity @s[nbt={Rotation:[183.0f,0f]}] positioned ~ ~ ~-1 run function filter-hopper:tasks/inv_utils/clone/to/jukebox/from/hopper
execute if score #inv-length# __shoukadp__ matches 1.. if entity @s[nbt={Rotation:[4.0f,0f]}] positioned ~ ~ ~1 run function filter-hopper:tasks/inv_utils/clone/to/jukebox/from/hopper

scoreboard players reset #inv-length# __shoukadp__