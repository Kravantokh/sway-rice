s/#Battery_injection_point/SPPT/
# SPPT - sed postprocessing token
T end
s/SPPT/    - label:\nSPPT/
s/SPPT/        content:\nSPPT/
s/SPPT/          string:\nSPPT/
s/SPPT/            right-margin: 5\nSPPT/
s/SPPT/            text: "💻" \nSPPT/
s/SPPT/    - backlight:\nSPPT/
s/SPPT/        name: intel_backlight\nSPPT/
s/SPPT/        content:\nSPPT/
s/SPPT/          string:\nSPPT/
s/SPPT/            right-margin: 10\nSPPT/
s/SPPT/            text: "{percent}%"\nSPPT/
s/SPPT/            on-click:\nSPPT/
s/SPPT/              wheel-up: brightnessctl s +10%\nSPPT/
s/SPPT/              wheel-down:  brightnessctl s 10%-\nSPPT/
s/SPPT/              middle: brightnessctl s 50%\nSPPT/
s/SPPT/    - battery:\nSPPT/
s/SPPT/        name: BAT0\nSPPT/
s/SPPT/        poll-interval: 30000\nSPPT/
s/SPPT/        content:\nSPPT/
s/SPPT/          string:\nSPPT/
s/SPPT/            text: "{capacity}%  "\nSPPT/
s/SPPT/    - battery:\nSPPT/
s/SPPT/        name: BAT0\nSPPT/
s/SPPT/        poll-interval: 30000\nSPPT/
s/SPPT/        content:\nSPPT/
s/SPPT/          map:\nSPPT/
s/SPPT/            conditions:\nSPPT/
s/SPPT/              state == "discharging":\nSPPT/
s/SPPT/                string:\nSPPT/
s/SPPT/                  text: "󰁾"\nSPPT/
s/SPPT/                  right-margin: 5\nSPPT/
s/SPPT/              state == "charging":\nSPPT/
s/SPPT/                string:\nSPPT/
s/SPPT/                  text: "󰂄"\nSPPT/
s/SPPT/                  right-margin: 5\nSPPT/
s/SPPT/              state == "full":\nSPPT/
s/SPPT/                string:\nSPPT/
s/SPPT/                  text: "󰁹"\nSPPT/
s/SPPT/                  right-margin: 5\nSPPT/
s/SPPT/              state == "not charging":\nSPPT/
s/SPPT/                string:\nSPPT/
s/SPPT/                  text: "󱈑"\nSPPT/
s/SPPT/                  right-margin: 5\nSPPT/
s/SPPT/              state == "unknown":\nSPPT/
s/SPPT/                string:\nSPPT/
s/SPPT/                  text: "󰂃"\nSPPT/
s/SPPT/                  right-margin: 5\nSPPT/
s/SPPT/    - battery:\nSPPT/
s/SPPT/        name: BAT1\nSPPT/
s/SPPT/        poll-interval: 30000\nSPPT/
s/SPPT/        content:\nSPPT/
s/SPPT/          map:\nSPPT/
s/SPPT/            conditions:\nSPPT/
s/SPPT/              state == "discharging":\nSPPT/
s/SPPT/                string:\nSPPT/
s/SPPT/                  text: "󰁾"\nSPPT/
s/SPPT/                  right-margin: 5\nSPPT/
s/SPPT/              state == "charging":\nSPPT/
s/SPPT/                string:\nSPPT/
s/SPPT/                  text: "󰂄"\nSPPT/
s/SPPT/                  right-margin: 5\nSPPT/
s/SPPT/              state == "full":\nSPPT/
s/SPPT/                string:\nSPPT/
s/SPPT/                  text: "󰁹"\nSPPT/
s/SPPT/                  right-margin: 5\nSPPT/
s/SPPT/              state == "not charging":\nSPPT/
s/SPPT/                string:\nSPPT/
s/SPPT/                  text: "󱈑"\nSPPT/
s/SPPT/                  right-margin: 5\nSPPT/
s/SPPT/              state == "unknown":\nSPPT/
s/SPPT/                string:\nSPPT/
s/SPPT/                  text: "󰂃"\nSPPT/
s/SPPT/                  right-margin: 5\nSPPT/
s/SPPT/    - battery:\nSPPT/
s/SPPT/        name: BAT1\nSPPT/
s/SPPT/        poll-interval: 30000\nSPPT/
s/SPPT/        content:\nSPPT/
s/SPPT/          string:\nSPPT/
s/SPPT/            text: "{capacity}%"\nSPPT/
s/SPPT/            right-margin: 10\nSPPT/
s/SPPT//
:end
