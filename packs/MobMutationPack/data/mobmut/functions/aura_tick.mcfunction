# Apply debuffs to players near aura mobs every 10 ticks (called from tick.mcfunction)
# Radius: change the '..5' value to adjust radius.

# Poison
execute as @e[type=#mobmut:eligible,tag=mmp.aura.poison] at @s run effect give @a[distance=..5] minecraft:poison 3 0 true

# Slowness
execute as @e[type=#mobmut:eligible,tag=mmp.aura.slowness] at @s run effect give @a[distance=..5] minecraft:slowness 3 0 true

# Weakness
execute as @e[type=#mobmut:eligible,tag=mmp.aura.weakness] at @s run effect give @a[distance=..5] minecraft:weakness 4 0 true

# Darkness
execute as @e[type=#mobmut:eligible,tag=mmp.aura.darkness] at @s run effect give @a[distance=..5] minecraft:darkness 3 0 true

# Mining Fatigue
execute as @e[type=#mobmut:eligible,tag=mmp.aura.mining_fatigue] at @s run effect give @a[distance=..5] minecraft:mining_fatigue 4 0 true

# Wither
execute as @e[type=#mobmut:eligible,tag=mmp.aura.wither] at @s run effect give @a[distance=..5] minecraft:wither 2 0 true

# Blindness
execute as @e[type=#mobmut:eligible,tag=mmp.aura.blindness] at @s run effect give @a[distance=..5] minecraft:blindness 3 0 true
