# File: ar_collide.mcfunction
# Desc: Sets the damage on hit where @s it the hit target
# Caller: ar_raycast.mcfunction

## Detect Headshots/bodyshots/legshots
# Headshots
execute positioned ~ ~0.35 ~ unless entity @s[dx=0] positioned ~ ~-0.3 ~ run damage @s 8
# Bodyshots
execute positioned ~ ~0.35 ~ if entity @s[dx=0] positioned ~ ~-2.3 ~ if entity @s[dx=0] run damage @s 4
# Legshots
execute positioned ~ ~-1.95 ~ unless entity @s[dx=0] run damage @s 2

# Show hit particles and playsound
particle minecraft:damage_indicator ~ ~ ~ 0.25 0.25 0.25 0 3 force
playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.5 2

# Stop raycast by maxing its range
scoreboard players set .distance ar_rc 1000000
