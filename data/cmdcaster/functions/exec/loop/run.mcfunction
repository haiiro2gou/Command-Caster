#> cmdcaster:exec/loop/run
# @within function cmdcaster:exec/loop/

#> private
# @private
    #declare score_holder #CmdCaster.Exec.Result

# 実行
$execute store success score #CmdCaster.Exec.Result Ashen.Global.Temporary run $(Script)

# 確認
    execute if score #CmdCaster.Exec.Result Ashen.Global.Temporary matches 1.. run scoreboard players add #CmdCaster.Successes Ashen.Global.Temporary 1

# リセット
    scoreboard players reset #CmdCaster.Exec.Result Ashen.Global.Temporary
