#! /bin/sh

for usb in `ls /sys/bus/usb/devices`; do
    sudo sh -c "echo enabled > /sys/bus/usb/devices/$usb/power/wakeup"
done