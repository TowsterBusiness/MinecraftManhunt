tag @s add scheduled

tellraw @a ["",{"text":"Game begins shortly with ","color":"yellow"},{"selector":"@s","color":"yellow"},{"text":" as the runner.","color":"yellow"}]
schedule function manhunt:start 5s