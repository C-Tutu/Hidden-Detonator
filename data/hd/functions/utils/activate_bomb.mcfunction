# 設置成功
# パーティクルを表示
execute align xyz run particle end_rod ~ ~0.1 ~ 0 0 0 0 50 normal @a
execute align xyz run particle end_rod ~1 ~0.1 ~ 0 0 0 0 50 normal @a
execute align xyz run particle end_rod ~ ~0.1 ~1 0 0 0 0 50 normal @a
execute align xyz run particle end_rod ~1 ~0.1 ~1 0 0 0 0 50 normal @a
execute align xyz run particle end_rod ~ ~-1 ~ 0 0 0 0 50 normal @a
execute align xyz run particle end_rod ~1 ~-1 ~ 0 0 0 0 50 normal @a
execute align xyz run particle end_rod ~ ~-1 ~1 0 0 0 0 50 normal @a
execute align xyz run particle end_rod ~1 ~-1 ~1 0 0 0 0 50 normal @a
execute align xyz run particle end_rod ~0.5 ~0.1 ~0.5 0 0 0 0.5 30 normal @a
# 音を再生
playsound minecraft:block.iron_door.open master @a ~ ~ ~ 1.0 2 0.0
# interaction（インタラクション判定用のエンティティ）を足元に設置
summon minecraft:interaction ~ ~-1 ~ {Tags:["HD-Click"],width:1.01f,height:1.01f,Invulnerable:1b,response:false}
execute as @e[type=interaction,tag=HD-Click] at @s run tp @s ~ ~ ~ facing ~ ~-1 ~
# HD-Itemをkill
kill @s