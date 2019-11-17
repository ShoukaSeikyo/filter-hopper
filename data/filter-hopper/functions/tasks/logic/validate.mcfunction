#We set the count to 0, then try to set it to the length of our ItemArray
scoreboard players set #filter-count# __shoukadp__ 0
execute store result score #filter-count# __shoukadp__ run data get block ~ ~ ~ Items[0].Count
execute store result score #filter-length# __shoukadp__ run data get block ~ ~ ~ Items

#If the first Item in the ItemArray as a Count of more or equal to 1.
execute store success score #filter-transfer# __shoukadp__ if score #filter-count# __shoukadp__ matches 2..

execute if score #filter-timer# __shoukadp__ matches 7 if score #filter-transfer# __shoukadp__ matches 0 if score #filter-length# __shoukadp__ matches 2.. run function filter-hopper:tasks/logic/rotate_inv