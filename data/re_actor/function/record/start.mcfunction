# データの保存を開始する
# function re_actor:record/start {name:""}

# レコードが存在しない場合失敗
$execute unless data storage re_actor: data.$(name) run return run function re_actor:zzz/lib/error {message:"そのレコードは存在しません。先にレコードを作成してください"}

# プレイヤーが既にレコード中の場合失敗
$execute if entity @s[tag=re_actor_recording_$(name)] run return run function re_actor:zzz/lib/error {message:"あなたは既にそのレコードを録画中です"}

# 既にレコード中の場合失敗
$execute if data storage re_actor: data.$(name){status:"recording"} run return run function re_actor:zzz/lib/error {message:"そのレコードは録画中です"}

# レコード中リストにnameを追加 (多分ないが、バグ防止で一様消してから登録)
$data remove storage re_actor: recording[{name:"$(name)"}]
$data modify storage re_actor: recording append value {name:"$(name)"}

# ステータス変更
$data modify storage re_actor: data.$(name).status set value recording

# タグ付け
$tag @s add re_actor_recording_$(name)

$function re_actor:zzz/lib/success {message:"録画開始 : $(name)"}

#TODO (別のを再生中に失敗させる)