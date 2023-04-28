#! /bin/sh

# Init script, loads/unloads LCDchar

case "$1" in
    start)
        
        echo "Running LCDchar driver loader script..."
        LCDchar_load
        echo "Done!"

        echo "Initalize LCD..."
        lcdinit
        echo "Done!"

        echo "Starting i2c..."
        modprobe i2c-bcm2835
        modprobe i2c-dev
        echo "Done!"

        echo "Starting VL6180X read..."
        cd /usr/bin
        ./main
        echo "Done!"

        ;;
    stop)

        echo "Running LCDchar driver unloader script..."
        LCDchar_unload
        echo "Done!"

        ;;
    *)
        echo "Usage: $0 {start|stop}"
    exit 1
esac

exit 0