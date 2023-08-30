#> cmdcaster:config/list
# @within function cmdcaster:config/

# verify
    $execute unless data storage cmdcaster:player Players[{ID: $(Index)}] run function cmdcaster:config/init

# 持ち込み
    $data modify storage cmdcaster:player Config set from storage cmdcaster:player Players[{ID: $(Index)}].Config

# 通知
    execute if data storage cmdcaster:player Config{NotifyResult: 1b} run tellraw @s [{"text": "", "clickEvent": {"action": "run_command", "value": "/trigger Ashen.CmdCaster.Trigger set 1"}, "hoverEvent": {"action": "show_text", "value": [{"translate": "Ashen.CmdCaster.Config.NotifyResult.Lore", "fallback": "Notifies the number of commands executed by Command Caster"}]}, "extra": [{"text": "[✓] ", "color": "green", "bold": true}, {"translate": "Ashen.CmdCaster.Config.NotifyResult.Title", "fallback": "Notification of Execution Results"}]}]
    execute if data storage cmdcaster:player Config{NotifyResult: 0b} run tellraw @s [{"text": "", "clickEvent": {"action": "run_command", "value": "/trigger Ashen.CmdCaster.Trigger set 1"}, "hoverEvent": {"action": "show_text", "value": [{"translate": "Ashen.CmdCaster.Config.NotifyResult.Lore", "fallback": "Notifies the number of commands executed by Command Caster"}]}, "extra": [{"text": "[✗] ", "color": "red", "bold": true}, {"translate": "Ashen.CmdCaster.Config.NotifyResult.Title", "fallback": "Notification of Execution Results"}]}]

# 保存
    execute if data storage cmdcaster:player Config{CacheCommand: 1b} run tellraw @s [{"text": "", "clickEvent": {"action": "run_command", "value": "/trigger Ashen.CmdCaster.Trigger set 2"}, "hoverEvent": {"action": "show_text", "value": [{"translate": "Ashen.CmdCaster.Config.CacheCommand.Lore", "fallback": "Restore commands after execution by Command Caster"}]}, "extra": [{"text": "[✓] ", "color": "green", "bold": true}, {"translate": "Ashen.CmdCaster.Config.CacheCommand.Title", "fallback": "Restoring Executed Commands"}]}]
    execute if data storage cmdcaster:player Config{CacheCommand: 0b} run tellraw @s [{"text": "", "clickEvent": {"action": "run_command", "value": "/trigger Ashen.CmdCaster.Trigger set 2"}, "hoverEvent": {"action": "show_text", "value": [{"translate": "Ashen.CmdCaster.Config.CacheCommand.Lore", "fallback": "Restore commands after execution by Command Caster"}]}, "extra": [{"text": "[✗] ", "color": "red", "bold": true}, {"translate": "Ashen.CmdCaster.Config.CacheCommand.Title", "fallback": "Restoring Executed Commands"}]}]

# リセット
    data remove storage cmdcaster:player Config
