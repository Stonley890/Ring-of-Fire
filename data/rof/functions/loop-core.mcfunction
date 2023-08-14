execute if score .countdown Time matches 1.. as @a[team=Hunter] if score @s ObbyPlaced matches 1.. at @s anchored eyes run function rof:glowobby
execute if score .countdown Time matches 1.. as @a[team=Hunter] if score @s ObbyPlaced matches 1.. run scoreboard players set @s ObbyPlaced 0

execute if score .countdown Time matches 0 as @e[tag=glow] at @s unless block ~ ~ ~ obsidian run playsound entity.zombie_villager.cure master @a ~ ~ ~
execute if score .countdown Time matches 0 as @e[tag=glow] at @s unless block ~ ~ ~ obsidian run particle firework ~ ~ ~ 0 0 0 1 64
execute if score .countdown Time matches 0 as @e[tag=glow] at @s unless block ~ ~ ~ obsidian run effect give @a[distance=0..8] resistance 1 2 true
execute if score .countdown Time matches 0 as @e[tag=glow] at @s unless block ~ ~ ~ obsidian run summon tnt
execute if score .countdown Time matches 0 as @e[tag=glow] at @s unless block ~ ~ ~ obsidian run kill @s

execute if score .countdown Time matches 0 unless entity @e[tag=glow] at @a run playsound entity.zombie_villager.cure master @a
execute if score .countdown Time matches 0 unless entity @e[tag=glow] run gamemode spectator @a
execute if score .countdown Time matches 0 unless entity @e[tag=glow] run tellraw @a {"text":"All obsidian has been destroyed!","color": "red"}
execute if score .countdown Time matches 0 unless entity @e[tag=glow] run effect clear @a
execute if score .countdown Time matches 0 unless entity @e[tag=glow] run scoreboard players reset .countdown

schedule function rof:loop-core 1