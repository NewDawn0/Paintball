## Run from paintball:ar_start_raycast

# Using dx for precise hitbox detection
# Parameters:
#     Edit not_mob.json in tags/entities to change which entities will not be targeted
#     Change the "positioned" offsets to change projectile size
#       - If > 1 block, just use one dx detection
execute as @e[tag=!Dead,tag=!raycasting,type=!#paintball:not_mob,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function paintball:ar_collide

scoreboard players add .distance ar_rc 1

# Make raycast visible
particle minecraft:bubble ~ ~ ~ 0 0 0 0 0


# Repeat the raycast if certain conditions are met
# Parameters:
#    (score after "matches") * (accuracy increment) = range
#    The "positioned" value specifies the precision
#    Edit raycast_pass.json in tags/blocks to change which blocks the raycast ignores
#    "rotated" controls arc/curve of raycast path
execute if score .distance ar_rc matches ..300 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #paintball:raycast_pass run function paintball:ar_raycast
