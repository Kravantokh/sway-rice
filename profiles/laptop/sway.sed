s/#LaptopInjectionPoint:Start/SPPT/
T end_start
s/SPPT/set \$laptop eDP-1\nSPPT/
s/SPPT/bindswitch --reload --locked lid:on output $laptop disable; exec killall yambar; exec sleep 1; exec yambar\nSPPT/
s/SPPT/bindswitch --reload --locked lid:off output $laptop enable; exec killall yambar; exec sleep 1; exec yambar\nSPPT/
s/SPPT/input "2:10:TPPS\/2_IBM_TrackPoint" {\nSPPT/
s/SPPT/	accel_profile "flat"\nSPPT/
s/SPPT/	pointer_accel 0.4\nSPPT/
s/SPPT/	scroll_factor 0.4\nSPPT/
s/SPPT/}\nSPPT/
s/SPPT//
:end_start


