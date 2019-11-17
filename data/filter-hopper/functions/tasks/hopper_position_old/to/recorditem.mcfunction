execute if entity @s[nbt={Rotation:[271.0f,0f]}] run data modify block ~ ~ ~ RecordItem.tag.BlockEntityTag.Items insert 0 from block ~-1 ~ ~ Items[0]
execute if entity @s[nbt={Rotation:[92.0f,0f]}] run data modify block ~ ~ ~ RecordItem.tag.BlockEntityTag.Items insert 0 from block ~1 ~ ~ Items[0]
execute if entity @s[nbt={Rotation:[183.0f,0f]}] run data modify block ~ ~ ~ RecordItem.tag.BlockEntityTag.Items insert 0 from block ~ ~ ~1 Items[0]
execute if entity @s[nbt={Rotation:[4.0f,0f]}] run data modify block ~ ~ ~ RecordItem.tag.BlockEntityTag.Items insert 0 from block ~ ~ ~-1 Items[0]

execute if score #inv-rotate# __shoukadp__ matches 1 run function filter-hopper:tasks/hopper_position/to/rotate

execute at @s run data remove block ~ ~ ~ Items[0]

scoreboard players remove #inv-length# __shoukadp__ 1

execute if score #inv-length# __shoukadp__ matches 1.. run function filter-hopper:tasks/hopper_position/to/recorditem