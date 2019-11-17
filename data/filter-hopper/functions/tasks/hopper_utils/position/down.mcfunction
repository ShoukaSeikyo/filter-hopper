scoreboard players set #inv-max# __shoukadp__ 4
function filter-hopper:tasks/hopper_utils/clone/to/jukebox
setblock ~ ~ ~ minecraft:hopper[facing=down]{CustomName:'{"text":"Filter Hopper"}',TransferCooldown:8s} replace
function filter-hopper:tasks/inv_utils/clone/to/hopper/from/jukebox

#Clean Up
scoreboard players reset #inv-rotate# __shoukadp__
scoreboard players reset #inv-max# __shoukadp__
scoreboard players reset #inv-slot# __shoukadp__