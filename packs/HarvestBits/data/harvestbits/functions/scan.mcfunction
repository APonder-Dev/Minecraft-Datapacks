# Re-schedule self (runs every ~1s)
schedule function harvestbits:scan 20t replace

# Light per-player scan
execute as @a[gamemode=!spectator] at @s run function harvestbits:scan_player
