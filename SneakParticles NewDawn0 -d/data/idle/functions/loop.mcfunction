execute at NewDawn0 positioned ~ ~1.5 ~ if entity @a[name=NewDawn0,scores={Sneak=1..}] run function idle:cyl/animate
execute at NewDawn0 if entity @a[name=NewDawn0,scores={Sneak=1..}] run scoreboard players add NewDawn0 Sneak 1
execute if entity @a[name=NewDawn0,scores={Sneak=10..}] run scoreboard players reset @a Sneak