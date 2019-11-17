execute if entity @s[nbt={Rotation:[271.0f,0f]}] if block ~1 ~ ~ minecraft:jukebox[has_record=true] run setblock ~1 ~ ~ minecraft:jukebox[has_record=false]
execute if entity @s[nbt={Rotation:[92.0f,0f]}] if block ~-1 ~ ~ minecraft:jukebox[has_record=true] run setblock ~-1 ~ ~ minecraft:jukebox[has_record=false]
execute if entity @s[nbt={Rotation:[183.0f,0f]}] if block ~ ~ ~-1 minecraft:jukebox[has_record=true] run setblock ~ ~ ~-1 minecraft:jukebox[has_record=false]
execute if entity @s[nbt={Rotation:[4.0f,0f]}] if block ~ ~ ~1 minecraft:jukebox[has_record=true] run setblock ~ ~ ~1 minecraft:jukebox[has_record=false]
kill @s