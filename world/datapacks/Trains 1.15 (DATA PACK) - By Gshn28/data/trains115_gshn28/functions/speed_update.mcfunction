execute if entity @s[tag=!rptrain_loco] positioned ^ ^ ^3.5 run scoreboard players operation @s rptrain_speed = @e[type=armor_stand,tag=rptrain_linked,distance=..3] rptrain_speed
execute if entity @s[tag=!rptrain_loco] positioned ^ ^ ^3.5 if entity @e[type=armor_stand,tag=rptrain_linker,distance=..3] run scoreboard players set @s rptrain_speed -1
execute if entity @s[tag=!rptrain_loco] positioned ^ ^ ^3.5 if entity @e[type=armor_stand,tag=rptrain_linker,distance=..3] run scoreboard players operation @s rptrain_speed *= @e[type=armor_stand,tag=rptrain_linker,distance=..3] rptrain_speed
execute at @e[type=minecraft:armor_stand,tag=rptrain_angle,distance=..2] positioned ^ ^ ^10 run scoreboard players operation @e[type=armor_stand,tag=rptrain_linked,distance=..2] rptrain_speed = @s rptrain_speed
execute positioned ^ ^ ^3.5 if score @s rptrain_rotation = @e[type=minecraft:armor_stand,tag=rptrain_linked,distance=..3,limit=1] rptrain_rotation if score @s rptrain_height = @e[type=minecraft:armor_stand,tag=rptrain_linked,distance=..3,limit=1] rptrain_height at @e[type=minecraft:armor_stand,tag=rptrain_linked,distance=..3,limit=1] run tp @s ^ ^ ^3.5
execute if entity @s[tag=rptrain_loco] positioned ^ ^ ^3.5 run scoreboard players add @e[type=minecraft:armor_stand,tag=rptrain_linker,tag=!rptrain_loco,distance=..3,limit=1] rptrain_rotation 180
execute if entity @s[tag=rptrain_loco] positioned ^ ^ ^3.5 run scoreboard players remove @e[type=minecraft:armor_stand,tag=rptrain_linker,tag=!rptrain_loco,scores={rptrain_rotation=360..},distance=..3,limit=1] rptrain_rotation 360
execute if entity @s[tag=rptrain_loco] positioned ^ ^ ^3.5 if score @s rptrain_rotation = @e[type=minecraft:armor_stand,tag=rptrain_linker,tag=!rptrain_loco,distance=..3,limit=1] rptrain_rotation if score @s rptrain_height = @e[type=minecraft:armor_stand,tag=rptrain_linker,tag=!rptrain_loco,distance=..3,limit=1] rptrain_height at @e[type=minecraft:armor_stand,tag=rptrain_linker,tag=!rptrain_loco,distance=..3,limit=1] run tp @s ^ ^ ^3.5
execute if entity @s[tag=rptrain_loco] positioned ^ ^ ^3.5 run scoreboard players remove @e[type=minecraft:armor_stand,tag=rptrain_linker,tag=!rptrain_loco,distance=..3,limit=1] rptrain_rotation 180
execute if entity @s[tag=rptrain_loco] positioned ^ ^ ^3.5 run scoreboard players add @e[type=minecraft:armor_stand,tag=rptrain_linker,tag=!rptrain_loco,scores={rptrain_rotation=..-1},distance=..3,limit=1] rptrain_rotation 360
