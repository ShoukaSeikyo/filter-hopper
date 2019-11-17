#We clone and insert the Item at index 0 to our ItemArray
execute if entity @s[nbt={Rotation:[271.0f,0f]}] run data modify block ~ ~ ~ RecordItem.tag.BlockEntityTag.Items insert 0 from block ~-1 ~ ~ Items[0]
execute if entity @s[nbt={Rotation:[92.0f,0f]}] run data modify block ~ ~ ~ RecordItem.tag.BlockEntityTag.Items insert 0 from block ~1 ~ ~ Items[0]
execute if entity @s[nbt={Rotation:[183.0f,0f]}] run data modify block ~ ~ ~ RecordItem.tag.BlockEntityTag.Items insert 0 from block ~ ~ ~1 Items[0]
execute if entity @s[nbt={Rotation:[4.0f,0f]}] run data modify block ~ ~ ~ RecordItem.tag.BlockEntityTag.Items insert 0 from block ~ ~ ~-1 Items[0]

#We store the SlotID, then lower it by 1
execute store result score #inv-slot# __shoukadp__ run data get block ~ ~ ~ RecordItem.tag.BlockEntityTag.Items[0].Slot
scoreboard players remove #inv-slot# __shoukadp__ 1
#If the SlotID is higher or equal to 0, we just set it
execute if score #inv-slot# __shoukadp__ matches 0.. store result block ~ ~ ~ RecordItem.tag.BlockEntityTag.Items[0].Slot byte 1 run scoreboard players get #inv-slot# __shoukadp__
#else, we put it as the maximum SlotID possible
execute if score #inv-slot# __shoukadp__ matches ..-1 store result block ~ ~ ~ RecordItem.tag.BlockEntityTag.Items[0].Slot byte 1 run scoreboard players get #inv-max# __shoukadp__

#We remove the Item at index 0 from our source block.
execute at @s run data remove block ~ ~ ~ Items[0]

#Decrement the length by 1, then call this recursive method back if necessary
scoreboard players remove #inv-length# __shoukadp__ 1
execute if score #inv-length# __shoukadp__ matches 1.. run function filter-hopper:tasks/inv_utils/clone/to/jukebox/from/hopper/rotate