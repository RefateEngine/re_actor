# データの視点情報から縦方向をすべて0にする

# データがなければ失敗
$execute unless data storage re_actor: data.$(name) run return run function re_actor:zzz/lib/error {message:"そのレコードは存在しません"}

$data modify storage re_actor: tmp.cutVertical set from storage re_actor: data.$(name).timeline
data modify storage re_actor: tmp.cutVerticalFixed set value []

function re_actor:zzz/record/cut_vertical/loop

$data modify storage re_actor: data.$(name).timeline set from storage re_actor: tmp.cutVerticalFixed

data remove storage re_actor: tmp

function re_actor:zzz/lib/success {message:"データを整えました"}
