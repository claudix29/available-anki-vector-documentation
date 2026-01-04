# SSH custom commands

```
start_robot
```
Starts Anki processes, alternitively `systemctl start victor.target`

```
stop_robot
```
Stops Anki processes. This will not cut SSH connection to the linux system. Alternitively `systemctl stop victor.target`

```
update-os <ota link>
```
Installs an OTA in the inactive slot. The bot will reboot into that slot.

```
/anki/bin/update-engine <ota-link> -v
```
Installs an OTA in the inactive slot. Same as abovd but worth noting because not all firmwares have update-os.

## Commands below are copy-pasted from [WireOS repo](https://github.com/os-vector/wire-os?tab=readme-ov-file)

```
ddn on/off
```
Turns on/off DevDoNothing, which makes the bot stand still until shaken.

```
reonboard
```
Puts him back into onboarding mode without fully clearing user data

```
vmesg [-c|-t] <grep args>
```
A wrapper for cat/tail /var/log/messages.

```
temper
```
Simple script which tells you CPU temps

```
voff
```
Shuts the bot off, closes your SSH session before doing so

(the shutdown command just restarts the bot, this is different)

```
mrw
```
Mounts the main system partition `/` as read and writable instead of read only, this isn't persistent between reboots.
