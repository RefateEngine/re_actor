# フレーム番号
$data modify storage re_actor: tmp.playingFrame set value {name:$(name),no:0}
execute store result storage re_actor: tmp.playingFrame.no int 1 run scoreboard players get @s re_actor

# timelineを取得
function re_actor:zzz/play/get_timeline with storage re_actor: tmp.playingFrame

# timelineデータを成型
data modify storage re_actor: tmp.playingArgs set value {x:0d,y:0d,z:0d,rot0:0f,rot1:0f}

data modify storage re_actor: tmp.playingArgs.x set from storage re_actor: tmp.playingTimeline.pos[0]
data modify storage re_actor: tmp.playingArgs.y set from storage re_actor: tmp.playingTimeline.pos[1]
data modify storage re_actor: tmp.playingArgs.z set from storage re_actor: tmp.playingTimeline.pos[2]
data modify storage re_actor: tmp.playingArgs.rot0 set from storage re_actor: tmp.playingTimeline.rotation[0]
data modify storage re_actor: tmp.playingArgs.rot1 set from storage re_actor: tmp.playingTimeline.rotation[1]

# エンティティに適用
function re_actor:zzz/play/apply_entity with storage re_actor: tmp.playingArgs

# フレーム+1
scoreboard players add @s re_actor 1

# 次のフレームが存在しなければ再生終了
execute store result storage re_actor: tmp.playingFrame.no int 1 run scoreboard players get @s re_actor

# timelineを取得
function re_actor:zzz/play/check_end with storage re_actor: tmp.playingFrame