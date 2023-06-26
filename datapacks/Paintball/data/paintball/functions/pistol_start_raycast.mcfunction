## Call this on entities which launch the raycast


# Tag prevents current caster from being detected
tag @s add raycasting

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute at @s run playsound minecraft:custom.pistol_laser master @a[distance=..8] ~ ~ ~ 1 1 0.1
execute if entity @s[scores={pistol_cooldown=1..}] anchored eyes positioned ^ ^ ^ run function paintball:pistol_raycast

# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @s remove raycasting
scoreboard players reset .distance pistol_rc
execute as @s run schedule function paintball:pistol_cooldown 10t append