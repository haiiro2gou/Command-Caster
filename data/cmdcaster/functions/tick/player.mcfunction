#> cmdcaster:tick/player
# @within function cmdcaster:tick/

#> private
# @private
    #declare score_holder $Signed

# trigger
    execute if entity @s[scores={Ashen.CmdCaster.FirstJoin=1}] run function cmdcaster:handler/first_join

# 本探し
    execute store result score $Signed Ashen.CmdCaster.Temporary run clear @s written_book{Ashen.CmdCaster:1} 0
    execute if score $Signed Ashen.CmdCaster.Temporary matches 1.. run data modify storage cmdcaster:exec Slot set from entity @s Inventory.[{id:"minecraft:written_book",tag:{Ashen.CmdCaster:1}}].Slot
    execute if score $Signed Ashen.CmdCaster.Temporary matches 1.. run function cmdcaster:exec/ with storage cmdcaster:exec
    scoreboard players reset $Signed Ashen.CmdCaster.Temporary
