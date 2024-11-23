# > rpg:is_boss_area

# ボス戦開始
scoreboard players set #state state 1

# 体育館から出られないように複数ある入り口を封鎖
fill -191 70 -66 -194 67 -66 red_sandstone_wall
fill -193 69 -66 -192 69 -66 glass_pane

fill -191 70 -31 -194 67 -31 red_sandstone_wall
fill -192 69 -31 -193 69 -31 glass_pane

fill -231 70 -31 -234 67 -31 red_sandstone_wall
fill -232 69 -31 -233 69 -31 glass_pane

fill -234 70 -66 -231 67 -66 red_sandstone_wall
fill -233 69 -66 -232 69 -66 glass_pane

fill -183 69 -50 -183 67 -47 diorite_wall
fill -183 68 -49 -183 68 -48 iron_bars


## リセット
# 進捗を剥奪(もう一度侵入を検知可能に)
# advancement revoke @s only rpg:is_boss_area