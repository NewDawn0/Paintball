clear @a minecraft:wooden_axe{display:{Name:'{"text":"Kill Hammer","color":"orange","bold":false,"italic":false}'},Unbreakable:1b,CustomModelData:420,banhammer:1b} 1
clear @a minecraft:stone_axe{display:{Name:'{"text":"Kill Hammer","color":"orange","bold":false,"italic":false}'},Unbreakable:1b,CustomModelData:420,killhammer:1b} 1
give @a minecraft:stone_axe{display:{Name:'{"text":"Kill Hammer","color":"orange","bold":false,"italic":false}'},Unbreakable:1b,CustomModelData:420,killhammer:1b} 1
give @a minecraft:wooden_axe{display:{Name:'{"text":"Kill Hammer","color":"orange","bold":false,"italic":false}'},Unbreakable:1b,CustomModelData:420,banhammer:1b} 1
tellraw @p ["","Paintball Pack made by ",{"text":"≡NewDawn0≡","italic":true,"color":"#FF6600","clickEvent":{"action":"run_command","value":"/give @p minecraft:player_head{SkullOwner:\"NewDawn0\"}"},"hoverEvent":{"action":"show_text","contents":["Click to recieve NewDawn0's head"]}},"\n","Download the source code on my ",{"text":"GitHub","color":"black","clickEvent":{"action":"open_url","value":"https://github.com/NewDawn0/Paintball"},"hoverEvent":{"action":"show_text","contents":["Click to visit the repo"]}}," or text me on ",{"text":"Twitter","color":"#00ACEE","clickEvent":{"action":"open_url","value":"https://twitter.com/Newdawn0_"},"hoverEvent":{"action":"show_text","contents":["Click to visit my account"]}}]
