execute if entity @s[nbt={Rotation:[271.0f,0f]}] run data modify block ~ ~ ~ TransferCooldown insert 0 from block ~1 ~ ~ RecordItem.tag.BlockEntityTag.TransferCooldown
execute if entity @s[nbt={Rotation:[92.0f,0f]}] run data modify block ~ ~ ~ TransferCooldown insert 0 from block ~-1 ~ ~ RecordItem.tag.BlockEntityTag.TransferCooldown
execute if entity @s[nbt={Rotation:[183.0f,0f]}] run data modify block ~ ~ ~ TransferCooldown insert 0 from block ~ ~ ~-1 RecordItem.tag.BlockEntityTag.TransferCooldown
execute if entity @s[nbt={Rotation:[4.0f,0f]}] run data modify block ~ ~ ~ TransferCooldown insert 0 from block ~ ~ ~1 RecordItem.tag.BlockEntityTag.TransferCooldown

execute if entity @s[nbt={Rotation:[271.0f,0f]}] run data modify block ~ ~ ~ Items set from block ~1 ~ ~ RecordItem.tag.BlockEntityTag.Items
execute if entity @s[nbt={Rotation:[92.0f,0f]}] run data modify block ~ ~ ~ Items set from block ~-1 ~ ~ RecordItem.tag.BlockEntityTag.Items
execute if entity @s[nbt={Rotation:[183.0f,0f]}] run data modify block ~ ~ ~ Items set from block ~ ~ ~-1 RecordItem.tag.BlockEntityTag.Items
execute if entity @s[nbt={Rotation:[4.0f,0f]}] run data modify block ~ ~ ~ Items set from block ~ ~ ~1 RecordItem.tag.BlockEntityTag.Items


execute if entity @s[nbt={Rotation:[271.0f,0f]}] run data remove block ~1 ~ ~ RecordItem
execute if entity @s[nbt={Rotation:[92.0f,0f]}] run data remove block ~-1 ~ ~ RecordItem
execute if entity @s[nbt={Rotation:[183.0f,0f]}] run data remove block ~ ~ ~-1 RecordItem
execute if entity @s[nbt={Rotation:[4.0f,0f]}] run data remove block ~ ~ ~1 RecordItem