scoreboard players set .countdown Time 6000
bossbar set countdown max 6000
scoreboard players set @a[team=Runner] RemainingLives 3
bossbar set countdown players @a
bossbar set countdown visible true

effect give @a invisibility 300 0 true
effect give @a resistance 300 0 true

effect give @a[team=Hunter] resistance infinite 255 true
effect give @a[team=Hunter] speed infinite 0 true
# effect give @a[team=Hunter] strength infinite 0 true

spreadplayers ~ ~ 10 128 false @a[team=Runner]

give @a[team=Hunter] obsidian 5
scoreboard players reset @a ObbyPlaced

advancement revoke @a everything
worldborder center ~ ~
worldborder set 256

tellraw @a {"text":"The game is starting!","color":"red","bold":false}
tellraw @a[team=Runner] {"text":"You have five minutes of invisibility.","color":"red","bold":true}
tellraw @a[team=Hunter] {"text":"You have five minutes of invisibility. Place all your obsidian!","color":"red","bold":true}

function manhunt:loop/countdown