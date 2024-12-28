#> rpg:mob_spawn/initialize


#リセット
scoreboard objectives remove spawn_timer

#タイマー作成
scoreboard objectives add spawn_timer dummy
scoreboard players set #spawn_timer spawn_timer 0

#モンスターカウンター
#ワールド全体
scoreboard objectives add counter_mob dummy
scoreboard players set #spawn_counter counter_mob 0
#図書館ゾンビ
scoreboard objectives add counter_libzombie dummy
scoreboard players set #spawn_counter counter_libzombie 0
