#/!bin/bash
    # Detect if secondary monitor is connected, if so, add a specific bar and move tray to it
    # Else, keep tray on main monitor
    # see https://github.com/polybar/polybar/issues/763

    killall -q polybar

    # Wait until the processes have been shut down
    while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

	polybar --reload bar-right &
	polybar --reload bar-left &		
	

   echo "bars launched"