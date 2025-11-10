# レコードリストからループ処理でデータを登録していく
data modify storage re_actor: tmp.recordingList set from storage re_actor: recording

function re_actor:zzz/record/loop with storage re_actor: tmp.recordingList[-1]

data remove storage re_actor: tmp