#> cmdcaster:config/set
# @api

execute store result storage cmdcaster:player Index int 1 run scoreboard players get @s Ashen.CmdCaster.UserID
function cmdcaster:config/core/set with storage cmdcaster:player
data remove storage cmdcaster:player Index
data remove storage cmdcaster:player Config
