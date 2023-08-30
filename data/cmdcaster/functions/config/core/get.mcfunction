#> cmdcaster:config/core/get
# @within function cmdcaster:config/get

$data modify storage cmdcaster:player Config set from storage cmdcaster:player Players[{ID: $(Index)}].Config
