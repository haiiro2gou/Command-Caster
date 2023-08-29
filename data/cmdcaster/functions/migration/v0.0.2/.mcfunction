#> cmdcaster:migration/v0.0.2/
# @within function cmdcaster:migration/

# マイグレーション
    data modify storage global Ashen.CmdCaster.Version set value "v0.0.2"

#> from: 4225930f3a77624304b2a24b03cd5a37a5745779
# @private
    scoreboard objectives remove Ashen.CmdCaster.FirstJoin
    scoreboard objectives remove Ashen.CmdCaster.Signed
    scoreboard objectives remove Ashen.CmdCaster.Temporary
    scoreboard objectives add Ashen.CmdCaster.FirstJoin custom:play_time {"text":"初回join"}
    scoreboard objectives add Ashen.CmdCaster.Temporary dummy {"text":"一時スコア"}
    clear @a written_book{AshenCmdCaster:1}
