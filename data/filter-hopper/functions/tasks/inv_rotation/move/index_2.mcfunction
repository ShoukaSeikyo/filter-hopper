#get SlotID of Item at index 2
scoreboard players reset #filter-hopper# __shoukadp__
execute store result score #filter-hopper# __shoukadp__ run data get block ~ ~ ~ Items[2].Slot

#Move Item at index 2 to a lower SlotID.
execute store result block ~ ~ ~ Items[2].Slot byte 1 run scoreboard players remove #filter-hopper# __shoukadp__ 1