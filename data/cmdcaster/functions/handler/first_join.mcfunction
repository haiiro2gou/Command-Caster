#> cmdcaster:handler/first_join
# @within function cmdcaster:tick/player

#> private
# @private
    #declare score_holder $Index

# 本
    function cmdcaster:give

# User ID
    execute store result score $Index Ashen.CmdCaster.Temporary run data get storage cmdcaster:player Count 1
    scoreboard players add $Index Ashen.CmdCaster.Temporary 1
    execute store result storage cmdcaster:player Count int 1 run scoreboard players get $Index Ashen.CmdCaster.Temporary
    scoreboard players operation @s Ashen.CmdCaster.UserID = $Index Ashen.CmdCaster.Temporary
    function cmdcaster:config/init

# リセット
    scoreboard players reset $Index Ashen.CmdCaster.Temporary
