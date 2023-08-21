#> cmdcaster:tick/player
# @within function cmdcaster:tick/

# trigger
    execute if entity @s[scores={AshenCmdCaster.FirstJoin=1}] run function cmdcaster:handler/first_join

# 本探し
    execute store result score @s AshenCmdCaster.Signed run clear @s written_book{AshenCmdCaster:1} 0
    execute if score @s AshenCmdCaster.Signed matches 1.. run data modify storage cmdcaster:exec Slot set from entity @s Inventory.[{id:"minecraft:written_book",tag:{AshenCmdCaster:1}}].Slot
    execute if score @s AshenCmdCaster.Signed matches 1.. run function cmdcaster:exec/ with storage cmdcaster:exec
    scoreboard players reset @s AshenCmdCaster.Signed
