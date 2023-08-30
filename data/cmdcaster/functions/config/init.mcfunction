#> cmdcaster:config/init
# @within function
#   cmdcaster:handler/first_join
#   cmdcaster:config/

# 初期化
    data modify storage cmdcaster:player Players append value {Config: {NotifyResult: 0b, CacheCommand: 0b}}
    execute store result storage cmdcaster:player Players[-1].ID int 1 run scoreboard players get @s Ashen.CmdCaster.UserID
