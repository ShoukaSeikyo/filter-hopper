execute unless block ~ ~ ~ hopper{CustomName:'{"text":"Filter Hopper"}'} run scoreboard players set #filter-kill# __shoukadp__ 1

execute unless score #filter-kill# __shoukadp__ matches 1 if entity @s[nbt={Rotation:[271.0f,0f]}] store success score #filter-kill# __shoukadp__ unless block ~1 ~ ~ minecraft:jukebox
execute unless score #filter-kill# __shoukadp__ matches 1 if entity @s[nbt={Rotation:[92.0f,0f]}] store success score #filter-kill# __shoukadp__ unless block ~-1 ~ ~ minecraft:jukebox
execute unless score #filter-kill# __shoukadp__ matches 1 if entity @s[nbt={Rotation:[183.0f,0f]}] store success score #filter-kill# __shoukadp__ unless block ~ ~ ~-1 minecraft:jukebox
execute unless score #filter-kill# __shoukadp__ matches 1 if entity @s[nbt={Rotation:[4.0f,0f]}] store success score #filter-kill# __shoukadp__ unless block ~ ~ ~1 minecraft:jukebox