# 再生中のエンティティが実行
$execute as @e[tag=re_actor_playing_$(name)] at @s run function re_actor:zzz/play/as_entity {name:$(name)}

data remove storage re_actor: tmp.playingList[-1]
execute if data storage re_actor: tmp.playingList[-1] run function re_actor:zzz/play/loop