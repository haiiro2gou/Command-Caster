#> cmdcaster:config/trigger
# @input
#   as entity
# @within function cmdcaster:tick/player

# verify
    execute unless score @s Ashen.CmdCaster.Trigger matches 0..2 run tellraw @a "a"

# 持ち込み
    function cmdcaster:config/get
    data modify storage cmdcaster:player Config.Revert set value false

# Notify Result
    execute if score @s Ashen.CmdCaster.Trigger matches 1 if data storage cmdcaster:player Config{NotifyResult: 0b} run data modify storage cmdcaster:player Config.Revert set value true
    execute if score @s Ashen.CmdCaster.Trigger matches 1 if data storage cmdcaster:player Config{NotifyResult: 0b} run data modify storage cmdcaster:player Config.NotifyResult set value true
    execute if score @s Ashen.CmdCaster.Trigger matches 1 if data storage cmdcaster:player Config{NotifyResult: 1b, Revert: 0b} run data modify storage cmdcaster:player Config.NotifyResult set value false
    execute if score @s Ashen.CmdCaster.Trigger matches 1 if data storage cmdcaster:player Config{Revert: 1b} run data modify storage cmdcaster:player Config.Revert set value false

# Save Command
    execute if score @s Ashen.CmdCaster.Trigger matches 2 if data storage cmdcaster:player Config{CacheCommand: 0b} run data modify storage cmdcaster:player Config.Revert set value true
    execute if score @s Ashen.CmdCaster.Trigger matches 2 if data storage cmdcaster:player Config{CacheCommand: 0b} run data modify storage cmdcaster:player Config.CacheCommand set value true
    execute if score @s Ashen.CmdCaster.Trigger matches 2 if data storage cmdcaster:player Config{CacheCommand: 1b, Revert: 0b} run data modify storage cmdcaster:player Config.CacheCommand set value false
    execute if score @s Ashen.CmdCaster.Trigger matches 2 if data storage cmdcaster:player Config{Revert: 1b} run data modify storage cmdcaster:player Config.Revert set value false

# 持ち出し
    data remove storage cmdcaster:player Config.Revert
    function cmdcaster:config/set

# loop
    execute unless score @s Ashen.CmdCaster.Trigger matches 0 run function cmdcaster:config/
