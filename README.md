# Paintball

Adds Paintball to Minecraft

## Installation

1. Put the `./ressourcepacks/Paintball+Killhammer/` directory in the resource
   packs directory to your resource packs
2. Move the `./datapacks/Paintball` directory to your world's datapack directory
3. Enable the datapack in your world `/datapack enable "file/Paintball"`

- To use the other miscellaneous datapacks this project adds, move the datapacks
  NOTE: When using the SneakParticles change the name NewDawn0 to your name or
  @a to enable it for everyone

## Notes

- When using the SneakParticles change the name NewDawn0 to your name or @a to
  enable it for everyone
- For lag purposes, the smoke grenade needs to be manually using 2 repeating
  command blocks with the Commands

```mcfunction
# I recommend a radius of 300 (blocks)
execute at @e[distance=..<Your Radius>,type=minecraft:area_effect_cloud,nbt={Potion:"minecraft:weakness"}] run particle minecraft:poof ~ ~1 ~ 5 1.5 5 0 700 force
effect clear @a[distance=..<Your Radius>] minecraft:weakness
```
