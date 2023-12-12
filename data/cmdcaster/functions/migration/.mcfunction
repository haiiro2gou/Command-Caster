#> cmdcaster:migration/
# @within function cmdcaster:load/main

execute if data storage global Ashen.CmdCaster{Version: "v0.0.0"} run function cmdcaster:migration/v0.0.1/
execute if data storage global Ashen.CmdCaster{Version: "v0.0.1"} run function cmdcaster:migration/v0.0.2/
execute if data storage global Ashen.CmdCaster{Version: "v0.0.2"} run function cmdcaster:migration/v0.0.3/
execute if data storage global Ashen.CmdCaster{Version: "v0.0.3"} run function cmdcaster:migration/v0.0.4/

execute if data storage global Ashen.CmdCaster{Version: "v0.0.4"} run function cmdcaster:migration/v0.1.0/
execute if data storage global Ashen.CmdCaster{Version: "v0.1.0"} run function cmdcaster:migration/v0.1.1/
execute if data storage global Ashen.CmdCaster{Version: "v0.1.1"} run function cmdcaster:migration/v0.1.2/
