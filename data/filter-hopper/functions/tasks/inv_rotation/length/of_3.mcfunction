#Getting the current count of Slot used in the Hopper
execute store result score #filter-length#t __shoukadp__ run data get block ~ ~ ~ Items

#if length is of 2, the third slot used is at index 1
execute if score #filter-length#t __shoukadp__ matches 2 run function filter-hopper:tasks/inv_rotation/move/index_1
execute if score #filter-length#t __shoukadp__ matches 3 run function filter-hopper:tasks/inv_rotation/move/index_2