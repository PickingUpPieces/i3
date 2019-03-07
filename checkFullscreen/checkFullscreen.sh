while true
do

getActiveWin=$(xprop -root 32x '\t$0' _NET_ACTIVE_WINDOW | cut -f 2)

isActivWinFullscreen=$(xprop -id $getActiveWin | grep _NET_WM_STATE_FULLSCREEN)

if [ -n "$isActivWinFullscreen" ];
	then
		xautolock -disable
		
		sleep 180

		xautolock -enable
		# xautolock -detectsleep -time 1 -locker "~/.config/scripts/lockblur/lock.sh" -notify 30 -notifier "notify-send -u critical -t 10000 -- 'LOCKING screen in 30 seconds'"
	else
		sleep 180
fi

#	activ_win_id=`xprop -root _NET_ACTIVE_WINDOW`
#	xprop -id ${activ_win_id:40:9} | grep _NET_WM_STATE_FULLSCREEN && xautolock -enable;xautolock -disable
done
