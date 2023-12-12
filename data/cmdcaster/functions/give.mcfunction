#> cmdcaster:give
# @user

# 本を出す
    execute in ashen_lib:clipboard run data modify block 0 0 0 Items set value []
    execute in ashen_lib:clipboard run loot replace block 0 0 0 container.0 loot cmdcaster:book
    execute if data storage indexstorage: Config.CmdCaster{CacheCommand: 1b} if data storage cmdcaster: Log in ashen_lib:clipboard run item modify block 0 0 0 container.0 cmdcaster:restore
    execute in ashen_lib:clipboard run loot give @s mine 0 0 0 debug_stick
