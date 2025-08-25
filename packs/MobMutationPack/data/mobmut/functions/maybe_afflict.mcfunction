# Process this mob once
tag @s add mmp.seen

# === Self-buff roll ===
execute if score enable.buff mmp.flags matches 1 run scoreboard players random @s mmp.rand 1 100
execute if score enable.buff mmp.flags matches 1 if score @s mmp.rand <= cfg.buff_chance mmp.cfg run function mobmut:apply_self_buffs

# === Aura roll ===
execute if score enable.aura mmp.flags matches 1 run scoreboard players random @s mmp.rand 1 100
execute if score enable.aura mmp.flags matches 1 if score @s mmp.rand <= cfg.aura_chance mmp.cfg run function mobmut:roll_aura

# === On-hit roll ===
execute if score enable.onhit mmp.flags matches 1 run scoreboard players random @s mmp.rand 1 100
execute if score enable.onhit mmp.flags matches 1 if score @s mmp.rand <= cfg.onhit_chance mmp.cfg run function mobmut:roll_onhit
