#Particles Generated with: Cloud Wolf's Particle Grapher
scoreboard objectives add cw_particleplot dummy
function idle:cyl/l2/l2_0
scoreboard players add $16896 cw_particleplot 1
execute if score $16896 cw_particleplot matches 111.. run scoreboard players set $16896 cw_particleplot 0