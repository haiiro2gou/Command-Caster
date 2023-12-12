#> cmdcaster:handler/first_join
# @within tag/function ashen_lib:handler/first_join

# Config
    function indexstorage:pull/
    data modify storage indexstorage: Config.CmdCaster set value {NotifyResult: 0b, CacheCommand: 0b}
    function cmdcaster:give
    function indexstorage:push/
