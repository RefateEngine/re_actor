# データの保存を終了する
# function re_actor:record/stop {name:""}

# プレイヤーがレコードしてない場合場合失敗
$execute if entity @s[tag=!re_actor_recording_$(name)] run return run function re_actor:zzz/lib/error {message:"あなたはそのレコードを録画していません"}

# 既にレコード中の場合失敗
$execute unless data storage re_actor: data.$(name){status:"recording"} run return run function re_actor:zzz/lib/error {message:"そのレコードは録画中ではありません"}

# レコード中リストからnameを消去
$data remove storage re_actor: recording[{name:"$(name)"}]

# ステータス変更
$data modify storage re_actor: data.$(name).status set value "ok"

# タグを消す
$tag @s remove re_actor_recording_$(name)

$function re_actor:zzz/lib/success {message:"録画停止 : $(name)"}