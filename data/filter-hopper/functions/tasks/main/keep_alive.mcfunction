scoreboard players set #filter-kill# __shoukadp__ 0
execute unless block ~ ~ ~ hopper{CustomName:'{"text":"Filter Hopper"}'} run scoreboard players set #filter-kill# __shoukadp__ 1

execute if score #filter-kill# __shoukadp__ matches 0 if entity @s[nbt={Rotation:[271.0f,0f]}] store success score #filter-kill# __shoukadp__ unless block ~1 ~ ~ minecraft:jukebox
execute if score #filter-kill# __shoukadp__ matches 0 if entity @s[nbt={Rotation:[92.0f,0f]}] store success score #filter-kill# __shoukadp__ unless block ~-1 ~ ~ minecraft:jukebox
execute if score #filter-kill# __shoukadp__ matches 0 if entity @s[nbt={Rotation:[183.0f,0f]}] store success score #filter-kill# __shoukadp__ unless block ~ ~ ~-1 minecraft:jukebox
execute if score #filter-kill# __shoukadp__ matches 0 if entity @s[nbt={Rotation:[4.0f,0f]}] store success score #filter-kill# __shoukadp__ unless block ~ ~ ~1 minecraft:jukebox