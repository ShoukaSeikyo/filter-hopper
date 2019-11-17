#Should Entity be keeped alive
function filter-hopper:tasks/logic/alive

#If entity isn't marked for kill, we make it start the logic
execute if score #filter-kill# __shoukadp__ matches 1 run function filter-hopper:tasks/logic/kill
execute unless score #filter-kill# __shoukadp__ matches 1 run function filter-hopper:tasks/logic/main

#Clean Up
scoreboard players reset #filter-kill# __shoukadp__