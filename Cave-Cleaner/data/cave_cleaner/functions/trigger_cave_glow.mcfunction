# Looking to change the glowing radius? Replace anything with ",distance..128]" to your desired number.
# Also suggested to change the number in the tellraw command too, but it's not necessary since it's just visual.
# Same situation with changing the duration of the glowing effect, except your replacing the "10". In the example, I changed it to 5 seconds.
# Example:
# execute store result score @s cave_glow if entity @e[type=#cave_cleaner:unclean,predicate=cave_cleaner:unclean,distance=..256]
# effect give @e[type=#cave_cleaner:unclean,predicate=cave_cleaner:unclean,distance=..256] minecraft:glowing 5
# tellraw @s [{"text":"Gave ","color":"gold"},{"score":{"name":"@s","objective":"cave_glow"},"color":"gold"},{"text":" entities within 256 blocks glowing for 5 seconds","color":"gold"}]

execute store result score @s cave_glow if entity @e[type=#cave_cleaner:unclean,predicate=cave_cleaner:unclean,distance=..128]
effect give @e[type=#cave_cleaner:unclean,predicate=cave_cleaner:unclean,distance=..128] minecraft:glowing 10
tellraw @s [{"text":"Gave ","color":"gold"},{"score":{"name":"@s","objective":"cave_glow"},"color":"gold"},{"text":" entities within 128 blocks glowing for 10 seconds","color":"gold"}]

# Don't forget to save your changes, then restart the server/world for them to go into effect.