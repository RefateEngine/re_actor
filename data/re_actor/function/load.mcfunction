scoreboard objectives add re_actor dummy
execute unless data storage re_actor: {} run data modify storage re_actor: {} set value {isInstalled:true,data:{},recording:[],debug:false}

# debug = trueでエラーや成功メッセージを表示します