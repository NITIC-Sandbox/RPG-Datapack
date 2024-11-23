#> rpg:reload

# Reload
tellraw @p {"text": "Relaod successful!", "color": "gold", "italic": true}

# Remove
tag @a[tag=target] remove target
bossbar remove physical_boss_hp
scoreboard objectives remove state
scoreboard objectives remove summon_timer
scoreboard objectives remove ai_timer

bossbar add physical_boss_hp "体育の先生"
bossbar set physical_boss_hp color white
bossbar set physical_boss_hp max 100
bossbar set physical_boss_hp value 100
bossbar set physical_boss_hp style notched_6
bossbar set physical_boss_hp players @a
bossbar set physical_boss_hp visible false

## ボス戦の状態を管理
scoreboard objectives add state dummy
scoreboard players set #state state 0
## ボス戦開始前の動作を管理するタイマー
scoreboard objectives add summon_timer dummy
scoreboard players set #summon summon_timer 0
## ボスの動きを制御するタイマー
scoreboard objectives add ai_timer dummy
scoreboard players set #ai ai_timer 0
## ボス戦終了後のタイマー
scoreboard objectives add done_timer dummy
scoreboard players set #done done_timer 0

## プレイヤーの位置
scoreboard objectives add motion_x1 dummy
scoreboard objectives add motion_z1 dummy
## ファイヤーチャージの位置
scoreboard objectives add motion_x2 dummy
scoreboard objectives add motion_z2 dummy
