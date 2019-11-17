#get SlotID of Item at index 0
scoreboard players reset #filter-hopper# __shoukadp__
execute store result score #filter-hopper# __shoukadp__ run data get block ~ ~ ~ Items[0].Slot

#if SlotID == 0
execute if score #filter-hopper# __shoukadp__ matches 0 if entity @s[nbt={Rotation:[271.0f,0f]}] run data modify block ~1 ~ ~ RecordItem set from block ~ ~ ~ Items[0]
execute if score #filter-hopper# __shoukadp__ matches 0 if entity @s[nbt={Rotation:[92.0f,0f]}] run data modify block ~-1 ~ ~ RecordItem set from block ~ ~ ~ Items[0]
execute if score #filter-hopper# __shoukadp__ matches 0 if entity @s[nbt={Rotation:[183.0f,0f]}] run data modify block ~ ~ ~-1 RecordItem set from block ~ ~ ~ Items[0]
execute if score #filter-hopper# __shoukadp__ matches 0 if entity @s[nbt={Rotation:[4.0f,0f]}] run data modify block ~ ~ ~1 RecordItem set from block ~ ~ ~ Items[0]

#We moved Item at index 0 to the JukeBox, if no other index replaces this one, we set it up for clean up and to be moved back.
execute if score #filter-hopper# __shoukadp__ matches 0 run scoreboard players set #filter-clean# __shoukadp__ 1
execute if score #filter-hopper# __shoukadp__ matches 0 run scoreboard players set #filter-move# __shoukadp__ 1

#else if SlotID > 0
execute if score #filter-hopper# __shoukadp__ matches 1.. store result block ~ ~ ~ Items[0].Slot byte 1 run scoreboard players remove #filter-hopper# __shoukadp__ 1

#We didn't move Item at index 0 to the JukeBox, so we don't need to clean it up.
execute if score #filter-hopper# __shoukadp__ matches 0 run scoreboard players set #filter-jukebox# __shoukadp__ 0

#get SlotID of Item at index 1
scoreboard players reset #filter-hopper# __shoukadp__
execute store result score #filter-hopper# __shoukadp__ run data get block ~ ~ ~ Items[1].Slot

#Move Item at index 1 to a lower SlotID.
execute if score #filter-hopper# __shoukadp__ matches 1.. store result block ~ ~ ~ Items[1].Slot byte 1 run scoreboard players remove #filter-hopper# __shoukadp__ 1

#If we moved the Item at index 1 to SlotID 0, we don't need to clean up the first Slot
execute if score #filter-hopper# __shoukadp__ matches 0 run scoreboard players set #filter-clean# __shoukadp__ 0