# HarvestBits — install/setup

# Per-player flag to limit leaf XP to 1 per scan
scoreboard objectives add harvestbits.flag dummy

# Kick off the periodic leaf scan (every ~1s)
schedule function harvestbits:scan 20t

# Hint
tellraw @a ["",{"text":"[HarvestBits] ","color":"green","bold":true},{"text":"1 XP (10% chance) from stone, deepslate, logs; ambient leaf decay.","color":"white"}]
