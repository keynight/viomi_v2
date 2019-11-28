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


BusyBox v1.24.1 () built-in shell (ash)

 _____  _              __     _
|_   _||_| ___  _ _   |  |   |_| ___  _ _  _ _
  | |   _ |   ||   |  |  |__ | ||   || | ||_'_|
  | |  | || | || _ |  |_____||_||_|_||___||_,_|
  |_|  |_||_|_||_|_|  Tina is Based on OpenWrt!
 ----------------------------------------------
 Tina Linux (Neptune, 57513AA3)
 ----------------------------------------------
root@TinaLinux:/# 

root@TinaLinux:/# uname -a
Linux TinaLinux 3.4.39 #299 SMP PREEMPT Fri Nov 16 06:46:13 UTC 2018 armv7l GNU/Linux
root@TinaLinux:/# cat /proc/cpuinfo 
Processor       : ARMv7 Processor rev 5 (v7l)
processor       : 0
BogoMIPS        : 5714.28

processor       : 1
BogoMIPS        : 5714.28

processor       : 2
BogoMIPS        : 5714.28

processor       : 3
BogoMIPS        : 5714.28

Features        : swp half thumb fastmult vfp edsp thumbee neon vfpv3 tls vfpv4 idiva idivt 
CPU implementer : 0x41
CPU architecture: 7
CPU variant     : 0x0
CPU part        : 0xc07
CPU revision    : 5

Hardware        : sun8i
Revision        : 0000
Serial          : 8904aaf746a700000000
Chipid          : 00000000aaf746a7890460420461872a

root@TinaLinux:/# df -h
Filesystem                Size      Used Available Use% Mounted on
rootfs                    9.7M      1.1M      8.1M  12% /
/dev/root                20.3M     20.3M         0 100% /rom
tmpfs                   249.9M     40.0K    249.9M   0% /tmp
/dev/by-name/rootfs_data
                          9.7M      1.1M      8.1M  12% /overlay
overlayfs:/overlay        9.7M      1.1M      8.1M  12% /
tmpfs                   512.0K         0    512.0K   0% /dev
/dev/by-name/UDISK      107.2M     14.3M     87.4M  14% /mnt/UDISK
/dev/by-name/boot         4.0M      3.2M    810.0K  80% /boot
/dev/by-name/boot-res
                          8.0M     39.0K      7.9M   0% /boot-res
/dev/by-name/private      4.0M      7.0K      4.0M   0% /mnt/SNN
overlayfs:/overlay/usr
                          9.7M      1.1M      8.1M  12% /usr
root@TinaLinux:/# free 
             total       used       free     shared    buffers     cached
Mem:        511776     142544     369232          0      14328      35252
-/+ buffers/cache:      92964     418812
Swap:            0          0          0

root@TinaLinux:/# cat /etc/passwd 
root:x:0:0:root:/root:/bin/ash
daemon:*:1:1:daemon:/var:/bin/false
ftp:*:55:55:ftp:/home/ftp:/bin/false
network:*:101:101:network:/var:/bin/false
nobody:*:65534:65534:nobody:/var:/bin/false

root@TinaLinux:/# cat /etc/shadow 
root:$1$ZnE1NgOT$oWafIj8xgsknzdJmRZM9N/:17305:0:99999:7:::
daemon:*:0:0:99999:7:::
ftp:*:0:0:99999:7:::
network:*:0:0:99999:7:::
nobody:*:0:0:99999:7:::
root@TinaLinux:/# 

root@TinaLinux:~# cat /etc/openwrt_*
DISTRIB_ID='tina.zhengzf.20190407.070641'
DISTRIB_RELEASE='Neptune'
DISTRIB_REVISION='57513AA3'
DISTRIB_TARGET='astar-parrot/generic'
DISTRIB_DESCRIPTION='tina.zhengzf.20190407.070641 2.0.0'
DISTRIB_TAINTS='no-all no-ipv6 busybox'
2.0.0

