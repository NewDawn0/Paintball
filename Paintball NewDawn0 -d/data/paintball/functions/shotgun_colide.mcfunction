

# Detect Headshots/bodyshots/legshots
execute positioned ~ ~0.35 ~ unless entity @s[dx=0] positioned ~ ~-0.3 ~ run scoreboard players remove @s health 200

execute positioned ~ ~0.35 ~ if entity @s[dx=0] positioned ~ ~-2.3 ~ if entity @s[dx=0] run scoreboard players remove @s health 120

execute positioned ~ ~-1.95 ~ unless entity @s[dx=0] run scoreboard players remove @s health 24
particle minecraft:damage_indicator ~ ~ ~ 0.25 0.25 0.25 0 3 force
playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.5 2



#### Max out range to end the raycast
scoreboard players set .distance shotgun_rc 1000

