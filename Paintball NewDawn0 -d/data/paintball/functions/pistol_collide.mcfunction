


# Detect Headshots/bodyshots/legshots
execute positioned ~ ~0.35 ~ unless entity @s[dx=0] positioned ~ ~-0.3 ~ run scoreboard players remove @s health 80

execute positioned ~ ~0.35 ~ if entity @s[dx=0] positioned ~ ~-2.3 ~ if entity @s[dx=0] run scoreboard players remove @s health 40

execute positioned ~ ~-1.95 ~ unless entity @s[dx=0] run scoreboard players remove @s health 20
particle minecraft:damage_indicator ~ ~ ~ 0.25 0.25 0.25 0 3 force
playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.5 2



#### Max out range to end the raycast
scoreboard players set .distance pistol_rc 1000

