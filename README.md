# viomi_v2

# Access to MicroUSB debug port:
On bottom site under rubber.

# Install ADB Software for debuging

sudo apt install adb

# Start debug console

root@ibm:~# adb devices -l
List of devices attached
20080411               device usb:2-1.2 product: model:_ device: transport_id:1

root@ibm:~# adb devices -l
List of devices attached
20080411               device usb:1-1.2 transport_id:7

root@ibm:~# adb shell 

>>>>>show inside.txt<<<<<
