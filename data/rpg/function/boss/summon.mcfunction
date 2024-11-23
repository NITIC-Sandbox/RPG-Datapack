#> rpg:boss/summon

# ボス戦に入る前のフェーズ
scoreboard players add #summon summon_timer 1

## プレイヤーの状態を調整
execute if score #summon summon_timer matches 10..180 run tp @a -203 67 -49 90 0
execute if score #summon summon_timer matches 11 run playsound minecraft:block.barrel.close master @a ~ ~ ~ 1 .1
execute if score #summon summon_timer matches 50 run effect give @a darkness 4 2 true
execute if score #summon summon_timer matches 50 run playsound ambient.cave master @a ~ ~ ~ 1 1

execute if score #summon summon_timer matches 70 run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 10 1.8
execute if score #summon summon_timer matches 70 run particle dust{color:[1.0,0.26,0.26],scale:2} -217 68 -49 1 .8 1 .0001 100
execute if score #summon summon_timer matches 70 run particle dust{color:[0.98,0.65,0.07],scale:2} -217 68 -49 1 1.3 1 1 100
execute if score #summon summon_timer matches 70 run particle dust{color:[0.0,0.0,0.0],scale:2} -217 68 -49 1 .8 1 1 100

execute if score #summon summon_timer matches 100 run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 10 1.8
execute if score #summon summon_timer matches 100 run particle dust{color:[0.1,0.88,0.19],scale:2} -217 68 -49 .8 .6 .8 1 75
execute if score #summon summon_timer matches 100 run particle dust{color:[0.0,0.0,0.0],scale:2} -217 68 -49 .8 .6 .8 1 75

execute if score #summon summon_timer matches 130 run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 10 1.8
execute if score #summon summon_timer matches 130 run particle dust{color:[0.08,0.42,0.96],scale:2} -217 68 -49 .7 .65 .7 1 50
execute if score #summon summon_timer matches 130 run particle dust{color:[0.0,0.0,0.0],scale:2} -217 68 -49 .7 .65 .7 1 50

## ボス召喚
execute if score #summon summon_timer matches 170 run particle dust{color:[1.0,1.0,1.0],scale:2} -217 68 -49 1 .8 1 1 150
execute if score #summon summon_timer matches 170 run playsound item.trident.thunder master @a ~ ~ ~ 2 1
execute if score #summon summon_timer matches 170 run summon vindicator -217 67 -49 { \
        Glowing:1b,NoAI:0b,Health:100f,Rotation:[-90F,0F],Tags:["boss_physical"],DeathLootTable:"minecraft:empty", \
        attributes:[{id:"minecraft:generic.max_health",base:100},{id:"minecraft:generic.follow_range",base:200}]}
execute if score #summon summon_timer matches 170 run item replace entity @e[tag=boss_physical] weapon.mainhand with air
execute if score #summon summon_timer matches 170 run item replace entity @e[tag=boss_physical] armor.head with birch_fence_gate
execute if score #summon summon_timer matches 170 run effect give @e[tag=boss_physical] strength infinite 0
execute if score #summon summon_timer matches 170 run execute store result bossbar physical_boss_hp value run data get entity @e[tag=boss_physical,limit=1] Health
execute if score #summon summon_timer matches 170 run bossbar set physical_boss_hp visible true
execute if score #summon summon_timer matches 170 run title @a title {"text":"- Vindicator -"}
execute if score #summon summon_timer matches 170 run title @a subtitle {"text":"中ボス"}

execute if score #summon summon_timer matches 170 run scoreboard players set #state state 2
execute if score #summon summon_timer matches 170 run scoreboard players set #summon summon_timer 0
