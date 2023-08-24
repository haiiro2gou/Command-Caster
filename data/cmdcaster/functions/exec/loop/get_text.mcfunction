#> cmdcaster:exec/loop/get_text
# @within function cmdcaster:exec/loop/

$data modify storage cmdcaster:exec Script set value $(Script)
data modify storage cmdcaster:exec Script set from storage cmdcaster:exec Script.text
