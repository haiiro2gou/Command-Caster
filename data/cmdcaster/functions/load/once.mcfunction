#> cmdcaster:load_once
# @within function cmdcaster:load/

#> version
    data modify storage global Ashen.CmdCaster.Version set value "v0.1.0"

    tellraw @a [{"text": "================================", "color": "gold"}]
    tellraw @a [{"translate": "Ashen.CmdCaster.Version", "fallback": "\u00A7aCommand Caster %s", "with": [{"nbt": "Ashen.CmdCaster.Version", "storage": "minecraft:global", "color": "dark_gray"}]}, {"text": " "}, {"translate": "Ashen.CmdCaster.Developer", "fallback": "by haiiro2gou", "color": "gray"}]
    tellraw @a [{"text": ""}]
    tellraw @a [{"translate": "Ashen.CmdCaster.Install", "fallback": "Thanks for Installation!"}]
    tellraw @a [{"text": "================================", "color": "gold"}]

#> reset
    scoreboard objectives remove Ashen.CmdCaster.UserID

#> scoreboard
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
        #declare storage cmdcaster:

    #> player
    # @public
        #declare storage indexstorage:
        data remove storage indexstorage: Players
        data modify storage indexstorage: Count set value 0
