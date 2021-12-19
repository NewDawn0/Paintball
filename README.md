# Paintball
## Adds Stuff like paintballto Minecraft

The project was originally designed to just add paintball, but it now adds more stuff
- Paintball: Adds Paintball to Minecraft
- Killhammer: Adds 2 items that kills players on hit (target needs to be in gamemode survival or adventure)
- SneakParticles adds particles to sneaking Players

Project Owner:
- NewDawn0

Contributors:
- NewDawn0


Info:
- To use Sneakparticles either change NewDawn0 to <Your Playername> or remove the name parameter in the loop.mcfunction file
- The custom textures will use up the 420th CustomModelData number
- To use the "Smoke Grenade" place 2 repeating command blocks in the center of the area that you want to use it in:
    - Commands for the smoke grenade:
```
execute at @e[distance=..<Your Radius>,type=minecraft:area_effect_cloud,nbt={Potion:"minecraft:weakness"}] run particle minecraft:poof ~ ~1 ~ 5 1.5 5 0 700 force
effect clear @a[distance=..<Your Radius>] minecraft:weakness
```
