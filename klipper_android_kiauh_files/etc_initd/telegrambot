#!/bin/sh
# System startup script for Moonraker API for Klipper

### BEGIN INIT INFO
# Provides:          moonraker-telegram-bot
# Required-Start:    $local_fs $remote_fs klipper
# Required-Stop:
# Default-Start:     2 3 4 5
# Default-Stop:
# Short-Description: Moonraker daemon
# Description:       Starts the Moonraker daemon.
### END INIT INFO

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
DESC="moonraker telegram bot daemon"
NAME="telegrambot"
DEFAULTS_FILE=/etc/default/telegrambot
PIDFILE=/var/run/telegrambot.pid

. /lib/lsb/init-functions

# Read defaults file
[ -r $DEFAULTS_FILE ] && . $DEFAULTS_FILE

case "$1" in
start)  log_daemon_msg "Starting" $NAME
        start-stop-daemon --start --quiet --exec $TELEGRAM_BOT_EXEC \
                          --background --pidfile $PIDFILE --make-pidfile \
                          --chuid $TELEGRAM_BOT_USER --user $TELEGRAM_BOT_USER \
                          -- $TELEGRAM_BOT_ARGS
        log_end_msg $?
        ;;
stop)   log_daemon_msg "Stopping" $NAME
        killproc -p $PIDFILE $TELEGRAM_BOT_EXEC
        RETVAL=$?
        [ $RETVAL -eq 0 ] && [ -e "$PIDFILE" ] && rm -f $PIDFILE
        log_end_msg $RETVAL
        ;;
restart) log_daemon_msg "Restarting" $NAME
        $0 stop
        $0 start
        ;;
reload|force-reload)
        log_daemon_msg "Reloading configuration not supported" $NAME
        log_end_msg 1
        ;;
status)
        status_of_proc -p $PIDFILE $TELEGRAM_BOT_EXEC $NAME && exit 0 || exit $?
        ;;
*)      log_action_msg "Usage: /etc/init.d/moonraker-telegram-bot {start|stop|status|restart|reload|force-reload}"
        exit 2
        ;;
esac
exit 0
