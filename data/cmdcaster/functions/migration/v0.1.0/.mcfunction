#> cmdcaster:migration/v0.1.0/
# @within function cmdcaster:migration/

# Migration
    data modify storage global Ashen.CmdCaster.Version set value "v0.1.0"

#> from: 1972087898d5981edd203acb42cd9ec9bd1d9e97
# @private
    scoreboard objectives remove Ashen.CmdCaster.FirstJoin
    data remove storage cmdcaster:player {}
    data remove storage cmdcaster:exec {}

#> from: c1f9a8eefad342d133f80a4ebbc2b9d23b214b12
# @private
    scoreboard objectives remove Ashen.CmdCaster.Temporary

#> from: 6b8e10aec39fad856394dea153f06b0753638b96
# @private
    scoreboard objectives remove Ashen.CmdCaster.UserID
