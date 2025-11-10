# レコードリストからループ処理でデータを登録していく
data modify storage re_actor: tmp.playingList set from storage re_actor: playing

function re_actor:zzz/play/loop with storage re_actor: tmp.playingList[-1]

data remove storage re_actor: tmp