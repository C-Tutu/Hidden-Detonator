# 設置失敗

# tellrawでメッセージ
tellraw @p {"text":"▶ [Impostor Bomb] 設置に失敗しました。固形のブロックの上に設置してください、また水中内での設置はできません。","color":"red"}
# サウンド再生
playsound minecraft:block.note_block.didgeridoo master @a ~ ~ ~ 1.0 1 0.0
# その場にアイテムドロップ
loot spawn ~ ~ ~ loot hd:stealth_tnt
# HD-Itemをkill
kill @s