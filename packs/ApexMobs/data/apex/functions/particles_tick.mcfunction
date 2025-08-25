# Simple aura around Apex mobs every ~0.5s
execute if score cfg.particles apex.cfg matches 1 as @e[tag=apex.active,distance=..48] at @s run particle minecraft:enchanted_hit ^0 ^1 ^0 0.2 0.3 0.2 0.02 6 force
