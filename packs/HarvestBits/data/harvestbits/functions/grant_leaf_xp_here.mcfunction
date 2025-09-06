# Spawn a tiny XP orb at this position, mark flag to avoid duplicates this tick
summon experience_orb ~ ~ ~ {Value:1s}
scoreboard players set @s harvestbits.flag 1
