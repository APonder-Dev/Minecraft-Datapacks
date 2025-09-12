# Minecraft Datapacks

A collection of **Minecraft datapacks** developed and maintained by me.  
Each pack enhances survival gameplay with new mechanics, quality-of-life features, and unique challenges.

---

## 📦 Available Datapacks

### 🧬 MobMutationPack
- **Version:** Minecraft 1.21.x (`pack_format: 48`)
- **Description:** Hostile mobs can spawn with:
  - **Self-Buffs**: Random positive potion effects (Strength, Speed, Resistance, etc).
  - **Debuff Auras**: Emit harmful effects in a radius (Poison, Slowness, Weakness, Darkness, etc).
  - **On-Hit Debuffs**: Inflict effects when damaging a player.
- **Features:**
  - Configurable chances via scoreboard.
  - Per-feature toggles (`/function mobmut:toggle/...`).
  - Eligible mob list in `data/mobmut/tags/entity_types/eligible.json`.

### 🗡️ ApexMobs
- **Version:** Minecraft 1.21.x (`pack_format: 48`)
- **Description:** Ordinary mobs have a small chance to become **Apex** mini‑bosses with tougher stats, special on‑hit abilities, and bonus loot.
- **Features:**
  - Configurable **promotion chance**.
  - Visual flair (glow, particles) and custom names (e.g., *Apex Skeleton*).
  - On‑hit effects (e.g., Slowness arrows, Wither bites, Poison from Creeper blasts).
  - Bonus loot via custom loot table.
  - Eligible mob list in `data/apex/tags/entity_types/eligible.json`.

### 🔨 RawBlockSmelter
- **Version:** Minecraft 1.21.x (`pack_format: 48`)
- **Description:** Allows **raw ore blocks** to be smelted into their ingot block counterparts.
  - `raw_iron_block` → `iron_block`
  - `raw_gold_block` → `gold_block`
  - `raw_copper_block` → `copper_block`
- **Features:**
  - Works in both **furnaces** and **blast furnaces**.
  - Cooking time = **9× longer** than single raw ore smelting.
  - XP reward scaled to 9 items (default ~6.3 XP).
  - Simple JSON recipe-based implementation.

### 🌟 Raw Beacons
- **Version:** Minecraft 1.21.x (`pack_format: 48`)
- **Description:** Expands beacon base compatibility to include raw blocks.
  - `raw_iron_block`
  - `raw_gold_block`
- **Features:**
  - Extends `#minecraft:beacon_base_blocks` tag.
  - Fully vanilla-friendly — no commands needed.
  - Combine with RawBlockSmelter for a **“Raw Blocks Expansion”** experience.

### 📦 EzChests
- **Version:** Minecraft 1.21.x (`pack_format: 48`)
- **Description:** Adds **log-based recipes** for crafting chests & trapped chests.
- **Features:**
  - **Chest Recipe**: 8 logs/stems/hyphae in a ring (center empty) → **4 Chests**.
  - **Trapped Chest Recipe**: 8 logs in a ring + **Tripwire Hook** in the center → **4 Trapped Chests**.
  - Supports all overworld logs (Oak, Birch, Spruce, Jungle, Acacia, Dark Oak, Cherry, Mangrove, Pale Oak) plus **Crimson/Warped stems & hyphae**.
  - Vanilla plank recipes still work — these are additive options.

  ### 🌾 HarvestBits
- **Version:** Minecraft 1.21.x (`pack_format: 48`)
- **Description:** Awards **1 XP (point)** on a **10% chance** when breaking **Stone**, **Deepslate**, or **any Log**, plus occasional **ambient XP** near **naturally decaying leaves**.
- **Features:**
  - Chance controlled via predicate `data/harvestbits/predicates/xpchance.json`.
  - Mining triggers via advancements (`stone`, `deepslate`, `minecraft:logs` tag).
  - Leaf-decay XP is lightweight: periodic scan spawns a **1-XP orb** near leaves with `persistent=false` & `distance=7` (max 1 per player per second).
  - Zero commands required; works on load.

