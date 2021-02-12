kill @e[tag=LoadKill]
summon area_effect_cloud 1000 203 1000 {Tags:["reset","LoadKill","Iron","random"],Duration:999999999}

summon area_effect_cloud 1000 203 1000 {Tags:["c_Blue","LoadKill","Iron","random","counter"],Duration:999999999}
summon area_effect_cloud 1000 203 1000 {Tags:["c_Green","LoadKill","Iron","random","counter"],Duration:999999999}
summon area_effect_cloud 1000 203 1000 {Tags:["c_Orange","LoadKill","Iron","random","counter"],Duration:999999999}
summon area_effect_cloud 1000 203 1000 {Tags:["c_Pink","LoadKill","Iron","random","counter"],Duration:999999999}

summon area_effect_cloud 1000 203 1000 {Tags:["Iron","random","LoadKill"],Duration:999999999}
summon area_effect_cloud 1000 203 1000 {Tags:["Iron","random","LoadKill"],Duration:999999999}
summon area_effect_cloud 1000 203 1000 {Tags:["Iron","random","LoadKill"],Duration:999999999}
summon area_effect_cloud 1000 203 1000 {Tags:["Iron","random","LoadKill"],Duration:999999999}
summon area_effect_cloud 1000 203 1000 {Tags:["Iron","random","LoadKill"],Duration:999999999}
summon area_effect_cloud 1000 203 1000 {Tags:["Iron","random","LoadKill"],Duration:999999999}
summon area_effect_cloud 1000 203 1000 {Tags:["Iron","random","LoadKill"],Duration:999999999}
summon area_effect_cloud 1000 203 1000 {Tags:["Iron","random","LoadKill"],Duration:999999999}
summon area_effect_cloud 1000 203 1000 {Tags:["Iron","random","LoadKill"],Duration:999999999}
summon area_effect_cloud 1000 203 1000 {Tags:["Iron","random","LoadKill"],Duration:999999999}
summon area_effect_cloud 1000 203 1000 {Tags:["Gold","random","LoadKill"],Duration:999999999}
summon area_effect_cloud 1000 203 1000 {Tags:["Gold","random","LoadKill"],Duration:999999999}

tag @a remove Green
tag @a remove Blue
tag @a remove Pink
tag @a remove Orange

tag @a[team=green] add Green
tag @a[team=blue] add Blue
tag @a[team=pink] add Pink
tag @a[team=orange] add Orange

function rush:scoreboard/reload