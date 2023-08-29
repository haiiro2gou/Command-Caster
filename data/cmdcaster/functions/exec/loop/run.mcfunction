#> cmdcaster:exec/loop/run
# @within function cmdcaster:exec/loop/

#> private
# @private
    #declare score_holder $Result

# 実行
    $execute store success score $Result Ashen.CmdCaster.Temporary run $(Script)

# 確認
    execute if score $Result Ashen.CmdCaster.Temporary matches 1.. run scoreboard players add $Successes Ashen.CmdCaster.Temporary 1

# リセット
    scoreboard players reset $Result Ashen.CmdCaster.Temporary
