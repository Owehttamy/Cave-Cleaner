# Looking to change the "cleaning" radius? Replace anything with ",distance..16]" to your desired number.
# Also suggested to change the number in the tellraw command too, but it's not necessary since it's just visual.
# Example:
# execute store result score @s cave_cleaner if entity @e[type=#cave_cleaner:unclean,predicate=cave_cleaner:unclean,distance=..64]
# execute as @e[type=#cave_cleaner:unclean,predicate=cave_cleaner:unclean,distance=..64] run data merge entity @s {Health:0.0f,DeathTime:19s}
# tellraw @s [{"text":"Cleaned ","color":"gold"},{"score":{"name":"@s","objective":"cave_cleaner"},"color":"gold"},{"text":" entities within 64 blocks","color":"gold"}]

execute store result score @s cave_cleaner if entity @e[type=#cave_cleaner:unclean,predicate=cave_cleaner:unclean,distance=..16]
execute as @e[type=#cave_cleaner:unclean,predicate=cave_cleaner:unclean,distance=..16] run data merge entity @s {Health:0.0f,DeathTime:19s}
tellraw @s [{"text":"Cleaned ","color":"gold"},{"score":{"name":"@s","objective":"cave_cleaner"},"color":"gold"},{"text":" entities within 16 blocks","color":"gold"}]

# Don't forget to save your changes, then restart the server/world for them to go into effect.