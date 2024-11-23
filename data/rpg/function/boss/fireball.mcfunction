#> rpg:boss/fireball

# プレイヤーの位置とファイヤーチャージの位置から、飛ばす方向を計算

## プレイヤーの位置
tag @a add target
execute store result score @a[tag=target] motion_x1 run data get entity @a[tag=target,limit=1] Pos[0]
execute store result score @a[tag=target] motion_z1 run data get entity @a[tag=target,limit=1] Pos[2]

## ファイヤーチャージの位置
execute store result score @s motion_x2 run data get entity @s Pos[0]
execute store result score @s motion_z2 run data get entity @s Pos[2]

## 2つのベクトルから方向を決定
scoreboard players operation @s motion_x2 -= @a[tag=target] motion_x1
scoreboard players operation @s motion_z2 -= @a[tag=target] motion_z1
execute store result entity @s Motion[0] double -0.005 run scoreboard players get @s motion_x2
execute store result entity @s Motion[2] double -0.005 run scoreboard players get @s motion_z2

## y座標は水平
data modify entity @s Motion[1] set value 0

## リセット
tag @a[tag=target] remove target
