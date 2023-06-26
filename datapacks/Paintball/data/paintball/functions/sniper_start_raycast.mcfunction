## Call this on entities which launch the raycast


# Tag prevents current caster from being detected
tag @s add raycasting

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute if entity @s[scores={sniper_cooldown=1..}] at @s run playsound minecraft:custom.sniper_laser master @a[distance=..8] ~ ~ ~ 0.1 1
execute if entity @s[scores={sniper_cooldown=1..}] at @a run playsound minecraft:custom.sniper_reload master @a[distance=..8] ~ ~ ~ 0.1 1
execute if entity @s[scores={sniper_cooldown=1..}] anchored eyes positioned ^ ^ ^ run function paintball:sniper_raycast



# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @s remove raycasting
scoreboard players reset .distance sniper_rc
execute as @s run scoreboard players set @s sniper_cooldown 0
execute as @s run schedule function paintball:sniper_cooldown 3s append