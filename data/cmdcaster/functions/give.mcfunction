#> cmdcaster:give
# @user

# 本を出す
    execute in cmdcaster:clipboard run data modify block 0 0 0 Items set value []
    execute in cmdcaster:clipboard run loot replace block 0 0 0 container.0 loot cmdcaster:book
    execute if data storage cmdcaster:player Config{CacheCommand: 1b} if data storage cmdcaster:exec Log in cmdcaster:clipboard run item modify block 0 0 0 container.0 cmdcaster:restore
    execute in cmdcaster:clipboard run loot give @s mine 0 0 0 debug_stick
