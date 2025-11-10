# データの最初と最後で重複しているフレームがあれば消去して１つにする

# データがなければ失敗
$execute unless data storage re_actor: data.$(name) run return run function re_actor:zzz/lib/error {message:"そのレコードは存在しません"}

$data modify storage re_actor: tmp.format set from storage re_actor: data.$(name).timeline

# 最初
data modify storage re_actor: tmp.formatCompare set from storage re_actor: tmp.format[0]
function re_actor:zzz/record/format/front

# 最後
data modify storage re_actor: tmp.formatCompare set from storage re_actor: tmp.format[-1]
function re_actor:zzz/record/format/end

$data modify storage re_actor: data.$(name).timeline set from storage re_actor: tmp.format

data remove storage re_actor: tmp

function re_actor:zzz/lib/success {message:"データを整えました"}
