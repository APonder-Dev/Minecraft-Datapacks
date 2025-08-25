# Clear any previous on-hit tags
tag @s remove mmp.onhit.poison
tag @s remove mmp.onhit.slowness
tag @s remove mmp.onhit.weakness
tag @s remove mmp.onhit.darkness
tag @s remove mmp.onhit.wither
tag @s remove mmp.onhit.mining_fatigue

# Pick one on-hit debuff (1..6)
scoreboard players random @s mmp.rand 1 6
execute if score @s mmp.rand matches 1 run tag @s add mmp.onhit.poison
execute if score @s mmp.rand matches 2 run tag @s add mmp.onhit.slowness
execute if score @s mmp.rand matches 3 run tag @s add mmp.onhit.weakness
execute if score @s mmp.rand matches 4 run tag @s add mmp.onhit.darkness
execute if score @s mmp.rand matches 5 run tag @s add mmp.onhit.wither
execute if score @s mmp.rand matches 6 run tag @s add mmp.onhit.mining_fatigue
