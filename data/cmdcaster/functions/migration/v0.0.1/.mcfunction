#> cmdcaster:migration/v0.0.1/
# @within function cmdcaster:migration/

# マイグレーション
    data modify storage global Ashen.CmdCaster.Version set value "v0.0.1"

#> from: 36af504164e91f8b55e9d8deedfd07902318c035
# @private
    scoreboard objectives add AshenCmdCaster.FirstJoin custom:play_time {"text":"初回join"}
