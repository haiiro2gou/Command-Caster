#> cmdcaster:migration/
# @within function cmdcaster:load

execute if data storage global Ashen.CmdCaster{Version:"v0.0.0"} run function cmdcaster:migration/v0.0.1/
execute if data storage global Ashen.CmdCaster{Version:"v0.0.1"} run function cmdcaster:migration/v0.0.2/
