# データの保存先を作成する
# function re_actor:record/create_record {name:""}

# 既にnameが使用されている場合失敗
$execute if data storage re_actor: data.$(name) run return run function re_actor:zzz/lib/error {message:"そのnameは既に使用されています"}

$data modify storage re_actor: data.$(name) set value {name:"$(name)",timeline:[],status:"empty"}
function re_actor:zzz/lib/success {message:"レコードを作成しました。データを録画してください"}