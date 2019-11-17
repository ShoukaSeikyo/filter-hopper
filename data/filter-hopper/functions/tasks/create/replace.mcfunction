execute if block ~ ~ ~ minecraft:command_block[facing=east] run setblock ~ ~ ~ minecraft:hopper[facing=east]{CustomName:'{"text":"Filter Hopper"}',TransferCooldown:8s}
execute if block ~ ~ ~ minecraft:command_block[facing=west] run setblock ~ ~ ~ minecraft:hopper[facing=west]{CustomName:'{"text":"Filter Hopper"}',TransferCooldown:8s}
execute if block ~ ~ ~ minecraft:command_block[facing=north] run setblock ~ ~ ~ minecraft:hopper[facing=north]{CustomName:'{"text":"Filter Hopper"}',TransferCooldown:8s}
execute if block ~ ~ ~ minecraft:command_block[facing=south] run setblock ~ ~ ~ minecraft:hopper[facing=south]{CustomName:'{"text":"Filter Hopper"}',TransferCooldown:8s}

execute if block ~ ~ ~ minecraft:hopper[facing=east] store success score #filter-create# __shoukadp__ if block ~1 ~ ~ minecraft:jukebox[has_record=false]
execute if block ~ ~ ~ minecraft:hopper[facing=west] store success score #filter-create# __shoukadp__ if block ~-1 ~ ~ minecraft:jukebox[has_record=false]
execute if block ~ ~ ~ minecraft:hopper[facing=north] store success score #filter-create# __shoukadp__ if block ~ ~ ~-1 minecraft:jukebox[has_record=false]
execute if block ~ ~ ~ minecraft:hopper[facing=south] store success score #filter-create# __shoukadp__ if block ~ ~ ~1 minecraft:jukebox[has_record=false]

execute if score #filter-create# __shoukadp__ matches 1 run function filter-hopper:tasks/create/setup

scoreboard players reset #filter-create# __shoukadp__