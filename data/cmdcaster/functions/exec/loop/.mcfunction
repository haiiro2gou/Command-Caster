#> cmdcaster:exec/loop/
# @within function
#   cmdcaster:exec/
#   cmdcaster:exec/loop/

# テキスト取得
    data modify storage cmdcaster: Script set from storage cmdcaster: Scripts[0]
    data remove storage cmdcaster: Scripts[0]
    function cmdcaster:exec/loop/get_text with storage cmdcaster:

# ログ残し
    data modify storage cmdcaster: Log append from storage cmdcaster: Script

# 起動
    function cmdcaster:exec/loop/run with storage cmdcaster:

# リセット
    data remove storage cmdcaster: Script

# ループ
    execute if data storage cmdcaster: Scripts[0] run function cmdcaster:exec/loop/
