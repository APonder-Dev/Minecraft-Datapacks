# Pick one buff (1..8)
scoreboard players random @s mmp.rand 1 8
# Roll amplifier chance (1..100)
scoreboard players random @s mmp.r2 1 100

# Duration: 600s (10 minutes)

# 1 Invisibility
execute if score @s mmp.rand matches 1 run effect give @s minecraft:invisibility 600
execute if score @s mmp.rand matches 1 if score @s mmp.r2 <= cfg.amp20 mmp.cfg run effect give @s minecraft:invisibility 600 1

# 2 Strength
execute if score @s mmp.rand matches 2 run effect give @s minecraft:strength 600
execute if score @s mmp.rand matches 2 if score @s mmp.r2 <= cfg.amp20 mmp.cfg run effect give @s minecraft:strength 600 1

# 3 Speed
execute if score @s mmp.rand matches 3 run effect give @s minecraft:speed 600
execute if score @s mmp.rand matches 3 if score @s mmp.r2 <= cfg.amp20 mmp.cfg run effect give @s minecraft:speed 600 1

# 4 Resistance
execute if score @s mmp.rand matches 4 run effect give @s minecraft:resistance 600
execute if score @s mmp.rand matches 4 if score @s mmp.r2 <= cfg.amp20 mmp.cfg run effect give @s minecraft:resistance 600 1

# 5 Jump Boost
execute if score @s mmp.rand matches 5 run effect give @s minecraft:jump_boost 600
execute if score @s mmp.rand matches 5 if score @s mmp.r2 <= cfg.amp20 mmp.cfg run effect give @s minecraft:jump_boost 600 1

# 6 Fire Resistance
execute if score @s mmp.rand matches 6 run effect give @s minecraft:fire_resistance 600

# 7 Water Breathing
execute if score @s mmp.rand matches 7 run effect give @s minecraft:water_breathing 600

# 8 Regeneration
execute if score @s mmp.rand matches 8 run effect give @s minecraft:regeneration 600
execute if score @s mmp.rand matches 8 if score @s mmp.r2 <= cfg.amp20 mmp.cfg run effect give @s minecraft:regeneration 600 1
