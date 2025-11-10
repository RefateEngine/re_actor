# データの再生を開始する
# function re_actor:record/start {name:""}

# レコードが存在しない場合失敗
$execute unless data storage re_actor: data.$(name) run return run function re_actor:zzz/lib/error {message:"そのレコードは存在しません。先にレコードを作成してください"}

# プレイヤーが既に再生中の場合失敗
$execute if entity @s[tag=re_actor_playing_$(name)] run return run function re_actor:zzz/lib/error {message:"あなたは既にそのレコードを再生中です"}

# レコード中リストにnameを追加 (多分ないが、バグ防止で一様消してから登録)
$data remove storage re_actor: playing[{name:"$(name)"}]
$data modify storage re_actor: playing append value {name:"$(name)"}

# タグ付け
$tag @s add re_actor_playing_$(name)
scoreboard players set @s re_actor 0

$function re_actor:zzz/lib/success {message:"再生開始 : $(name)"}