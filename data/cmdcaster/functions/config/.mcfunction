#> cmdcaster:config/
# @user

# Prefix
    tellraw @s [{"text": "================================", "color": "gold"}]
    tellraw @s [{"translate": "Ashen.CmdCaster.Version", "fallback": "\u00A7aCommand Caster %s", "with": [{"nbt": "Ashen.CmdCaster.Version", "storage": "minecraft:global", "color": "dark_gray"}]}, {"text": " "}, {"translate": "Ashen.CmdCaster.Config.Title", "fallback": "Config"}]
    tellraw @s [{"text": ""}]

# List
    function cmdcaster:config/list

# Suffix
    tellraw @s [{"text": ""}]
    tellraw @s [{"translate": "Ashen.CmdCaster.Config.Close", "fallback": "[Exit]", "color": "gray", "clickEvent": {"action": "run_command", "value": "/trigger Ashen.CmdCaster.Trigger set 0"}}]
    tellraw @s [{"text": "================================", "color": "gold"}]

# Trigger
    scoreboard players reset @s Ashen.CmdCaster.Trigger
    scoreboard players enable @s Ashen.CmdCaster.Trigger

# Reset
