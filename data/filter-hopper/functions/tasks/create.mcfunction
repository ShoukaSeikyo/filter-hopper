fill ~5 ~5 ~5 ~-5 ~-5 ~-5 minecraft:command_block[facing=east]{auto:1b,Command:"function filter-hopper:tasks/create/replace"} replace minecraft:hopper[facing=east]{CustomName:'{"text":"Filter"}'}
fill ~5 ~5 ~5 ~-5 ~-5 ~-5 minecraft:command_block[facing=west]{auto:1b,Command:"function filter-hopper:tasks/create/replace"} replace minecraft:hopper[facing=west]{CustomName:'{"text":"Filter"}'}
fill ~5 ~5 ~5 ~-5 ~-5 ~-5 minecraft:command_block[facing=north]{auto:1b,Command:"function filter-hopper:tasks/create/replace"} replace minecraft:hopper[facing=north]{CustomName:'{"text":"Filter"}'}
fill ~5 ~5 ~5 ~-5 ~-5 ~-5 minecraft:command_block[facing=south]{auto:1b,Command:"function filter-hopper:tasks/create/replace"} replace minecraft:hopper[facing=south]{CustomName:'{"text":"Filter"}'}
advancement revoke @s only filter-hopper:root