root@TinaLinux:/# lsmod 
8189es               1201869  0 
iptable_mangle           861  0 
snd_mixer_oss          11252  1 snd_pcm_oss
snd_pcm_oss            29795  0 
snd_seq_device          3927  0 
xt_LOG                  5912  0 
xt_TCPMSS               1805  0 
xt_comment               512  0 
xt_limit                1058  0 
xt_mac                   648  0 
xt_mark                  705  0 
xt_multiport            1269  0 
xt_time                 1475  0 

drwxr-xr-x    7 root     root          1024 Jun  6 04:59 ..
-rw-r--r--    1 root     root           326 Nov 28 04:46 PackageInfoConfig.ini
-rw-r--r--    1 root     root            21 Jun  6 04:59 algorithm_version.ini
-rw-r--r--    1 root     root           363 Aug  6  2018 app_log_config.ini
-rw-r--r--    1 root     root            42 Aug  6  2018 area.ini
-rw-r--r--    1 root     root             1 Aug  9  2018 auxctrl_restart.ini
-rw-r--r--    1 root     root           216 Nov 25 20:00 booking_list_config.ini
-rw-r--r--    1 root     root             1 Jun  6 04:59 cliff_calibration.ini
-rw-r--r--    1 root     root           700 Jun  6 04:59 controller.ini
-rw-r--r--    1 root     root           595 Jun  6 04:59 device_config.ini
-rw-r--r--    1 root     root            22 Aug  6  2018 everest_config.ini
-rw-r--r--    1 root     root          1146 Aug  6  2018 exploration-icp-params.ini
-rw-r--r--    1 root     root          1146 Aug  6  2018 followWall-icp-params.ini
-rw-r--r--    1 root     root            22 Aug  6  2018 history_list_config.ini
-rw-r--r--    1 root     root          1262 Jun  6 04:59 hwdrivers.ini
-rw-r--r--    1 root     root          1146 Aug  6  2018 icp-params.ini
-rw-r--r--    1 root     root            47 Nov 28 06:38 lidar_version.ini
-rw-r--r--    1 root     root           404 Aug  6  2018 log_config.ini
-rw-r--r--    1 root     root            75 Nov 20 18:25 logserver.ini
-rwxr-xr-x    1 root     root           969 Jun  6 04:59 map_builder.lua
-rw-r--r--    1 root     root             0 Aug  6  2018 memory_map_specail.ini
-rw-r--r--    1 root     root          4442 Aug  6  2018 motion_params.ini
-rw-r--r--    1 root     root            61 Jun  6 04:56 net_config.ini
-rw-r--r--    1 root     root           113 Nov 28 06:01 new_user_perference.txt
-rw-r--r--    1 root     root          1885 Aug  6  2018 pf-params.ini
-rwxr-xr-x    1 root     root          2124 Jun  6 04:59 revo_lds.lua
-rwxr-xr-x    1 root     root          2746 Jun  6 04:59 sparse_pose_graph.lua
-rwxr-xr-x    1 root     root            59 Jun  6 04:59 specail_hwdrivers.ini
-rw-r--r--    1 root     root            33 Jun  6 04:59 stm32_version.ini
-rw-r--r--    1 root     root            21 Nov 28 06:01 sweep_record_config.ini
-rwxr-xr-x    1 root     root           513 Aug  9  2018 sysConfig.ini
-rw-r--r--    1 root     root             5 Nov 28 06:01 system_perfix_number
-rwxr-xr-x    1 root     root          2107 Jun  6 04:59 trajectory_builder_2d.lua
-rwxr-xr-x    1 root     root          2801 Jun  6 04:59 trajectory_builder_3d.lua
root@TinaLinux:/mnt/UDISK/config# 

root@TinaLinux:/mnt/UDISK/config# grep -r 3irobotics *
logserver.ini:log_server_addr=log.3irobotics.net
sysConfig.ini:server_cmd_address=das.3irobotics.net
sysConfig.ini:server_log_address=log.3irobotics.net
sysConfig.ini:server_ota_address=ota.3irobotics.net

root@TinaLinux:/# cat /etc/device_info
DEVICE_MANUFACTURER='allwinnertech'
DEVICE_MANUFACTURER_URL='www.allwinnertech.com'
DEVICE_PRODUCT='v1.0'
DEVICE_REVISION='v1.0'

