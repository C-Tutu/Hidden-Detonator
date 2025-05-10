#
# フルブロックでない場合：0、それ以外は1で出力
# 足元が空気かでポジションを修正
# #hd:not_full_block->フルブロックではないブロックのデータリストを管理(空気は除外)
# #hd:air->空気を管理

# プレイヤーの位置を中央に寄せて、ブロック判定を安定させる
execute align xyz run tp @s ~0.5 ~ ~0.5

# ===== [足元が空気ブロックにいる場合] =====
# 下が not_full_block なら fullBlock = 0
execute if block ~ ~ ~ #hd:air if block ~ ~-1 ~ #hd:not_full_block run scoreboard players set @s fullBlock 0
# 下が　air でも fullBlock = 0
execute if block ~ ~ ~ #hd:air if block ~ ~-1 ~ #hd:air run scoreboard players set @s fullBlock 0
# 下が　full block（＝not air 且つ not not_full_block）なら fullBlock = 1
execute if block ~ ~ ~ #hd:air unless block ~ ~-1 ~ #hd:air unless block ~ ~-1 ~ #hd:not_full_block run scoreboard players set @s fullBlock 1

# ===== [足元が空気ブロックではない場合] =====
# 足元のブロックが not_full_block なら fullBlock = 0
execute unless block ~ ~ ~ #hd:air if block ~ ~ ~ #hd:not_full_block run scoreboard players set @s fullBlock 0
# 足元のブロックが full block なら fullBlock = 1 ＋ ポジションの修正
execute unless block ~ ~ ~ #hd:air unless block ~ ~ ~ #hd:not_full_block run scoreboard players set @s fullBlock 1
execute unless block ~ ~ ~ #hd:air unless block ~ ~ ~ #hd:not_full_block run tp @s ~ ~1 ~