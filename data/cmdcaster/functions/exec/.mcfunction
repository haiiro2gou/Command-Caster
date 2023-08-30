#> cmdcaster:exec/
# @within function cmdcaster:tick

# 準備
    $data modify storage cmdcaster:exec Scripts set from entity @s Inventory.[{Slot: $(Slot)}].tag.pages
    scoreboard players set $Successes Ashen.CmdCaster.Temporary 0

# ループ
    function cmdcaster:exec/loop/

# 通知
    tellraw @s [{"translate": "Executed %s command(s) from Command Caster","with": [{"score": {"name": "$Successes","objective": "Ashen.CmdCaster.Temporary"}}]}]

# 再度用意
    clear @s written_book{Ashen: {CmdCaster: {Book: 1b}}} 1
    function cmdcaster:give

# リセット
    data remove storage cmdcaster:exec Slot
    scoreboard players reset $Successes Ashen.CmdCaster.Temporary
