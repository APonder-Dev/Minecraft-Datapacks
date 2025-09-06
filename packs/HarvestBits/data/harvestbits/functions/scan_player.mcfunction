# Limit to 1 leaf XP per player per scan tick
scoreboard players set @s harvestbits.flag 0

# Check nearby non-persistent, max-distance leaves (likely to decay soon)
# (We sample a few blocks around the player to keep this very cheap.)

# Directly above
execute if score @s harvestbits.flag matches ..0 positioned ~ ~ ~ if block ~ ~1 ~ minecraft:oak_leaves[persistent=false,distance=7] if predicate harvestbits:xpchance run function harvestbits:grant_leaf_xp_here
execute if score @s harvestbits.flag matches ..0 positioned ~ ~ ~ if block ~ ~1 ~ minecraft:birch_leaves[persistent=false,distance=7] if predicate harvestbits:xpchance run function harvestbits:grant_leaf_xp_here
execute if score @s harvestbits.flag matches ..0 positioned ~ ~ ~ if block ~ ~1 ~ minecraft:spruce_leaves[persistent=false,distance=7] if predicate harvestbits:xpchance run function harvestbits:grant_leaf_xp_here
execute if score @s harvestbits.flag matches ..0 positioned ~ ~ ~ if block ~ ~1 ~ minecraft:jungle_leaves[persistent=false,distance=7] if predicate harvestbits:xpchance run function harvestbits:grant_leaf_xp_here
execute if score @s harvestbits.flag matches ..0 positioned ~ ~ ~ if block ~ ~1 ~ minecraft:acacia_leaves[persistent=false,distance=7] if predicate harvestbits:xpchance run function harvestbits:grant_leaf_xp_here
execute if score @s harvestbits.flag matches ..0 positioned ~ ~ ~ if block ~ ~1 ~ minecraft:dark_oak_leaves[persistent=false,distance=7] if predicate harvestbits:xpchance run function harvestbits:grant_leaf_xp_here
execute if score @s harvestbits.flag matches ..0 positioned ~ ~ ~ if block ~ ~1 ~ minecraft:cherry_leaves[persistent=false,distance=7] if predicate harvestbits:xpchance run function harvestbits:grant_leaf_xp_here
execute if score @s harvestbits.flag matches ..0 positioned ~ ~ ~ if block ~ ~1 ~ minecraft:mangrove_leaves[persistent=false,distance=7] if predicate harvestbits:xpchance run function harvestbits:grant_leaf_xp_here
execute if score @s harvestbits.flag matches ..0 positioned ~ ~ ~ if block ~ ~1 ~ minecraft:azalea_leaves[persistent=false,distance=7] if predicate harvestbits:xpchance run function harvestbits:grant_leaf_xp_here
execute if score @s harvestbits.flag matches ..0 positioned ~ ~ ~ if block ~ ~1 ~ minecraft:flowering_azalea_leaves[persistent=false,distance=7] if predicate harvestbits:xpchance run function harvestbits:grant_leaf_xp_here
execute if score @s harvestbits.flag matches ..0 positioned ~ ~ ~ if block ~ ~1 ~ minecraft:pale_oak_leaves[persistent=false,distance=7] if predicate harvestbits:xpchance run function harvestbits:grant_leaf_xp_here

# A couple of cheap extra offsets
execute if score @s harvestbits.flag matches ..0 positioned ~1 ~1 ~ if block ~ ~ ~ minecraft:oak_leaves[persistent=false,distance=7] if predicate harvestbits:xpchance run function harvestbits:grant_leaf_xp_here
execute if score @s harvestbits.flag matches ..0 positioned ~-1 ~1 ~ if block ~ ~ ~ minecraft:oak_leaves[persistent=false,distance=7] if predicate harvestbits:xpchance run function harvestbits:grant_leaf_xp_here
