scoreboard players enable @a start
execute as @a[scores={start=1},limit=1] unless entity @a[tag=scheduled] unless entity @a[tag=runner] run function manhunt:schedule

execute if entity @a[tag=runner] as @e[scores={death=1},type=player] run function manhunt:give
clear @a[tag=runner] minecraft:compass

execute if entity @a[tag=runner] as @a[nbt={SelectedItem:{id:"minecraft:compass"}},limit=1] run scoreboard players add @a locator 1
execute unless entity @a[nbt={SelectedItem:{id:"minecraft:compass"}}] run scoreboard players reset @a locator
bossbar set manhunt:locator players @a[nbt={SelectedItem:{id:"minecraft:compass"}}]
execute if entity @a[tag=runner] run bossbar set manhunt:locator visible true
execute unless entity @a[tag=runner] run bossbar set manhunt:locator visible false
execute if entity @a[tag=runner] store result bossbar manhunt:locator value run scoreboard players get @a[limit=1] locator
execute as @a[scores={locator=60},nbt={SelectedItem:{id:"minecraft:compass"}}] run function manhunt:locate

#spawn correction
execute as @a unless data entity @s SpawnX at @e[tag=spawn] run spawnpoint @s ~ ~-10 ~