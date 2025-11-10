# データを入力する
# function re_actor:record/import {data:{}}

$data modify storage re_actor: tmp.import set value $(data)

function re_actor:zzz/record/import with storage re_actor: tmp.import

function re_actor:zzz/lib/success {message:"レコードを読み込みました"}

data remove storage re_actor: tmp