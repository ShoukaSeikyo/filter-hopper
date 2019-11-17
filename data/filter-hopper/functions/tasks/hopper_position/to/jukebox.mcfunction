data merge block ~ ~ ~ {RecordItem:{id: "minecraft:hopper", Count: 1b, tag: {BlockEntityTag: {TransferCooldown: 0, Items: [], id: "minecraft:hopper"}}}}

execute store result block ~ ~ ~ TransferCooldown short 1 at @s run data get block ~ ~ ~ TransferCooldown

function filter-hopper:tasks/hopper_position/to/recorditem