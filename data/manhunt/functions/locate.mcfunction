#a value of -2 is required for the bossbar to complete it's animation
scoreboard players set @a locator -2

execute in minecraft:overworld at @a[tag=runner,y=0] run setworldspawn ~ ~ ~

execute at @s run playsound minecraft:block.bamboo.fall player @s ~ ~ ~ 2 2
execute in minecraft:overworld if entity @a[tag=runner,y=0] run tellraw @a[tag=!runner] ["",{"text":"Compass is now pointing to ","color":"green"},{"selector":"@a[tag=runner]","color":"green"},{"text":".","color":"green"}]
execute in minecraft:overworld unless entity @a[tag=runner,y=0] run tellraw @s ["",{"text":"Player not found.","color":"red"}]