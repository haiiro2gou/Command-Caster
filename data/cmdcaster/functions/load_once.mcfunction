#> cmdcaster:load_once
# @within function cmdcaster:load

#> version
    data modify storage global Ashen.CmdCaster.Version set value "v0.0.2"

    tellraw @a [{"text": "================================", "color": "gold"}]
    tellraw @a [{"text": "Command Caster ", "color": "green"}, {"nbt": "Ashen.CmdCaster.Version", "storage": "minecraft:global", "color": "dark_gray"}, {"text": " by はいいろ", "color": "gray"}]
    tellraw @a [{"text": ""}]
    tellraw @a [{"text": "Thanks for installation!"}]
    tellraw @a [{"text": "================================", "color": "gold"}]

#> reset
    scoreboard objectives remove Ashen.CmdCaster.FirstJoin

#> scoreboard
    #> temporary
    # @public
        scoreboard objectives add Ashen.CmdCaster.Temporary dummy {"text": "一時スコア"}

    #> handler
    # @within function
    #   cmdcaster:tick
    #   cmdcaster:handler/**
        scoreboard objectives add Ashen.CmdCaster.FirstJoin custom:play_time {"text": "初回join"}

#> storage
    #> command caster
    # @within function cmdcaster:**
        #declare storage cmdcaster:exec
