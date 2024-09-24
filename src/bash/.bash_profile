# Needed for XDG nonsense or else screensharing won't work
export XDG_SESSION_TYPE="wayland"
export XDG_CURRENT_DESKTOP="sway"

# GTK
#export GDK_BACKEND="wayland"
export GTK_THEME="Adwaita:dark"

# Qt
export QT_QPA_PLATFORM="wayland;xcb" # Wayland, with X as fallback
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1 # No window decoration
export QT_AUTO_SCREEN_SCALE_FACTOR=1 # No Qt autoscaling
export QT_QPA_PLATFORM_THEME="qt5ct"
export QT_STYLE_OVERRIDE=adwaita-dark

# Firefox
export MOZ_ENABLE_WAYLAND=1

# java
export _JAVA_AWT_WM_NONREPARENTING=1

# GPU things
HSA_OVERRIDE_GFX_VERSION=10.3.0
