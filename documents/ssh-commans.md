# SSH custom commands

```
start_robot
```
Starts Anki processes 

```
stop_robot
```
Stops Anki processes. This will not cut SSH connection to the linux system.

```
update-os <ota link>
```
Installs an OTA in the inactive slot. The bot will reboot into that slot.

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
mount -o rw,remount /
