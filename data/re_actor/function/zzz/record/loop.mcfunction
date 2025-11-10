
$data modify storage re_actor: tmp.coor.pos set from entity @n[tag=re_actor_recording_$(name)] Pos
$data modify storage re_actor: tmp.coor.rotation set from entity @n[tag=re_actor_recording_$(name)] Rotation

$data modify storage re_actor: data.$(name).timeline append from storage re_actor: tmp.coor

data remove storage re_actor: tmp.recordingList[-1]
execute if data storage re_actor: tmp.recordingList[-1] run function re_actor:zzz/record/loop with storage re_actor: tmp.recordingList[-1]