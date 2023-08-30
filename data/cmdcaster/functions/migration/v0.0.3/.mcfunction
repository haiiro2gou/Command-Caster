#> cmdcaster:migration/v0.0.3/
# @within function cmdcaster:migration/

# マイグレーション
    data modify storage global Ashen.CmdCaster.Version set value "v0.0.3"

#> from: b1341e7920f3e054146b3a7eab0d2290dd1761c0
# @private
    scoreboard objectives remove Ashen.CmdCaster.FirstJoin
    scoreboard objectives add Ashen.CmdCaster.FirstJoin custom:play_time {"translate": "Ashen.CmdCaster.ScoreFirstJoin", "fallback": "Command Caster: First Join Detection"}
    scoreboard objectives add Ashen.CmdCaster.UserID trigger {"translate": "Ashen.CmdCaster.ScoreUserID", "fallback": "Command Caster: UserID"}
    scoreboard objectives add Ashen.CmdCaster.Trigger dummy {"translate": "Ashen.CmdCaster.ScoreTrigger", "fallback": "Command Caster: Trigger"}
    data modify storage cmdcaster:player Count set value 0
    execute in cmdcaster:clipboard run forceload add 0 0
    execute in cmdcaster:clipboard run setblock 0 0 0 shulker_box{Lock: "lock"}
