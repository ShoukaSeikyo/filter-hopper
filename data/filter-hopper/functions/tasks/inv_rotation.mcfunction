#Getting the count of Slot used in the Hopper
execute store result score #filter-length# __shoukadp__ run data get block ~ ~ ~ Items

#Move slots depending on length
execute if score #filter-length# __shoukadp__ matches 2..5 run function filter-hopper:tasks/inv_rotation/length/of_2
execute if score #filter-length# __shoukadp__ matches 3 run function filter-hopper:tasks/inv_rotation/length/of_3
execute if score #filter-length# __shoukadp__ matches 4 run function filter-hopper:tasks/inv_rotation/length/of_4
execute if score #filter-length# __shoukadp__ matches 5 run function filter-hopper:tasks/inv_rotation/length/of_5

#Cleaning up the first index if necessary
execute if score #filter-clean# __shoukadp__ matches 1 run data remove block ~ ~ ~ Items[0]

#Add a temporary item to Slot 4, since there should be nothing there, then move item back from JukeBox if necessary
execute if score #filter-move# __shoukadp__ matches 1 run data modify block ~ ~ ~ Items insert -1 value {Slot: 4b, id: "minecraft:iron_ingot", Count: 1b}
execute if score #filter-move# __shoukadp__ matches 1 run function filter-hopper:tasks/inv_rotation/move/back

#Cleaning up
scoreboard players reset #filter-length# __shoukadp__
scoreboard players reset #filter-length#t __shoukadp__
scoreboard players reset #filter-clean# __shoukadp__
scoreboard players reset #filter-move# __shoukadp__
scoreboard players reset #filter-hopper# __shoukadp__
execute if entity @s[nbt={Rotation:[271.0f,0f]}] run data remove block ~1 ~ ~ RecordItem.id
execute if entity @s[nbt={Rotation:[92.0f,0f]}] run data remove block ~-1 ~ ~ RecordItem.id
execute if entity @s[nbt={Rotation:[183.0f,0f]}] run data remove block ~ ~ ~-1 RecordItem.id
execute if entity @s[nbt={Rotation:[4.0f,0f]}] run data remove block ~ ~ ~1 RecordItem.id