#> cmdcaster:config/trigger
# @input
#   as entity
# @within function cmdcaster:tick/player

# verify
    execute unless score @s Ashen.CmdCaster.Trigger matches 0..2 run tellraw @a "a"

# 持ち込み
    function indexstorage:pull/
    data modify storage indexstorage: Config.CmdCaster.Revert set value false

# Notify Result
    execute if score @s Ashen.CmdCaster.Trigger matches 1 if data storage indexstorage: Config.CmdCaster{NotifyResult: 0b} run data modify storage indexstorage: Config.CmdCaster.Revert set value true
    execute if score @s Ashen.CmdCaster.Trigger matches 1 if data storage indexstorage: Config.CmdCaster{NotifyResult: 0b} run data modify storage indexstorage: Config.CmdCaster.NotifyResult set value true
    execute if score @s Ashen.CmdCaster.Trigger matches 1 if data storage indexstorage: Config.CmdCaster{NotifyResult: 1b, Revert: 0b} run data modify storage indexstorage: Config.CmdCaster.NotifyResult set value false
    execute if score @s Ashen.CmdCaster.Trigger matches 1 if data storage indexstorage: Config.CmdCaster{Revert: 1b} run data modify storage indexstorage: Config.CmdCaster.Revert set value false

# Save Command
    execute if score @s Ashen.CmdCaster.Trigger matches 2 if data storage indexstorage: Config.CmdCaster{CacheCommand: 0b} run data modify storage indexstorage: Config.CmdCaster.Revert set value true
    execute if score @s Ashen.CmdCaster.Trigger matches 2 if data storage indexstorage: Config.CmdCaster{CacheCommand: 0b} run data modify storage indexstorage: Config.CmdCaster.CacheCommand set value true
    execute if score @s Ashen.CmdCaster.Trigger matches 2 if data storage indexstorage: Config.CmdCaster{CacheCommand: 1b, Revert: 0b} run data modify storage indexstorage: Config.CmdCaster.CacheCommand set value false
    execute if score @s Ashen.CmdCaster.Trigger matches 2 if data storage indexstorage: Config.CmdCaster{Revert: 1b} run data modify storage indexstorage: Config.CmdCaster.Revert set value false

# 持ち出し
    data remove storage indexstorage: Config.CmdCaster.Revert
    function indexstorage:push/

# loop
    execute unless score @s Ashen.CmdCaster.Trigger matches 0 run function cmdcaster:config/
