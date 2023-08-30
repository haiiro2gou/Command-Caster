#> cmdcaster:load_once
# @within function cmdcaster:load

#> version
    data modify storage global Ashen.CmdCaster.Version set value "v0.0.3"

    tellraw @a [{"text": "================================", "color": "gold"}]
    tellraw @a [{"translate": "Ashen.CmdCaster.Version", "fallback": "\u00A7aCommand Caster %s", "with": [{"nbt": "Ashen.CmdCaster.Version", "storage": "minecraft:global", "color": "dark_gray"}]}, {"text": " "}, {"translate": "Ashen.CmdCaster.Developer", "fallback": "by haiiro2gou", "color": "gray"}]
    tellraw @a [{"text": ""}]
    tellraw @a [{"translate": "Ashen.CmdCaster.Install", "fallback": "Thanks for Installation!"}]
    tellraw @a [{"text": "================================", "color": "gold"}]

#> reset
    scoreboard objectives remove Ashen.CmdCaster.FirstJoin
    scoreboard objectives remove Ashen.CmdCaster.UserID

#> scoreboard
    #> handler
    # @within function
    #   cmdcaster:tick/player
    #   cmdcaster:handler/**
        scoreboard objectives add Ashen.CmdCaster.FirstJoin custom:play_time {"translate": "Ashen.CmdCaster.ScoreFirstJoin", "fallback": "Command Caster: First Join Detection"}

    #> temporary
    # @public
        scoreboard objectives add Ashen.CmdCaster.Temporary dummy {"translate": "Ashen.CmdCaster.ScoreTemporary", "fallback": "Command Caster: Temporary"}

    #> trigger
    # @within function
    #   cmdcaster:config/**
    #   cmdcaster:tick/player
        scoreboard objectives add Ashen.CmdCaster.Trigger trigger {"translate": "Ashen.CmdCaster.ScoreTrigger", "fallback": "Command Caster: Trigger"}

    #> UserID
    # @public
        scoreboard objectives add Ashen.CmdCaster.UserID dummy {"translate": "Ashen.CmdCaster.ScoreUserID", "fallback": "Command Caster: UserID"}

#> storage
    #> exec
    # @within function cmdcaster:**
        #declare storage cmdcaster:exec

    #> player
    # @public
        #declare storage cmdcaster:player
        data remove storage cmdcaster:player Players
        data modify storage cmdcaster:player Count set value 0

#> clipboard
# @public
    #declare dimension cmdcaster:clipboard
    execute in cmdcaster:clipboard run forceload add 0 0
    execute in cmdcaster:clipboard run setblock 0 0 0 shulker_box{Lock: "lock"}
