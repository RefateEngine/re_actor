# レコード中の物があれば処理を実行
execute if data storage re_actor: recording[0] run function re_actor:zzz/record/tick

# プレイ中の物があれば処理を実行
execute if data storage re_actor: playing[0] run function re_actor:zzz/play/tick