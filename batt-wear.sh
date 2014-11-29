echo "100 - (`cat /sys/class/power_supply/BAT1/charge_full`/`cat /sys/class/power_supply/BAT1/charge_full_design` * 100)" | bc -l
echo `date` $(echo "100 - (`cat /sys/class/power_supply/BAT1/charge_full`/`cat /sys/class/power_supply/BAT1/charge_full_design` * 100)" | bc -l) >> ~/Documents/battery-wear

