#We set the JukeBox RecordItem to a temporary Hopper Item with a BlockEntityTag
data modify block ~ ~ ~ RecordItem set value {id:"minecraft:hopper",Count:1b,tag:{BlockEntityTag:{TransferCooldown:0,Items:[],id:"minecraft:hopper"}}}

#We store the Hopper TransferCooldown
execute store result block ~ ~ ~ RecordItem.tag.BlockEntityTag.TransferCooldown short 1 at @s run data get block ~ ~ ~ TransferCooldown

#If we need to rotate the items, we start a recursive function to do just that.
execute if score #inv-rotate# __shoukadp__ matches 1 run function filter-hopper:tasks/inv_utils/clone/to/jukebox/from/hopper/rotate
#else, we just clone the tag to the temporary Hopper Item 
execute unless score #inv-rotate# __shoukadp__ matches 1 run function filter-hopper:tasks/inv_utils/clone/to/jukebox/from/hopper/move