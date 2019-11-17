#FACING EAST
execute if score #filter-length# __shoukadp__ matches 2 if entity @s[nbt={Rotation:[271.0f,0f]}] run data modify block ~ ~ ~ Items[1] merge from block ~1 ~ ~ RecordItem
execute if score #filter-length# __shoukadp__ matches 3 if entity @s[nbt={Rotation:[271.0f,0f]}] run data modify block ~ ~ ~ Items[2] merge from block ~1 ~ ~ RecordItem
execute if score #filter-length# __shoukadp__ matches 4 if entity @s[nbt={Rotation:[271.0f,0f]}] run data modify block ~ ~ ~ Items[3] merge from block ~1 ~ ~ RecordItem
execute if score #filter-length# __shoukadp__ matches 5 if entity @s[nbt={Rotation:[271.0f,0f]}] run data modify block ~ ~ ~ Items[4] merge from block ~1 ~ ~ RecordItem

#FACING WEST
execute if score #filter-length# __shoukadp__ matches 2 if entity @s[nbt={Rotation:[92.0f,0f]}] run data modify block ~ ~ ~ Items[1] merge from block ~-1 ~ ~ RecordItem
execute if score #filter-length# __shoukadp__ matches 3 if entity @s[nbt={Rotation:[92.0f,0f]}] run data modify block ~ ~ ~ Items[2] merge from block ~-1 ~ ~ RecordItem
execute if score #filter-length# __shoukadp__ matches 4 if entity @s[nbt={Rotation:[92.0f,0f]}] run data modify block ~ ~ ~ Items[3] merge from block ~-1 ~ ~ RecordItem
execute if score #filter-length# __shoukadp__ matches 5 if entity @s[nbt={Rotation:[92.0f,0f]}] run data modify block ~ ~ ~ Items[4] merge from block ~-1 ~ ~ RecordItem

#FACING NORTH
execute if score #filter-length# __shoukadp__ matches 2 if entity @s[nbt={Rotation:[183.0f,0f]}] run data modify block ~ ~ ~ Items[1] merge from block ~ ~ ~-1 RecordItem
execute if score #filter-length# __shoukadp__ matches 3 if entity @s[nbt={Rotation:[183.0f,0f]}] run data modify block ~ ~ ~ Items[2] merge from block ~ ~ ~-1 RecordItem
execute if score #filter-length# __shoukadp__ matches 4 if entity @s[nbt={Rotation:[183.0f,0f]}] run data modify block ~ ~ ~ Items[3] merge from block ~ ~ ~-1 RecordItem
execute if score #filter-length# __shoukadp__ matches 5 if entity @s[nbt={Rotation:[183.0f,0f]}] run data modify block ~ ~ ~ Items[4] merge from block ~ ~ ~-1 RecordItem

#FACING SOUTH
execute if score #filter-length# __shoukadp__ matches 2 if entity @s[nbt={Rotation:[4.0f,0f]}] run data modify block ~ ~ ~ Items[1] merge from block ~ ~ ~1 RecordItem
execute if score #filter-length# __shoukadp__ matches 3 if entity @s[nbt={Rotation:[4.0f,0f]}] run data modify block ~ ~ ~ Items[2] merge from block ~ ~ ~1 RecordItem
execute if score #filter-length# __shoukadp__ matches 4 if entity @s[nbt={Rotation:[4.0f,0f]}] run data modify block ~ ~ ~ Items[3] merge from block ~ ~ ~1 RecordItem
execute if score #filter-length# __shoukadp__ matches 5 if entity @s[nbt={Rotation:[4.0f,0f]}] run data modify block ~ ~ ~ Items[4] merge from block ~ ~ ~1 RecordItem