### 💎 TrialsFortune
- **Version:** Minecraft 1.21.x (`pack_format: 48`)
- **Description:** Overhauls **Trial Chambers loot** to make rewards more exciting and configurable.
- **Features:**
  - Overrides the **4 core loot tables**:
    - `vault.json` (normal vaults)  
    - `ominous_vault.json` (ominous vaults)  
    - `spawner_reward.json` (trial spawners)  
    - `ominous_spawner_reward.json` (ominous trial spawners)  
  - Keeps Mojang’s **3-pool distribution structure** for balance.  
  - Maintains vanilla distribution.
    
---

## 🛠 Installation

1. Download the latest release from the [Releases](../../releases) page.
2. Place the datapack `.zip` into your world folder:
   ```
   <world>/datapacks/
   ```
3. Launch your world and run:
   ```mcfunction
   /reload
   ```
4. Check chat for confirmation messages.

---

## 🔧 Configuration

### MobMutationPack
- Adjust spawn chances:
  ```mcfunction
  /scoreboard players set cfg.buff_chance mmp.cfg <0-100>
  /scoreboard players set cfg.aura_chance mmp.cfg <0-100>
  /scoreboard players set cfg.onhit_chance mmp.cfg <0-100>
  ```
- Toggle features:
  ```mcfunction
  /function mobmut:toggle/buffs_off
  /function mobmut:toggle/auras_off
  /function mobmut:toggle/onhit_off
  ```
  Re-enable with `/buffs_on`, `/auras_on`, `/onhit_on`.
- Eligible mobs:  
  Edit `data/mobmut/tags/entity_types/eligible.json`.

### ApexMobsPack
- Print current config:
  ```mcfunction
  /function apex:say_config
  ```
- Change Apex promotion chance (percent):
  ```mcfunction
  /scoreboard players set cfg.apex_chance apex.cfg <0-100>
  ```
- Toggle glow / particles (0 = off, 1 = on):
  ```mcfunction
  /scoreboard players set cfg.glow apex.cfg <0|1>
  /scoreboard players set cfg.particles apex.cfg <0|1>
  ```
- Eligible mobs:  
  Edit `data/mobmut/tags/entity_types/eligible.json`.

### HarvestBits
- Adjust the XP chance (default 10%):
  ```json
  # data/harvestbits/predicates/xpchance.json
  { "condition": "minecraft:random_chance", "chance": 0.10 }
  ```
  Lower to 0.05 (5%) for rarer XP, or raise as desired.
- Change leaf scan frequency (default every 20 ticks):
  ```mcfunction
  # data/harvestbits/functions/scan.mcfunction
  schedule function harvestbits:scan 20t replace
  ```
  Increase/decrease the tick value to adjust how often ambient leaf XP can occur.

---

## 🤖 Continuous Integration (CI)

This repo uses **GitHub Actions**:

- **Every push** → zips all datapacks under `packs/` and uploads them as artifacts.
- **Tag a release** (e.g. `v1.0.0`) → creates a GitHub Release with zips attached.

Workflow file: `.github/workflows/build-datapacks.yml`

---

## 📂 Repo Structure

```
.
├─ packs/                   # Datapacks live here
│  ├─ MobMutationPack/
│  ├─ ApexMobs/
│  ├─ RawBlockSmelter/
│  ├─ RawBeacons/
│  ├─ EzChests/
│  ├─ HarvestBits/
│  ├─ TrialsFortune/
│  └─ Coming Soon/
├─ .github/workflows/       # GitHub Actions configs
├─ .gitignore
├─ .gitattributes
├─ LICENSE
└─ README.md

```

---

## 📜 License

This project is licensed under the [MIT License](LICENSE).

---

## ⭐ Support

- Issues & suggestions → [GitHub Issues](../../issues).
- PRs welcome.
- Star ⭐ this repo if you find the datapacks useful!

---

## 💖 Donation

If you find these datapacks helpful or fun, please consider supporting development:

[💸 Donate via PayPal](https://www.paypal.com/donate/?business=6TUCF33LPY9K2&no_recurring=0&item_name=Development+and+Coding+Features&currency_code=USD)
