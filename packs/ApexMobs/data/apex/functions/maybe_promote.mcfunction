# Mark seen so we only do this once
tag @s add apex.seen

# Roll chance
scoreboard players random @s apex.rand 1 100
execute if score @s apex.rand <= cfg.apex_chance apex.cfg run tag @s add apex.promote

# If promoted, branch per mob type
execute if entity @s[tag=apex.promote,type=minecraft:skeleton] run function apex:promote/skeleton
execute if entity @s[tag=apex.promote,type=minecraft:zombie] run function apex:promote/zombie
execute if entity @s[tag=apex.promote,type=minecraft:creeper] run function apex:promote/creeper
execute if entity @s[tag=apex.promote,type=#minecraft:spiders] run function apex:promote/spider

# Fallback for any eligible that didn't match above types
execute if entity @s[tag=apex.promote,tag=!apex.init_done] run function apex:promote/default
