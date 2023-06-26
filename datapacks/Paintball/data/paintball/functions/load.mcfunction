scoreboard objectives remove pistol_rc
scoreboard objectives remove shotgun_rc
scoreboard objectives remove sniper_rc
scoreboard objectives remove ar_rc
scoreboard objectives remove lifes
scoreboard objectives remove health
scoreboard objectives remove SmokeCooldown
scoreboard objectives remove pistol_trigger
scoreboard objectives remove sniper_trigger
scoreboard objectives remove shotgun_trigger
scoreboard objectives remove ar_trigger
scoreboard objectives remove shotgun_cooldown
scoreboard objectives remove pistol_cooldown
scoreboard objectives remove sniper_cooldown
clear @a minecraft:carrot_on_a_stick{display:{Name:'{"text":"Paintball Pistol","color":"light_blue","bold":false,"italic":false}'},Unbreakable:1b,CustomModelData:420,pistol:1b} 1
clear @a minecraft:warped_fungus_on_a_stick{display:{Name:'{"text":"Paintball Shotgun","color":"light_blue","bold":false,"italic":false}'},Unbreakable:1b,CustomModelData:420,shotgun:1b} 1
clear @a minecraft:ender_eye{display:{Name:'{"text":"Paintball AR","color":"light_blue","bold":false,"italic":false}'},Unbreakable:1b,CustomModelData:420,ar:1b} 1
clear @a minecraft:stick{display:{Name:'{"text":"Paintball Sniper","color":"light_blue","bold":false,"italic":false}'},Unbreakable:1b,CustomModelData:420,sniper:1b} 1
clear @a minecraft:lingering_potion{Potion:"minecraft:weakness",display:{Name:'{"text":"Paintball Smoke grenade","color":"light_blue","bold":false,"italic":false}'},Unbreakable:1b,CustomModelData:420,sniper:1b} 1


scoreboard objectives add pistol_rc dummy
scoreboard objectives add shotgun_rc dummy
scoreboard objectives add sniper_rc dummy
scoreboard objectives add ar_rc dummy
scoreboard objectives add lifes dummy
scoreboard players set @a lifes 5
scoreboard objectives add health dummy
scoreboard players set @a health 800
scoreboard objectives add SmokeCooldown dummy
scoreboard objectives add pistol_trigger minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add sniper_trigger minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add shotgun_trigger minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add ar_trigger dummy
scoreboard objectives add shotgun_cooldown dummy
scoreboard players set @a shotgun_cooldown 1
scoreboard objectives add pistol_cooldown dummy
scoreboard players set @a pistol_cooldown 1
scoreboard objectives add sniper_cooldown dummy
scoreboard players set @a sniper_cooldown 1

give @a minecraft:carrot_on_a_stick{display:{Name:'{"text":"Paintball Pistol","color":"light_blue","bold":false,"italic":false}'},Unbreakable:1b,CustomModelData:420,pistol:1b} 1
give @a minecraft:warped_fungus_on_a_stick{display:{Name:'{"text":"Paintball Shotgun","color":"light_blue","bold":false,"italic":false}'},Unbreakable:1b,CustomModelData:420,shotgun:1b} 1
give @a minecraft:ender_eye{display:{Name:'{"text":"Paintball AR","color":"light_blue","bold":false,"italic":false}'},Unbreakable:1b,CustomModelData:420,ar:1b} 1
give @a minecraft:stick{display:{Name:'{"text":"Paintball Sniper","color":"light_blue","bold":false,"italic":false}'},Unbreakable:1b,CustomModelData:420,sniper:1b} 1
give @a minecraft:lingering_potion{Potion:"minecraft:weakness",display:{Name:'{"text":"Paintball Smoke grenade","color":"light_blue","bold":false,"italic":false}'},Unbreakable:1b,CustomModelData:420,sniper:1b,CustomModelData:420} 1
tellraw @p ["",{"text":"Painball","bold":true,"color":"dark_red","clickEvent":{"action":"open_url","value":"https://github.com/NewDawn0/Paintball"},"hoverEvent":{"action":"show_text","contents":["Click to go to repo"]}},{"text":" made by ","color":"white"},{"text":"NewDawn0","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/give @p minecraft:player_head{SkullOwner:\"NewDawn0\"}"},"hoverEvent":{"action":"show_text","contents":["Click to recive my player head "]}},{"text":" is now enabled","color":"white"},"\n","Btw follow me on ",{"text":"GitHub","bold":true,"color":"dark_gray","clickEvent":{"action":"open_url","value":"https://github.com/NewDawn0/"},"hoverEvent":{"action":"show_text","contents":["Click to visit my profile"]}}]
