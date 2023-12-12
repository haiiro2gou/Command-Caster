#> cmdcaster:config/list
# @within function cmdcaster:config/

# pull
    function indexstorage:pull/

# 通知
    execute if data storage indexstorage: Config.CmdCaster{NotifyResult: 1b} run tellraw @s [{"text": "", "clickEvent": {"action": "run_command", "value": "/trigger Ashen.CmdCaster.Trigger set 1"}, "hoverEvent": {"action": "show_text", "value": [{"translate": "Ashen.CmdCaster.Config.NotifyResult.Lore", "fallback": "Notifies the number of commands executed by Command Caster"}]}, "extra": [{"text": "[✓] ", "color": "green", "bold": true}, {"translate": "Ashen.CmdCaster.Config.NotifyResult.Title", "fallback": "Notification of Execution Results"}]}]
    execute if data storage indexstorage: Config.CmdCaster{NotifyResult: 0b} run tellraw @s [{"text": "", "clickEvent": {"action": "run_command", "value": "/trigger Ashen.CmdCaster.Trigger set 1"}, "hoverEvent": {"action": "show_text", "value": [{"translate": "Ashen.CmdCaster.Config.NotifyResult.Lore", "fallback": "Notifies the number of commands executed by Command Caster"}]}, "extra": [{"text": "[✗] ", "color": "red", "bold": true}, {"translate": "Ashen.CmdCaster.Config.NotifyResult.Title", "fallback": "Notification of Execution Results"}]}]

# 保存
    execute if data storage indexstorage: Config.CmdCaster{CacheCommand: 1b} run tellraw @s [{"text": "", "clickEvent": {"action": "run_command", "value": "/trigger Ashen.CmdCaster.Trigger set 2"}, "hoverEvent": {"action": "show_text", "value": [{"translate": "Ashen.CmdCaster.Config.CacheCommand.Lore", "fallback": "Restore commands after execution by Command Caster"}]}, "extra": [{"text": "[✓] ", "color": "green", "bold": true}, {"translate": "Ashen.CmdCaster.Config.CacheCommand.Title", "fallback": "Restoring Executed Commands"}]}]
    execute if data storage indexstorage: Config.CmdCaster{CacheCommand: 0b} run tellraw @s [{"text": "", "clickEvent": {"action": "run_command", "value": "/trigger Ashen.CmdCaster.Trigger set 2"}, "hoverEvent": {"action": "show_text", "value": [{"translate": "Ashen.CmdCaster.Config.CacheCommand.Lore", "fallback": "Restore commands after execution by Command Caster"}]}, "extra": [{"text": "[✗] ", "color": "red", "bold": true}, {"translate": "Ashen.CmdCaster.Config.CacheCommand.Title", "fallback": "Restoring Executed Commands"}]}]

# リセット
    data remove storage indexstorage: Config
