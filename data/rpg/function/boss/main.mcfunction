#> rpg:boss/main

## ボスの召喚
execute at @a if score #state state matches 1 run function rpg:boss/summon

## 戦闘
execute as @e[predicate=rpg:boss] at @s if score #state state matches 2 run function rpg:boss/ai

## 討伐後
execute if score #state state matches 2 run \
    execute unless entity @e[predicate=rpg:boss] run scoreboard players set #state state 3
execute at @a if score #state state matches 3 run function rpg:boss/done
