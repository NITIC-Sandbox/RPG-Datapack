#> rpg:boss/ai

# ボスの挙動を制御
scoreboard players add #ai ai_timer 1
execute store result bossbar physical_boss_hp value run data get entity @s Health
execute if score #ai ai_timer matches 1..400 positioned -217 67 -49 run function rpg:boss/tp-positions

## 75%の確率でランダムな場所にテレポート
execute if score #ai ai_timer matches 100 run execute if predicate rpg:random run function rpg:boss/teleport
execute if score #ai ai_timer matches 200 run execute if predicate rpg:random run function rpg:boss/teleport
execute if score #ai ai_timer matches 300 run execute if predicate rpg:random run function rpg:boss/teleport

## 投擲
execute if score #ai ai_timer matches 370 run particle minecraft:spit ~ ~.4 ~ .2 .2 .2 .05 50
execute if score #ai ai_timer matches 370 run particle minecraft:spit ~ ~1.8 ~ .2 .2 .2 .05 50
execute if score #ai ai_timer matches 370 run playsound entity.enderman.teleport master @a ~ ~ ~ 1 1
execute if score #ai ai_timer matches 370 at @a run playsound block.anvil.place master @a ~ ~ ~ .65 .8
execute if score #ai ai_timer matches 370 run tp @s @e[type=area_effect_cloud,tag=boss_tp,sort=furthest,limit=1]

execute if score #ai ai_timer matches 380 run particle minecraft:smoke ~ ~.1 ~ .3 .3 .3 0 100
execute if score #ai ai_timer matches 380 run particle minecraft:smoke ~ ~1.1 ~ .3 .3 .3 0 100
execute if score #ai ai_timer matches 380 run playsound entity.enderman.teleport master @a ~ ~ ~ 1 .5
execute if score #ai ai_timer matches 380 run effect give @s slowness 1 10

### 予備動作
execute if score #ai ai_timer matches 400 run particle dust{color:[1.0,0.26,0.26],scale:2} ~ ~1 ~ 1 .8 1 .0001 100
execute if score #ai ai_timer matches 400 run particle dust{color:[0.1,0.88,0.19],scale:2} ~ ~1 ~ .8 .6 .8 1 75
execute if score #ai ai_timer matches 400 run particle dust{color:[0.08,0.42,0.96],scale:2} ~ ~1 ~ .7 .65 .7 1 50
execute if score #ai ai_timer matches 400 at @a run playsound entity.ender_dragon.flap master @a ~ ~ ~ 10 1

### 発射
execute if score #ai ai_timer matches 400 positioned ~ ~1 ~ run summon fireball ^ ^ ^1.2 {Tags:["fireball"]}
execute if score #ai ai_timer matches 400 as @e[tag=fireball] run function rpg:boss/fireball

## リセット
execute if score #ai ai_timer matches 400 run scoreboard players set #ai ai_timer 0
