# === Apex Mobs load ===
scoreboard objectives add apex.rand dummy
scoreboard objectives add apex.cfg dummy
scoreboard objectives add apex.clock dummy
scoreboard objectives add apex.flags dummy

# Base configuration (percent chance)
scoreboard players set cfg.apex_chance apex.cfg 3     # % chance to promote (default 3%)
scoreboard players set cfg.glow apex.cfg 1            # 1=glow effect on Apex
scoreboard players set cfg.particles apex.cfg 1       # 1=show particles
scoreboard players set apex.tick apex.clock 0

tellraw @a [{"text":"[Apex Mobs] ","color":"gold","bold":true},{"text":"Loaded ✓","color":"yellow"}]
function apex:say_config
