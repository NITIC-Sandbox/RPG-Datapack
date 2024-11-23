#> rpg:boss/done

scoreboard players add #done done_timer 1

# ボス討伐後
execute if score #done done_timer matches 1 run bossbar set physical_boss_hp visible false

execute if score #done done_timer matches 10 run playsound ui.toast.challenge_complete master @a ~ ~ ~ 0.3 1
execute if score #done done_timer matches 10 run title @a times 5 60 20
execute if score #done done_timer matches 10 run title @a title {"text": "Eliminated!", "color": "gold"}

# ステージのリセット
execute if score #done done_timer matches 100 run playsound minecraft:block.ender_chest.open master @a ~ ~ ~ 1 0.1
execute if score #done done_timer matches 100 run fill -183 69 -50 -183 67 -47 air
execute if score #done done_timer matches 100 run fill -194 70 -66 -191 67 -66 air
execute if score #done done_timer matches 100 run fill -191 70 -31 -194 67 -31 air
execute if score #done done_timer matches 100 run fill -231 70 -31 -234 67 -31 air
execute if score #done done_timer matches 100 run fill -234 70 -66 -231 67 -66 air

## リセット
execute if score #done done_timer matches 100 run scoreboard players set #state state 0
execute if score #done done_timer matches 100 run scoreboard players set #done done_timer 0
