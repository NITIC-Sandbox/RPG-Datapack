#> rpg:boss/tp-positions

# ボスがテレポートするポジションを確保
summon area_effect_cloud ~10 ~ ~ {Duration:1,Tags:["boss_tp"]}
summon area_effect_cloud ~10 ~ ~10 {Duration:1,Tags:["boss_tp"]}
summon area_effect_cloud ~10 ~ ~-10 {Duration:1,Tags:["boss_tp"]}
summon area_effect_cloud ~20 ~ ~ {Duration:1,Tags:["boss_tp"]}
summon area_effect_cloud ~20 ~ ~10 {Duration:1,Tags:["boss_tp"]}
summon area_effect_cloud ~20 ~ ~-10 {Duration:1,Tags:["boss_tp"]}

summon area_effect_cloud ~ ~ ~10 {Duration:1,Tags:["boss_tp"]}
summon area_effect_cloud ~ ~ ~-10 {Duration:1,Tags:["boss_tp"]}

summon area_effect_cloud ~-10 ~ ~ {Duration:1,Tags:["boss_tp"]}
summon area_effect_cloud ~-10 ~ ~10 {Duration:1,Tags:["boss_tp"]}
summon area_effect_cloud ~-10 ~ ~-10 {Duration:1,Tags:["boss_tp"]}
summon area_effect_cloud ~-20 ~ ~ {Duration:1,Tags:["boss_tp"]}
summon area_effect_cloud ~-20 ~ ~10 {Duration:1,Tags:["boss_tp"]}
summon area_effect_cloud ~-20 ~ ~-10 {Duration:1,Tags:["boss_tp"]}
