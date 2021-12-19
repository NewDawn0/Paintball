# Paintball
## Adds Stuff like paintballto Minecraft

The project was originally designed to just add paintball, but it now adds more stuff
- Paintball: Adds Paintball to Minecraft
- Banhammer: Bans players on hit (target needs to be in gamemode survival or adventure)

Project Owner:
- NewDawn0

Contributors:
- NewDawn0


Info:
- Ban and Kick requires functions permission level 3 or 4.
- If the ban and kick hammer doesn't work try changing the function permission level in the server.properties file
- The custom textures will use up the 420th CustomModelData number
- To use the "Smoke Grenade" place 2 repeating command blocks in the center of the area that you want to use it in:
    - Commands for the smoke grenade:
```
execute at @e[distance=..<Your Radius>,type=minecraft:area_effect_cloud,nbt={Potion:"minecraft:weakness"}] run particle minecraft:poof ~ ~1 ~ 5 1.5 5 0 700 force
effect clear @a[distance=..<Your Radius>] minecraft:weakness
```
