#> cmdcaster:tick/player
# @within tag/function ashen_lib:tick/player

#> private
# @private
    #declare score_holder #Signed

# index
    execute store result storage indexstorage: Index int 1 run scoreboard players get @s Ashen.CmdCaster.UserID

# trigger
    execute if score @s Ashen.CmdCaster.Trigger matches -2147483648..2147483647 run function cmdcaster:config/trigger

# 本探し
    execute store result score #Signed Ashen.Global.Temporary run clear @s written_book{Ashen: {CmdCaster: {Book: 1b}}} 0
    execute if score #Signed Ashen.Global.Temporary matches 1.. run data modify storage cmdcaster: Slot set from entity @s Inventory.[{id: "minecraft:written_book", tag: {Ashen: {CmdCaster: {Book: 1b}}}}].Slot
    execute if score #Signed Ashen.Global.Temporary matches 1.. run function cmdcaster:exec/ with storage cmdcaster:
    scoreboard players reset #Signed Ashen.Global.Temporary

# reset
    data remove storage indexstorage: Index
