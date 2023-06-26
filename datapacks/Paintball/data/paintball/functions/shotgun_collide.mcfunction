# File: shotgun_collide.mcfunction
# Desc: Sets the collison damage where @s is the hit target
# Caller: shotgun_raycast.mcfunction

## Detect Headshots/bodyshots/legshots
# Headshots
execute positioned ~ ~0.35 ~ unless entity @s[dx=0] positioned ~ ~-0.3 ~ run damage @s 18
# Bodyshots
execute positioned ~ ~0.35 ~ if entity @s[dx=0] positioned ~ ~-2.3 ~ if entity @s[dx=0] run damage @s 14
# Legshots
execute positioned ~ ~-1.95 ~ unless entity @s[dx=0] run damage @s 7

# Show damage indicataor and play sound
particle minecraft:damage_indicator ~ ~ ~ 0.25 0.25 0.25 0 3 force
playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.5 2

# Stop raycast by maxing out its range
scoreboard players set @s shotgun_rc 1000000
