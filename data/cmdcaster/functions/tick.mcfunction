#> cmdcaster:tick
# @within tag/function minecraft:tick

# 本探し
    execute as @a store result score @s AshenCmdCaster.Signed run clear @s written_book{AshenCmdCaster:1} 0
    execute as @a if score @s AshenCmdCaster.Signed matches 1.. run data modify storage cmdcaster:exec Slot set from entity @s Inventory.[{id:"minecraft:written_book",tag:{AshenCmdCaster:1}}].Slot
    execute as @a if score @s AshenCmdCaster.Signed matches 1.. at @s rotated as @s run function cmdcaster:exec/ with storage cmdcaster:exec

# リセット
    scoreboard players reset @a AshenCmdCaster.Signed
