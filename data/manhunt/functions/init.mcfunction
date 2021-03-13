scoreboard objectives add start trigger
scoreboard objectives add locator dummy
scoreboard objectives add death deathCount

bossbar add manhunt:locator "Locating..."
bossbar set manhunt:locator max 60
bossbar set manhunt:locator color purple

scoreboard players reset @a start
scoreboard players reset @a locator
scoreboard players set @a death 0
tag @a remove scheduled
tag @a remove runner
schedule clear manhunt:schedule
kill @e[tag=spawn]
forceload remove all

gamerule doImmediateRespawn false
gamerule showDeathMessages true
gamerule sendCommandFeedback false

tellraw @a ["",{"text":"[","color":"green"},{"text":"Simple Manhunt"},{"text":"] ","color":"green"},{"text":"Click to start the game as the runner.","color":"green","clickEvent":{"action":"run_command","value":"/trigger start set 1"},"hoverEvent":{"action":"show_text","value":["",{"text":"Click this message to start the game as the runner."}]}}]