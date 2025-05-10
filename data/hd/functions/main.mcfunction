# main処理

# HD-Itemの足元がフルブロックであれば1それ以外は0を出力する関数
execute as @e[type=armor_stand,tag=HD-Item] at @s unless score @s fullBlock matches -2147483648..2147483647 run function hd:utils/full_block_check
# 足元がフルブロックであればTNTに変換する関数
execute as @e[type=armor_stand,tag=HD-Item] at @s if score @s fullBlock matches 1 run function hd:utils/activate_bomb
# 足元がフルブロックでなければエラーとして除外
execute as @e[type=armor_stand,tag=HD-Item] at @s if score @s fullBlock matches 0 run function hd:utils/invalid_placement