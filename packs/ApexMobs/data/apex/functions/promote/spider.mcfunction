data merge entity @s {CustomName:'{"text":"Apex Spider","color":"dark_purple","bold":true}',CustomNameVisible:1b}
execute if score cfg.glow apex.cfg matches 1 run effect give @s minecraft:glowing 999999 0 true

attribute @s minecraft:generic.max_health base set 36
data modify entity @s Health set value 36.0f
effect give @s minecraft:speed 999999 1 true
effect give @s minecraft:jump_boost 999999 1 true
tag @s add apex.active
tag @s add apex.spider.wither_on_hit
tag @s add apex.init_done
