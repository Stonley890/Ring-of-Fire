execute positioned ^ ^ ^0.01 if block ~ ~ ~ obsidian align xyz run summon minecraft:shulker ~ ~ ~ {Tags:["glow"],Silent:1,Invulnerable:1,PersistenceRequired:true,NoAI:true,Glowing:1,DeathLootTable:"minecraft:empty"}
execute positioned ^ ^ ^0.01 if block ~ ~ ~ obsidian run effect give @e[tag=glow,limit=1,sort=nearest] invisibility infinite 0 true

execute positioned ^ ^ ^0.01 if block ~ ~ ~ obsidian align xyz if entity @e[tag=glow,distance=1..32] as @e[tag=glow,limit=1,sort=nearest] run function rof:delobby

execute positioned ^ ^ ^0.01 unless block ~ ~ ~ obsidian if entity @a[team=Hunter,distance=0..5] run function rof:glowobby