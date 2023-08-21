#> cmdcaster:exec/loop/run
# @within function cmdcaster:exec/loop/

#> private
# @private
    #declare score_holder $Result

# 実行
    $execute store success score $Result AshenCmdCaster.Temporary run $(Script)

# 確認
    execute if score $Result AshenCmdCaster.Temporary matches 1.. run scoreboard players add $Successes AshenCmdCaster.Temporary 1

# リセット
    scoreboard players reset $Result AshenCmdCaster.Temporary
