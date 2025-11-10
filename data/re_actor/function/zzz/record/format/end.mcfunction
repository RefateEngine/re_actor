# 0と1を比較し同じなら1を消去する

execute store success storage re_actor: tmp.formatIsDiff byte 1 run data modify storage re_actor: tmp.formatCompare set from storage re_actor: tmp.format[-2]
# 変化があれば終了
execute if data storage re_actor: tmp{formatIsDiff:true} run return 0

# 変化がなかったら消去してもう一度実行 (データが2つ以上残っている場合のみ)
data remove storage re_actor: tmp.format[-2]
execute if data storage re_actor: tmp.format[1] run function re_actor:zzz/record/format/end
