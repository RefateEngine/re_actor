# データを出力する
# function re_actor:play/export {name:""}

# データがなければ失敗
$execute unless data storage re_actor: data.$(name) run return run function re_actor:zzz/lib/error {message:"そのレコードは存在しません"}

$data modify storage re_actor: tmp.export set from storage re_actor: data.$(name)

function re_actor:zzz/play/export with storage re_actor: tmp

data remove storage re_actor: tmp
