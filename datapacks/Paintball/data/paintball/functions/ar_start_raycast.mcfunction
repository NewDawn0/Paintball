## Call this on entities which launch the raycast


# Tag prevents current caster from being detected
tag @s add raycasting

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute at @s run playsound minecraft:custom.ar_laser master @a[distance=..8] ~ ~ ~ 1 1 0.1
execute anchored eyes positioned ^ ^ ^ run function paintball:ar_raycast

# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @s remove raycasting
scoreboard players reset .distance ar_rc