execute store result score target_x var run data get entity @e[limit=1,tag=target] Pos[0] 1000
execute store result score target_y var run data get entity @e[limit=1,tag=target] Pos[1] 1000
execute store result score target_z var run data get entity @e[limit=1,tag=target] Pos[2] 1000

execute store result score target_ry var run data get entity @e[limit=1,tag=target] Rotation[0] 1000
execute store result score target_rx var run data get entity @e[limit=1,tag=target] Rotation[1] 1000

execute store result score follow_x var run data get entity @e[limit=1,tag=follower] Pos[0] 4000
execute store result score follow_y var run data get entity @e[limit=1,tag=follower] Pos[1] 4000
execute store result score follow_z var run data get entity @e[limit=1,tag=follower] Pos[2] 4000

execute store result score follow_ry var run data get entity @e[limit=1,tag=follower] Rotation[0] 4000
execute store result score follow_rx var run data get entity @e[limit=1,tag=follower] Rotation[1] 4000

scoreboard players operation follow_x var += target_x var
scoreboard players operation follow_y var += target_y var
scoreboard players operation follow_z var += target_z var
scoreboard players operation follow_ry var += target_ry var
scoreboard players operation follow_rx var += target_rx var

execute store result entity @e[limit=1,tag=follower] Pos[0] double 0.0002 run scoreboard players get follow_x var
execute store result entity @e[limit=1,tag=follower] Pos[1] double 0.0002 run scoreboard players get follow_y var
execute store result entity @e[limit=1,tag=follower] Pos[2] double 0.0002 run scoreboard players get follow_z var
execute store result entity @e[limit=1,tag=follower] Rotation[0] float 0.0002 run scoreboard players get follow_ry var
execute store result entity @e[limit=1,tag=follower] Rotation[1] float 0.0002 run scoreboard players get follow_rx var

