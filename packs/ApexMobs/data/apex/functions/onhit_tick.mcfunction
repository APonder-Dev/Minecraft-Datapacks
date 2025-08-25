# Run per tick: if a player has just been hurt, check for a nearby Apex attacker and apply effects.

# Slowness arrows (Apex Skeleton)
execute as @a[nbt={HurtTime:10s}] at @s if entity @e[type=minecraft:skeleton,tag=apex.skel.slow_arrows,distance=..12,limit=1] run effect give @s minecraft:slowness 4 1 true

# Wither bites (Apex Spider)
execute as @a[nbt={HurtTime:10s}] at @s if entity @e[type=#minecraft:spiders,tag=apex.spider.wither_on_hit,distance=..4,limit=1] run effect give @s minecraft:wither 4 0 true

# Toxic cloud (Apex Creeper): if hurt near an Apex Creeper, apply poison briefly
execute as @a[nbt={HurtTime:10s}] at @s if entity @e[type=minecraft:creeper,tag=apex.creeper.toxic_cloud,distance=..6,limit=1] run effect give @s minecraft:poison 3 0 true
