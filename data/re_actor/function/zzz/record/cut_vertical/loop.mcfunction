# 0と1を比較し同じなら1を消去する

data modify storage re_actor: tmp.cutVertical[0].rotation[1] set value 0f
# 変化があれば終了
data modify storage re_actor: tmp.cutVerticalFixed append from storage re_actor: tmp.cutVertical[0]

# 変化がなかったら消去してもう一度実行 (データが2つ以上残っている場合のみ)
data remove storage re_actor: tmp.cutVertical[0]
execute if data storage re_actor: tmp.cutVertical[0] run function re_actor:zzz/record/cut_vertical/loop