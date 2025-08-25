# Name & visuals
data merge entity @s {CustomName:'{"text":"Apex Skeleton","color":"dark_aqua","bold":true}',CustomNameVisible:1b}
execute if score cfg.glow apex.cfg matches 1 run effect give @s minecraft:glowing 999999 0 true

# Beef up
attribute @s minecraft:generic.max_health base set 40
data modify entity @s Health set value 40.0f
effect give @s minecraft:resistance 999999 0 true
effect give @s minecraft:speed 999999 0 true
effect give @s minecraft:strength 999999 0 true
tag @s add apex.active
tag @s add apex.skel.slow_arrows
tag @s add apex.init_done
