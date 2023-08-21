#> cmdcaster:load
# @within tag/function minecraft:load

# リリースチェック
    data modify storage global Ashen.CmdCaster.IsProduction set value false

# 初回限定ロード
    execute if data storage global Ashen.CmdCaster{IsProduction:1b} unless data storage global Ashen.CmdCaster.Version run function cmdcaster:load_once
    execute if data storage global Ashen.CmdCaster{IsProduction:0b} run function cmdcaster:load_once

# マイグレーション
    function cmdcaster:migration/
