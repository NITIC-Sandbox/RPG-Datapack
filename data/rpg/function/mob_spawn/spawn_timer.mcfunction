#> rpg:mob_spawn/spawn_timer

#スコア加算
scoreboard players add #spawn_timer spawn_timer 1

#モンスターカウント
#ワールド全体
execute if score #spawn_timer spawn_timer matches 200 store result score #spawn_counter counter_mob if entity @e[tag=field_mob]
#図書館ゾンビ(範囲内のみ。)
execute if score #spawn_timer spawn_timer matches 200 store result score #spawn_counter counter_libzombie if entity @e[tag=libzombie, predicate=rpg:mob_spawn/lc_libzombie_area]

#メディアセンターあたりのゾンビスポーン
execute if score #spawn_timer spawn_timer matches 200 if score #spawn_counter spawn_timer matches 200 if entity @a[predicate=rpg:mob_spawn/lc_libzombie_player] if score #spawn_counter counter_libzombie matches ..10 if score #spawn_counter counter_libzombie matches ..100 run summon zombie -44 65 -62 {IsBaby: 0, CanBreakDoor: 0,ArmorItems:[{},{},{},{id:bookshelf,count:1}],ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"rpg:s", Tags:["field_mob","libzombie"]}
# execute if entity @p[distance=..5] unless entity @e[type=zombie,distance=..10] run summon zombie ~ ~2 ~ {IsBaby:0,CanBreakDoor:0,ArmorItems:[{},{},{},{id:bookshelf,count:1}],ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"rpg:s"}

#リセット
execute if score #spawn_timer spawn_timer matches 400 run scoreboard players set #spawn_timer spawn_timer 0