# Initialize
team add Runner
team modify Runner color red
team modify Runner seeFriendlyInvisibles true

team add Hunter
team modify Hunter color blue
team modify Hunter seeFriendlyInvisibles true

scoreboard objectives add Deaths deathCount
scoreboard objectives add RemainingLives dummy
scoreboard objectives add Time dummy
scoreboard objectives add ObbyPlaced minecraft.used:minecraft.obsidian
scoreboard players set @a Countdown -1
scoreboard players set @a Lives -1

bossbar add countdown {"text":"Countdown"}
bossbar set countdown visible false
bossbar set countdown max 300

execute in overworld run forceload add 0 0
execute in the_nether run forceload add 0 0
execute in the_end run forceload add 0 0
execute in overworld run setblock 0 -64 0 yellow_shulker_box
execute in the_nether run setblock 0 -64 0 yellow_shulker_box
execute in the_end run setblock 0 -64 0 yellow_shulker_box

# Loop
schedule function rof:loop-core 1
schedule function manhunt:loop/locate 1
schedule function manhunt:loop-core 1

# Hello World
function rof:load/hw
