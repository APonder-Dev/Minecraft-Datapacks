# Clear any previous aura tags
tag @s remove mmp.aura.poison
tag @s remove mmp.aura.slowness
tag @s remove mmp.aura.weakness
tag @s remove mmp.aura.darkness
tag @s remove mmp.aura.mining_fatigue
tag @s remove mmp.aura.wither
tag @s remove mmp.aura.blindness

# Pick one debuff aura (1..7)
scoreboard players random @s mmp.rand 1 7
execute if score @s mmp.rand matches 1 run tag @s add mmp.aura.poison
execute if score @s mmp.rand matches 2 run tag @s add mmp.aura.slowness
execute if score @s mmp.rand matches 3 run tag @s add mmp.aura.weakness
execute if score @s mmp.rand matches 4 run tag @s add mmp.aura.darkness
execute if score @s mmp.rand matches 5 run tag @s add mmp.aura.mining_fatigue
execute if score @s mmp.rand matches 6 run tag @s add mmp.aura.wither
execute if score @s mmp.rand matches 7 run tag @s add mmp.aura.blindness
