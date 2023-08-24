#> cmdcaster:exec/loop/
# @within function
#   cmdcaster:exec/
#   cmdcaster:exec/loop/

# 起動
    data modify storage cmdcaster:exec Script set from storage cmdcaster:exec Scripts[0]
    data remove storage cmdcaster:exec Scripts[0]
    function cmdcaster:exec/loop/get_text with storage cmdcaster:exec
    function cmdcaster:exec/loop/run with storage cmdcaster:exec

# リセット
    data remove storage cmdcaster:exec Script

# ループ
    execute if data storage cmdcaster:exec Scripts[0] run function cmdcaster:exec/loop/