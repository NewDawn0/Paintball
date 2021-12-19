execute as @a[nbt={SelectedItem:{id:"minecraft:stick",Count:1b,tag:{sniper:1b}}}] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Paintball Sniper_trigger","color":"light_blue","bold":false,"italic":false}'},Unbreakable:1b,sniper:1b}
execute as @a unless entity @s[nbt={SelectedItem:{id:"minecraft:stick",Count:1b,tag:{sniper:1b}}}] run clear @s minecraft:carrot_on_a_stick{display:{},sniper:1b}
execute as @a[scores={pistol_trigger=1..,pistol_cooldown=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{pistol:1b}}}] at @s run function paintball:pistol_start_raycast
execute as @a[scores={shotgun_trigger=1..,shotgun_cooldown=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{shotgun:1b}}}] at @s run function paintball:shotgun_start_raycast
execute as @a[scores={sniper_trigger=1..,sniper_cooldown=1..},nbt={SelectedItem:{id:"minecraft:stick",Count:1b,tag:{sniper:1b}},Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{sniper:1b}}]}] at @s run function paintball:sniper_start_raycast


#### RESET SCOREBOARD
scoreboard players set @a[scores={pistol_trigger=1..}] pistol_trigger 0
scoreboard players set @a[scores={sniper_trigger=1..}] sniper_trigger 0
scoreboard players set @a[scores={shotgun_trigger=1..}] shotgun_trigger 0
execute as @a[scores={health=..0}] run scoreboard players remove @s lifes 1
execute as @a[scores={health=..0}] run scoreboard players set @s health 800
execute as @a[scores={lifes=..0}] run scoreboard players set @s health 800
execute as @a[scores={lifes=0}] run tag @s add Dead
execute as @a[tag=Dead] run title @a[tag=Dead] title {"text":"You Died"}
execute as @a[tag=Dead] run gamemode spectator @a[tag=Dead]
execute as @a[tag=Dead] run tag @a[tag=Dead] remove Dead
execute as @a at @a if entity @e[type=area_effect_cloud,distance=..8] run scoreboard players add @s[distance=..8] SmokeCooldown 1
execute as @a[scores={SmokeCooldown=1}] at @a[scores={SmokeCooldown=1}] run function paintball:smoke
execute unless entity @e[type=area_effect_cloud] run scoreboard players set @a SmokeCooldown 0
execute as @a at @a unless entity @e[type=area_effect_cloud,distance=..8] run scoreboard players set @s[distance=..8] SmokeCooldown 0
