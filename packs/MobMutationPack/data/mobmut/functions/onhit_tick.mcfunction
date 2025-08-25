# Apply on-hit debuffs when the player is damaged.
# We check for a nearby tagged attacker within 4 blocks for melee,
# and within 12 blocks for skeleton arrows (simple heuristic).

# Poison
execute as @a[nbt={HurtTime:10s}] at @s if entity @e[type=#mobmut:eligible,tag=mmp.onhit.poison,distance=..4,limit=1] run effect give @s minecraft:poison 4 0 true
execute as @a[nbt={HurtTime:10s}] at @s if entity @e[type=minecraft:skeleton,tag=mmp.onhit.poison,distance=..12,limit=1] run effect give @s minecraft:poison 4 0 true

# Slowness
execute as @a[nbt={HurtTime:10s}] at @s if entity @e[type=#mobmut:eligible,tag=mmp.onhit.slowness,distance=..4,limit=1] run effect give @s minecraft:slowness 4 1 true
execute as @a[nbt={HurtTime:10s}] at @s if entity @e[type=minecraft:skeleton,tag=mmp.onhit.slowness,distance=..12,limit=1] run effect give @s minecraft:slowness 4 1 true

# Weakness
execute as @a[nbt={HurtTime:10s}] at @s if entity @e[type=#mobmut:eligible,tag=mmp.onhit.weakness,distance=..4,limit=1] run effect give @s minecraft:weakness 5 0 true
execute as @a[nbt={HurtTime:10s}] at @s if entity @e[type=minecraft:skeleton,tag=mmp.onhit.weakness,distance=..12,limit=1] run effect give @s minecraft:weakness 5 0 true

# Darkness
execute as @a[nbt={HurtTime:10s}] at @s if entity @e[type=#mobmut:eligible,tag=mmp.onhit.darkness,distance=..4,limit=1] run effect give @s minecraft:darkness 4 0 true
execute as @a[nbt={HurtTime:10s}] at @s if entity @e[type=minecraft:skeleton,tag=mmp.onhit.darkness,distance=..12,limit=1] run effect give @s minecraft:darkness 4 0 true

# Wither
execute as @a[nbt={HurtTime:10s}] at @s if entity @e[type=#mobmut:eligible,tag=mmp.onhit.wither,distance=..4,limit=1] run effect give @s minecraft:wither 3 0 true
execute as @a[nbt={HurtTime:10s}] at @s if entity @e[type=minecraft:skeleton,tag=mmp.onhit.wither,distance=..12,limit=1] run effect give @s minecraft:wither 3 0 true

# Mining Fatigue
execute as @a[nbt={HurtTime:10s}] at @s if entity @e[type=#mobmut:eligible,tag=mmp.onhit.mining_fatigue,distance=..4,limit=1] run effect give @s minecraft:mining_fatigue 5 0 true
execute as @a[nbt={HurtTime:10s}] at @s if entity @e[type=minecraft:skeleton,tag=mmp.onhit.mining_fatigue,distance=..12,limit=1] run effect give @s minecraft:mining_fatigue 5 0 true
