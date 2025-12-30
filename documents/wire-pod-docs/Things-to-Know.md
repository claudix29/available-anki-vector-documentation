Things that are good to know.

# Running wire-pod in the background

- NOTE: Does not work in Windows under WSL

You can setup a systemd daemon for wire-pod. This allows it to run in the background and it to run automatically at startup.
```
cd ~/wire-pod
sudo ./setup.sh daemon-enable
```
To start the service, either restart your computer or run:

`sudo systemctl start wire-pod`

To see logs, run:

`journalctl -fe | grep start.sh`

If you would like to disable the daemon, run:
```
cd ~/wire-pod
sudo ./setup.sh daemon-disable
```


***


# Updating wire-pod

## Linux (Debian/Ubuntu)

**If you built from source (not installed from a .deb), follow the "Linux (non-Debian/non-Ubuntu)" steps instead.**

Download wirepod_[arch]_v#.#.#.deb for your system from the [latest release of WirePod](https://github.com/kercre123/WirePod/releases/latest) and install it with `sudo apt install ./Downloads/wirepod_[arch]_v#.#.#.deb`. wire-pod will restart to the updated version automatically.

## Linux (non-Debian/non-Ubuntu)

If you have set it up so wire-pod is running as a daemon in the background:

```
sudo systemctl stop wire-pod
cd ~/wire-pod
sudo ./update.sh
sudo ./setup.sh daemon-enable
sudo systemctl start wire-pod
```

## Windows

Download WirePodInstaller-v#.#.#.exe from the [latest release of WirePod](https://github.com/kercre123/WirePod/releases/latest) and install. It will automatically update your WirePod installation without erasing any data.

## macOS

Quit WirePod (click the rocket icon in the top bar and click "Quit"), download WirePod-v#.#.#.dmg from the [latest release of WirePod](https://github.com/kercre123/WirePod/releases/latest), mount it, drag WirePod to your Applications folder, allow an overwrite, then launch WirePod from the Applications folder in Finder. No user data will be erased.

## Android

Download WirePod-#.#.#.apk from the [latest release of WirePod](https://github.com/kercre123/WirePod/releases/latest) and install it. No user data will be erased.

***

# Delete wire-pod data

You may need to do this if you are running into issues with a wire-pod update or if a bot keeps deauthenticating.

This is also the only way to switch between an Escape Pod config and IP Address config.

## Linux (Debian/Ubuntu) (installed from .deb)

```
sudo systemctl stop wire-pod
sudo rm -rf /etc/wire-pod/wire-pod
sudo systemctl start wire-pod
wire-pod -justip
# this will give you the configuration page, without needing to see logs
```

## Linux (non-Debian/non-Ubuntu) (installed from source)

```
sudo systemctl stop wire-pod
cd ~/wire-pod
sudo rm -f chipper/apiConfig.json
sudo rm -f chipper/jdocs/*.json
sudo systemctl start wire-pod
```

## Windows

1. Go to Settings and find "Apps and Programs".
2. Find WirePod and uninstall it. The uninstaller will ask you if you want to clear all user data.
3. Reinstall WirePod per the Installation guide.

## macOS

1. Make sure WirePod isn't running.
2. In a terminal, run:

```
rm -rf ~/Library/Application\ Support/wire-pod
```
3. Start WirePod again.

## Android

1. Open Settings.
2. Head to Apps and find WirePod.
3. Find the option to clear cache and data.

***

# Environment variables

There are a few environment variables you can use to modify wire-pod behavior. Place these in ~/wire-pod/chipper/source.sh and restart wire-pod (via start.sh) for them to take effect.

`VOSK_WITH_GRAMMER` (true or false, default: false) - enables/default vosk grammer optimizations. Increases speed to the point where it can run on very low end hardware, but limits the transcribable words to only what intents can match to, meaning intent-graph functionality won't work.

`JDOCS_ENABLE_PINGER` (true or false, default: true) - enables/disables the jdocs pinger. The Jdocs pinger was created as a workaround and allows production bots to stay connected to wire-pod. This requires wire-pod to be able to connect to the robot. This is here in case you want to set wire-pod up as a public server.

`WEBSERVER_PORT` (int, default: 8080) - sets the web interface port.

**In the Debian/Ubuntu .deb prebuilt versions, there is a /etc/wire-pod/config.ini file which includes options like these.**


***


# Web interface

Chipper hosts a web interface at port 8080 (by default). This can be used to create custom intents and to configure specific bots.

To get to it, open a browser and go to `http://serverip:8080`, replacing serverip with the IP address of the machine running the chipper server. If you are running the browser on the machine running chipper, you can go to `http://localhost:8080`

- API setup
	- If you want to change anything about your weather or knowledge graph API configuration, it should be done here
- Configure bots
	- This is a page that allows you to configure any bot that has been logged in to your wire-pod instance.
	- You can configure any setting the app can and more.
	- There is a control page which allows you to assume behavior control of the robot and use your keyboard to control. You can also get a camera stream and make the robot say stuff.
- Custom intents
	- See [Custom Intents](./Custom-Intents)