data merge entity @s {CustomName:'{"text":"Apex Mob","color":"gray","bold":true}',CustomNameVisible:1b}
execute if score cfg.glow apex.cfg matches 1 run effect give @s minecraft:glowing 999999 0 true

attribute @s minecraft:generic.max_health base set 32
data modify entity @s Health set value 32.0f
effect give @s minecraft:resistance 999999 0 true
effect give @s minecraft:speed 999999 0 true
tag @s add apex.active
tag @s add apex.init_done
