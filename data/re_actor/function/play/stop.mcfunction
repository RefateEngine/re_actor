# データの保存を終了する
# function re_actor:play/stop {name:""}

# プレイヤーが再生してない場合場合失敗
$execute if entity @s[tag=!re_actor_playing_$(name)] run return run function re_actor:zzz/lib/error {message:"あなたはそのレコードを再生していません"}

# タグを消す
$tag @s remove re_actor_playing_$(name)

# 他に再生中のエンティティがいなければレ再生中リストからnameを消去
$execute unless entity @e[tag=!re_actor_playing_$(name)] run data remove storage re_actor: playing[{name:"$(name)"}]

$function re_actor:zzz/lib/success {message:"再生停止 : $(name)"}