If you have an issue, check here before opening an issue. This page will also contain issue standards.

## Vector authenticated with vector-wirepod-setup, but wire-pod doesn't seem to know he exists.

-   This likely means that Vector is not running escape pod firmware like he should be. He authenticated with the official servers. Follow the first section of the installation steps again, and make sure he actually gets to recovery mode. His face will show either "anki.com/v" or "ddl.io/v" if he is in recovery mode.

## Vector has working commands, and is communicating with wire-pod, but isn't showing up as a bot in "Bot Settings".

-   Follow the last section of the installation guide. You need to go back to the vector-wirepod-setup page and finish authentication. You don't only use the site once.

## "Error logging in. The bot is likely unable to communicate with your wire-pod instance."

 - This error appears on the vector-wirepod-setup page when the bot reports an error communicating with wire-pod. This is a common error and many things could be causing it.
   - ### **Please do not open an issue for this error or send me an email about it, no matter how stuck you are. This error is generally caused by a router being cheap/old/misconfigured, which is outside of wire-pod's control.**
   - If you are very stuck and have tried every step in this section, consider joining the [Discord](https://discord.gg/vector-friends-527874754342944770) and posting in the #wirepod-help channel.

1. Make sure you don't have an official escape pod running, or any other device with the hostname `escapepod`.

2. Make sure you are using the latest version of wire-pod. If you are using a prepackaged application (WirePod), download the latest version from the [releases page](https://github.com/kercre123/WirePod/releases/latest).

3. `escapepod.local` must resolve to your wire-pod instance. You can check this by opening a browser on another device on the same network and going to http://escapepod.local:8080

4. Restart your Vector and the device running wire-pod a few times. mDNS can be finnicky.

5. Try toggling some router settings. Google your router model and figure out how to get to the configuration page. Look for settings related to "UPnP", "Multicast", "Zeroconf" (Zero Config), and/or "mDNS" and make sure they are turned on. Also try finding "AP Isolation" and make sure that is turned off.

6. Wait a minute or so and try again. mDNS broadcasts every 60 seconds, you might just need to wait for that.

7. Ensure any firewalls are disabled or are allowing traffic between wire-pod and Vector.

8. If you are running wire-pod on Linux, try:

```
sudo hostnamectl set-hostname escapepod
sudo systemctl restart avahi-daemon
```

## Bluetooth is not able to be connected with unknown error

1. Use other devices
2. Use Incognito mode
3. Vector should be on pair key screen. On recovery mode, double click Victor's button. Showing ###### is okay. When start connecting, code will shown.

## Open an issue

-   If you have an issue apart from these, feel free to open an issue. Note that I do not follow Discussions.

-   If you are facing an issue, an issue MUST contain the following:

    1.   A detailed description of what you are facing. I will not accept just an "it doesn't work".
    2.   Hardware details. For instance, if you are running wire-pod on a Raspberry Pi 4, include that.
    3.   What steps have you tried, if any?
    4.   What software version is Vector on? Include the entire version string. You can see this by going to the [CCIS](https://support.digitaldreamlabs.com/article/531-vector-ccis) screen.

-   Feature requests should also be done via issues. That can be done however you want at the moment.