#> cmdcaster:exec/
# @within function cmdcaster:tick/player

# config
    function indexstorage:pull/

# 準備
$data modify storage cmdcaster: Scripts set from entity @s Inventory.[{Slot: $(Slot)b}].tag.pages
    scoreboard players set #CmdCaster.Successes Ashen.Global.Temporary 0

# ループ
    function cmdcaster:exec/loop/

# 通知
    execute if data storage indexstorage: Config.CmdCaaster{NotifyResult: 1b} run tellraw @s [{"translate": "Ashen.CmdCaster.Result", "fallback": "Executed %s command(s) from Command Caster","with": [{"score": {"name": "#CmdCaster.Successes","objective": "Ashen.Global.Temporary"}}]}]

# 再度用意
    clear @s written_book{Ashen: {CmdCaster: {Book: 1b}}} 1
    function cmdcaster:give

# リセット
    data remove storage cmdcaster: Slot
    data remove storage cmdcaster: Log
    data remove storage indexstorage: Config.CmdCaaster
    scoreboard players reset #CmdCaster.Successes Ashen.Global.Temporary
