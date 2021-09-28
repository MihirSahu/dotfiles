#!/bin/bash

cd /home/theonlyonzz/Pictures/arch_minimalist_wallpapers/;
wallpapers=(*);
randomNum=$(shuf --input-range=1-18 -n 1);
feh --bg-fill ~/Pictures/arch_minimalist_wallpapers/${wallpapers[randomNum]};
