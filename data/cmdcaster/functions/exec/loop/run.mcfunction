#> cmdcaster:exec/loop/run
# @within function cmdcaster:exec/loop/

#> private
# @private
    #declare score_holder $Result

# 実行
$execute store success score $Result Ashen.Global.Temporary run $(Script)

# 確認
    execute if score $Result Ashen.Global.Temporary matches 1.. run scoreboard players add $Successes Ashen.Global.Temporary 1

# リセット
    scoreboard players reset $Result Ashen.Global.Temporary
