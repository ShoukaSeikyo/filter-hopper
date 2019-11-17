execute if block ~ ~ ~ minecraft:hopper[facing=east] run summon area_effect_cloud ~ ~ ~ {CustomName:"\"Filter Hopper\"",Tags:["filter-hopper"],Duration:-1,Age:-2147483648,WaitTime:-2147483648,Rotation:[271f,0f]}
execute if block ~ ~ ~ minecraft:hopper[facing=west] run summon area_effect_cloud ~ ~ ~ {CustomName:"\"Filter Hopper\"",Tags:["filter-hopper"],Duration:-1,Age:-2147483648,WaitTime:-2147483648,Rotation:[92f,0f]}
execute if block ~ ~ ~ minecraft:hopper[facing=north] run summon area_effect_cloud ~ ~ ~ {CustomName:"\"Filter Hopper\"",Tags:["filter-hopper"],Duration:-1,Age:-2147483648,WaitTime:-2147483648,Rotation:[183f,0f]}
execute if block ~ ~ ~ minecraft:hopper[facing=south] run summon area_effect_cloud ~ ~ ~ {CustomName:"\"Filter Hopper\"",Tags:["filter-hopper"],Duration:-1,Age:-2147483648,WaitTime:-2147483648,Rotation:[4f,0f]}

execute if block ~ ~ ~ minecraft:hopper[facing=east] run setblock ~1 ~ ~ minecraft:jukebox[has_record=true]
execute if block ~ ~ ~ minecraft:hopper[facing=west] run setblock ~-1 ~ ~ minecraft:jukebox[has_record=true]
execute if block ~ ~ ~ minecraft:hopper[facing=north] run setblock ~ ~ ~-1 minecraft:jukebox[has_record=true]
execute if block ~ ~ ~ minecraft:hopper[facing=south] run setblock ~ ~ ~1 minecraft:jukebox[has_record=true]