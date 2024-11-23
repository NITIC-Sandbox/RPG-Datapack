#> rpg:boss/teleport

# ボスをランダムな場所にテレポートさせる
particle minecraft:spit ~ ~.4 ~ .2 .2 .2 .05 50
particle minecraft:spit ~ ~1.8 ~ .2 .2 .2 .05 50
playsound entity.enderman.teleport master @a ~ ~ ~ 1 1

tp @s @e[type=area_effect_cloud,tag=boss_tp,sort=random,limit=1]

particle minecraft:smoke ~ ~.1 ~ .3 .3 .3 0 100
particle minecraft:smoke ~ ~1.1 ~ .3 .3 .3 0 100
playsound entity.enderman.teleport master @a ~ ~ ~ 1 1
effect give @s speed 3 0
