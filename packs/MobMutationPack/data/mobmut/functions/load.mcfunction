# === MobMutationPack load ===
scoreboard objectives add mmp.rand dummy
scoreboard objectives add mmp.r2 dummy
scoreboard objectives add mmp.cfg dummy
scoreboard objectives add mmp.clock dummy
scoreboard objectives add mmp.flags dummy

# Default chances (percent)
scoreboard players set cfg.buff_chance mmp.cfg 40
scoreboard players set cfg.aura_chance mmp.cfg 30
scoreboard players set cfg.onhit_chance mmp.cfg 35

# Constants
scoreboard players set cfg.amp20 mmp.cfg 20  # 20% chance for amplifier II
scoreboard players set tick mmp.clock 0

# Feature toggles (1=enabled, 0=disabled)
scoreboard players set enable.buff mmp.flags 1
scoreboard players set enable.aura mmp.flags 1
scoreboard players set enable.onhit mmp.flags 1

function mobmut:say_config
