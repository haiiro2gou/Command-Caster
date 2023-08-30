#> cmdcaster:config/get
# @api

execute store result storage cmdcaster:player Index int 1 run scoreboard players get @s Ashen.CmdCaster.UserID
function cmdcaster:config/core/get with storage cmdcaster:player
data remove storage cmdcaster:player Index
