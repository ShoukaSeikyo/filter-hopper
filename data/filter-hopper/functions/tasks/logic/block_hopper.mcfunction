execute unless entity @e[distance=0..1,tag=filter-hopper] run data merge block ~ ~ ~ {TransferCooldown:2s}
execute if entity @e[distance=0..1,tag=filter-hopper,tag=!filter-valid] run data merge block ~ ~ ~ {TransferCooldown:2s}
