This file is to write down how I have changed configs in order to remeber how to do them later, especially for things not in the .config directory.


**BLuetooth Power Reporting in Gnome Settings**
Edited bluez config with command ``sudo systemctl edit bluetooth.service``
add 
``[Service]
ExecStart=
ExecStart=/usr/libexec/bluetooth/bluetoothd --experimental``
to file and restart service.
