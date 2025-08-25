data merge entity @s {CustomName:'{"text":"Apex Creeper","color":"dark_red","bold":true}',CustomNameVisible:1b}
execute if score cfg.glow apex.cfg matches 1 run effect give @s minecraft:glowing 999999 0 true

# Charged for bigger blast
data merge entity @s {powered:1b}
effect give @s minecraft:speed 999999 0 true
effect give @s minecraft:resistance 999999 0 true
tag @s add apex.active
tag @s add apex.creeper.toxic_cloud
tag @s add apex.init_done
