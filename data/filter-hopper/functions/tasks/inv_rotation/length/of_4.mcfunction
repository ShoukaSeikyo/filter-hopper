#Getting the current count of Slot used in the Hopper
execute store result score #filter-length#t __shoukadp__ run data get block ~ ~ ~ Items

#if length is of 3, the third slot used is at index 1
execute if score #filter-length#t __shoukadp__ matches 3 run function filter-hopper:tasks/inv_rotation/move/index_1
execute if score #filter-length#t __shoukadp__ matches 4 run function filter-hopper:tasks/inv_rotation/move/index_2

#if length is of 3, the third slot used is at index 2
execute if score #filter-length#t __shoukadp__ matches 3 run function filter-hopper:tasks/inv_rotation/move/index_2
execute if score #filter-length#t __shoukadp__ matches 4 run function filter-hopper:tasks/inv_rotation/move/index_3