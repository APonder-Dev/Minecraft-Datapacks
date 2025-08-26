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
│  │  ├─ pack.mcmeta
│  │  └─ data/...
│  ├─ ApexMobs/
│  │  ├─ pack.mcmeta
│  │  └─ data/...
│  ├─ RawBlockSmelter/
│  │  ├─ pack.mcmeta
│  │  └─ data/...
│  ├─ RawBeacons/
│  │  ├─ pack.mcmeta
│  │  └─ data/...
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
