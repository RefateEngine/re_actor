# データを出力する
# function re_actor:record/delete {name:""}

# データがなければ失敗
$execute unless data storage re_actor: data.$(name) run return run function re_actor:zzz/lib/error {message:"そのレコードは存在しません"}

$data remove storage re_actor: data.$(name)

function re_actor:zzz/lib/success {message:"データを消去しました"}