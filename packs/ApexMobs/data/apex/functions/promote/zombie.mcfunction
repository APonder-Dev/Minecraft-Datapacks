data merge entity @s {CustomName:'{"text":"Apex Zombie","color":"dark_green","bold":true}',CustomNameVisible:1b}
execute if score cfg.glow apex.cfg matches 1 run effect give @s minecraft:glowing 999999 0 true

attribute @s minecraft:generic.max_health base set 50
data modify entity @s Health set value 50.0f
effect give @s minecraft:resistance 999999 1 true
effect give @s minecraft:strength 999999 1 true
effect give @s minecraft:speed 999999 0 true
effect give @s minecraft:invisibility 999999 0 true  # night stalker vibe
tag @s add apex.active
tag @s add apex.zombie.knockback_resist
data merge entity @s {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:0.7f}]}
tag @s add apex.init_done
