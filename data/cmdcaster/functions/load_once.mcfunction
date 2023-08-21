#> cmdcaster:load_once
# @within function cmdcaster:load

#> version
    data modify storage global Ashen.CmdCaster.Version set value "v0.0.1"

    tellraw @a [{"text":"================================","color":"gold"}]
    tellraw @a [{"text":"Command Caster ","color":"green"},{"nbt":"Ashen.CmdCaster.Version","storage":"minecraft:global","color":"dark_gray"},{"text":" by はいいろ。","color":"gray"}]
    tellraw @a [{"text":""}]
    tellraw @a [{"text":"Thanks for installation!"}]
    tellraw @a [{"text":"================================","color":"gold"}]

#> reset
    scoreboard objectives remove AshenCmdCaster.FirstJoin

#> scoreboard
    #> temporary
    # @public
        scoreboard objectives add AshenCmdCaster.Temporary dummy {"text":"一時スコア"}

    #> handler
    # @within function
    #   cmdcaster:tick
    #   cmdcaster:handler/**
        scoreboard objectives add AshenCmdCaster.FirstJoin custom:play_time {"text":"初回join"}

    #> written_book
    # @within function cmdcaster:tick
        scoreboard objectives add AshenCmdCaster.Signed dummy {"text":"本の署名チェック"}

#> storage
# @public
    #declare storage cmdcaster:exec
    #declare storage global
