#> cmdcaster:exec/
# @within function cmdcaster:tick/player

# config
    function cmdcaster:config/get

# 準備
    $data modify storage cmdcaster:exec Scripts set from entity @s Inventory.[{Slot: $(Slot)b}].tag.pages
    scoreboard players set $Successes Ashen.CmdCaster.Temporary 0

# ループ
    function cmdcaster:exec/loop/

# 通知
    execute if data storage cmdcaster:player Config{NotifyResult: 1b} run tellraw @s [{"translate": "Ashen.CmdCaster.Result", "fallback": "Executed %s command(s) from Command Caster","with": [{"score": {"name": "$Successes","objective": "Ashen.CmdCaster.Temporary"}}]}]

# 再度用意
    clear @s written_book{Ashen: {CmdCaster: {Book: 1b}}} 1
    function cmdcaster:give

# リセット
    data remove storage cmdcaster:exec Slot
    data remove storage cmdcaster:exec Log
    data remove storage cmdcaster:player Config
    scoreboard players reset $Successes Ashen.CmdCaster.Temporary
