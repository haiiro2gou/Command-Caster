#> cmdcaster:config/core/set
# @within function cmdcaster:config/set

$data modify storage cmdcaster:player Players[{ID: $(Index)}].Config set from storage cmdcaster:player Config
