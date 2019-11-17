#Should Entity be keeped alive
function filter-hopper:tasks/main/keep_alive

#If entity isn't marked for clean up, we make it start the logic
execute if score #filter-kill# __shoukadp__ matches 0 run function filter-hopper:tasks/filter
execute if score #filter-kill# __shoukadp__ matches 1 run function filter-hopper:tasks/main/clean_up

#Clean Up
scoreboard players reset #filter-kill# __shoukadp__