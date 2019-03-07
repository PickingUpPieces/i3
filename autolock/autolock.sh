#!/bin/sh
path="../lock_with_blurred/lock.sh"	# Path to bash which should be executed
exec xautolock -detectsleep -time 7 -locker $path -notify 30 -notifier "notify-send -u critical -t 10000 -- 'LOCKING screen in 30 seconds'"

#exec xautolock -detectsleep -time 1 -locker "~/.config/scripts/lockblur/lock.sh && systemctl suspend"
