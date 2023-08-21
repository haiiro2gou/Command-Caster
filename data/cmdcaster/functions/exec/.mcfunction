#> cmdcaster:exec/
# @within function cmdcaster:tick

# ページ代入
    $data modify storage cmdcaster:exec Scripts set from entity @s Inventory.[{Slot:$(Slot)}].tag.pages

# ループ導入
    function cmdcaster:exec/loop/

# 削除
    clear @s written_book{AshenCmdCaster:1} 1
    function cmdcaster:give

# リセット
    data remove storage cmdcaster:exec Slot
