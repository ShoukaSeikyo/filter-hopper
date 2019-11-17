execute store result score #inv-slot# __shoukadp__ run data get block ~ ~ ~ RecordItem.tag.BlockEntityTag.Items[0].Slot
scoreboard players remove #inv-slot# __shoukadp__ 1
execute if score #inv-slot# __shoukadp__ matches 0.. store result block ~ ~ ~ RecordItem.tag.BlockEntityTag.Items[0].Slot byte 1 run scoreboard players get #inv-slot# __shoukadp__
execute if score #inv-slot# __shoukadp__ matches ..-1 store result block ~ ~ ~ RecordItem.tag.BlockEntityTag.Items[0].Slot byte 1 run scoreboard players get #inv-max# __shoukadp__