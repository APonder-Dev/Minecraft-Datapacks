# 1) Check new mobs once and maybe promote them to Apex
execute as @e[type=#apex:eligible,tag=!apex.seen] run function apex:maybe_promote

# 2) Particles (every 10 ticks)
scoreboard players add apex.tick apex.clock 1
execute if score apex.tick apex.clock matches 10 run function apex:particles_tick
execute if score apex.tick apex.clock matches 10 run scoreboard players set apex.tick apex.clock 0

# 3) On-hit debuffs for certain Apex types
function apex:onhit_tick
