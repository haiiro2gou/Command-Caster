#> cmdcaster:exec/loop/
# @within function
#   cmdcaster:exec/
#   cmdcaster:exec/loop/

# 起動
    data modify storage cmdcaster:exec Script set string storage cmdcaster:exec Scripts[0]
    tellraw @a {"nbt":"{}","storage":"cmdcaster:exec"}
    data remove storage cmdcaster:exec Scripts[0]
    function cmdcaster:exec/loop/run with storage cmdcaster:exec

# リセット
    data remove storage cmdcaster:exec Script

# ループ
    execute if data storage cmdcaster:exec Scripts[0] run function cmdcaster:exec/loop/