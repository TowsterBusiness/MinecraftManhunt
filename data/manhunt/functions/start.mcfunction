tag @a[tag=scheduled] add runner

spreadplayers 0 0 8 32 false @a
execute at @r run function manhunt:spawn

time set 1000
weather clear 1200
gamemode survival @a
clear @a
effect clear @a
effect give @a minecraft:instant_health 1 28
effect give @a minecraft:saturation 1 28
xp set @a 0 levels
xp set @a 0 points
advancement revoke @a everything

give @a[tag=!runner] minecraft:compass