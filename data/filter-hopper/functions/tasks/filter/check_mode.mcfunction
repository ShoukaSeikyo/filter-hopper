scoreboard players set #filter-mode# __shoukadp__ 0

execute if entity @s[nbt={Rotation:[271.0f,0f]}] if block ~2 ~ ~ minecraft:redstone_block run scoreboard players set #filter-mode# __shoukadp__ 1
execute if entity @s[nbt={Rotation:[92.0f,0f]}] if block ~-2 ~ ~ minecraft:redstone_block run scoreboard players set #filter-mode# __shoukadp__ 1
execute if entity @s[nbt={Rotation:[183.0f,0f]}] if block ~ ~ ~-2 minecraft:redstone_block run scoreboard players set #filter-mode# __shoukadp__ 1
execute if entity @s[nbt={Rotation:[4.0f,0f]}] if block ~ ~ ~2 minecraft:redstone_block run scoreboard players set #filter-mode# __shoukadp__ 1

execute if entity @s[nbt={Rotation:[271.0f,0f]}] if block ~2 ~ ~ minecraft:lapis_block run scoreboard players set #filter-mode# __shoukadp__ 2
execute if entity @s[nbt={Rotation:[92.0f,0f]}] if block ~-2 ~ ~ minecraft:lapis_block run scoreboard players set #filter-mode# __shoukadp__ 2
execute if entity @s[nbt={Rotation:[183.0f,0f]}] if block ~ ~ ~-2 minecraft:lapis_block run scoreboard players set #filter-mode# __shoukadp__ 2
execute if entity @s[nbt={Rotation:[4.0f,0f]}] if block ~ ~ ~2 minecraft:lapis_block run scoreboard players set #filter-mode# __shoukadp__ 2