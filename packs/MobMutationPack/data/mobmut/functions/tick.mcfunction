# Tag and roll for newly seen mobs
execute as @e[type=#mobmut:eligible,tag=!mmp.seen] run function mobmut:maybe_afflict

# Aura tick runs every 10 ticks to save performance
scoreboard players add tick mmp.clock 1
execute if score tick mmp.clock matches 10 run function mobmut:aura_tick
execute if score tick mmp.clock matches 10 run scoreboard players set tick mmp.clock 0

# On-hit debuffs check every tick (cheap)
function mobmut:onhit_tick
