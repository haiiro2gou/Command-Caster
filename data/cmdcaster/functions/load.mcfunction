#> cmdcaster:load
# @within tag/function minecraft:load

# リリースチェック
    data modify storage global Ashen.CmdCaster.IsProduction set value true

# 初回限定ロード
    execute if data storage global Ashen.CmdCaster{IsProduction:1b} unless data storage global Ashen.CmdCaster.Version run function cmdcaster:load_once
    execute unless data storage global Ashen.CmdCaster.IsProduction run function cmdcaster:load_once
