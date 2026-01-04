::: {#mainNav .navbar}
::: navbar-inner
::: container-fluid
[![Digital Dream Labs Knowledge
Base](//d33v4339jhl8k0.cloudfront.net/docs/assets/5e3f0b1e2c7d3a7e9ae777f5/images/63222136c713d51da3ede832/logo-75h.png){width="195"
height="75"}](https://support.digitaldreamlabs.com/){.brand}

[Toggle Navigation]{.sr-only} []{.icon-bar} []{.icon-bar} []{.icon-bar}

::: {.nav-collapse .collapse}
-   [[Home ](/)]{#home}
-   [[General Information
    ](/collection/1-general-information)]{#general-information}
-   [[Vector ](/collection/6-vector)]{#vector}
-   [[Cozmo ](/collection/9-cozmo)]{#cozmo}
-   [[OverDrive ](/collection/62-overdrive)]{#overdrive}
-   [[Escape Pod ](/collection/364-escape-pod)]{#escape-pod}
-   [[Puzzlets ](/collection/325-puzzlets)]{#puzzlets}
-   [[Contact](#){.contactUs onclick="window.Beacon('open')"}]{#contact}
-   [[Contact](#){.contactUs
    onclick="window.Beacon('open')"}]{#contactMobile}
:::
:::
:::
:::

::: {#contentArea .section .container-fluid}
::: row-fluid
::: {#main-content .section .span9}
::: contentWrapper
# OSKR Users - Pi Flashing for the Escape Pod {#oskr-users---pi-flashing-for-the-escape-pod .title}

[](javascript:window.print() "Print this article"){.printArticle
aria-label="Print this Article"}

# Pi Configuration {#pi-configuration children-count="0"}

With these steps, we will set up the Pi as an Escape Pod. We will flash
an image to the Escape Pod, configure Wi-Fi, and boot the Pod.

***Before continuing, please be familiar with the current Known Issues
and Limitations. See*** [Known Issues and
Limitations](//support.digitaldreamlabs.com/article/351-known-issues)

Basic Requirements:\
-The [latest Escape Pod
image](https://assets.digitaldreamlabs.com/PEavApG5dgnZA5ei/Escape-Pod-Release-1.0.0/escape-pod-6ab70e5-R1.img.xz){target="_blank"}\
-Pi 4 is *strongly* recommended for performance reasons. Pi 3B / 3B+ can
be used as a minimum.\
-Approved Pi power source (5V/2.5A for Pi 3B / 5V/3A for Pi 4)\
-Wi-Fi network, 2.4GHz (Pi 3B / Pi 4) or 5GHz (Pi 4 only)\
      OR\
CAT5 (minimum) LAN Ethernet Cable and 1 free LAN port on router (
*Recommended*)\
-MicroSD Card, 8GB or large

*Note: The Pi you use for Escape Pod is designed to run \"headless\";
that is, with no monitor or other accessories attached- you can simply
connect the Pi to your router and access it from any other computer on
the same network by opening an internet browser and navigating
to *[http://escapepod.local](http://escapepod.local){target="_blank"}

1.  Flash the image: Download your favorite SD card flashing tool
    ([BalenaEtcher is recommended](https://www.balena.io/etcher/) for
    ease of use) and flash the [latest Escape Pod
    image](https://assets.digitaldreamlabs.com/PEavApG5dgnZA5ei/Escape-Pod-Release-1.0.0/escape-pod-6ab70e5-R1.img.xz){target="_blank"}
    to your MicroSD card.
2.  Configure Wi-Fi (Skip this step if using Ethernet/LAN)
    *before* disconnecting the MicroSD card from your computer:
    1.  Mount the \"system-boot\" partition on the SD card and find the
        "network-config" file. For a fairly standard home Wi-Fi network,
        uncomment and edit this section. Where \"\<Your SSID here\>\"
        and \"\<Your Passphrase here\>\" appear, insert your Wi-Fi
        network name (SSID) and password. Please note that the SSID only
        requires quotation marks around it if you have a space or other
        special character in the name:\
        \
        wifis:

        <div>

        wlan0\
        dchp4: true\
        optional: true\
        access-points:\
        \<Your Network Name\>:\
        password: \"\<Your Passphrase Here\>\"

        </div>
3.  Plug in power (and Ethernet, if you skipped Step 2) and boot the Pi.
    Now you can move on to [Configuring an OSKR Vector for the Escape
    Pod!](//support.digitaldreamlabs.com/article/349-escape-pod-robot-onboarding-oskr){target="_blank"}

------------------------------------------------------------------------

### SSH Access {#ssh-access children-count="0"}

If you need to access the Pi via SSH, please use the credentials below.

**Default Credentials:**\
Username: ubuntu\
Password: ubuntu\
*Note: You will be prompted to change these defaults on first login. The
connection will automatically exit when you have completed the password
change. SSH back into the Pi with your new credentials.*

------------------------------------------------------------------------

#### *Tailing Escape Pod Logs: * {#tailing-escape-pod-logs children-count="0"}

To tail Escape Pod service logs to diagnose and report issues, use the
following shell command:\
`journalctl -u escape_pod.service -f`

To see only the logs that pertain to words that are understood by the
Escape Pod (useful in understanding what speech is interpreted to be,
and which intent it engages and will be included in a Web UI in a later
release), use the following command:\
`journalctl -u escape_pod.service -f | grep incoming_text`

::: {.articleRatings article-url="https://support.digitaldreamlabs.com/article/350-oskr-users-pi-flashing-for-the-escape-pod"}
[Did this answer your question?]{.articleRatings-question} [ [
![](data:image/svg+xml;base64,PHN2ZyBoZWlnaHQ9IjIwIiB2aWV3Ym94PSIwIDAgMjAgMjAiIHdpZHRoPSIyMCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgICAgICAgICAgICAgICAgICAgICAgPHBhdGggZD0ibTggMTRhLjk5Ny45OTcgMCAwIDEgLS43MDctLjI5M2wtMi0yYS45OTkuOTk5IDAgMSAxIDEuNDE0LTEuNDE0bDEuMjkzIDEuMjkzIDQuMjkzLTQuMjkzYS45OTkuOTk5IDAgMSAxIDEuNDE0IDEuNDE0bC01IDVhLjk5Ny45OTcgMCAwIDEgLS43MDcuMjkzIiBmaWxsPSIjMkNDNjgzIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPjwvcGF0aD4KICAgICAgICAgICAgICAgICAgICA8L3N2Zz4=)
]{.articleRatings-feedback-tick} [Thanks for the
feedback]{.articleRatings-feedback-message} ]{.articleRatings-feedback}
[There was a problem submitting your feedback. Please try again
later.]{.articleRatings-failure}

::: articleRatings-actions
[Yes]{.sr-only} [
![](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik01LjUzOCAxNC4wMjZBMTkuMzkyIDE5LjM5MiAwIDAgMSAxMiAxMi45MjNjMi4yNiAwIDQuNDMyLjM4OCA2LjQ2MiAxLjEwMy0xLjA4NyAyLjYxLTMuNTcxIDQuNDM2LTYuNDYyIDQuNDM2LTIuODkxIDAtNS4zNzUtMS44MjUtNi40NjItNC40MzZ6bTEuODQ3LTMuODcyYTEuODQ2IDEuODQ2IDAgMSAxIDAtMy42OTIgMS44NDYgMS44NDYgMCAwIDEgMCAzLjY5MnptOS4yMyAwYTEuODQ2IDEuODQ2IDAgMSAxIDAtMy42OTIgMS44NDYgMS44NDYgMCAwIDEgMCAzLjY5MnoiPjwvcGF0aD4KICAgICAgICAgICAgICAgICAgICAgICAgPC9zdmc+)
]{.rating-face}

[No]{.sr-only} [
![](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik03LjM4NSAxMy44NDZhMS44NDYgMS44NDYgMCAxIDEgMC0zLjY5MiAxLjg0NiAxLjg0NiAwIDAgMSAwIDMuNjkyem05LjIzIDBhMS44NDYgMS44NDYgMCAxIDEgMC0zLjY5MiAxLjg0NiAxLjg0NiAwIDAgMSAwIDMuNjkyem0tLjk2NyA0Ljk1YS45OTIuOTkyIDAgMCAxLS42MTUtLjIxMmMtMS43MDEtMS4zNDktNC4zNjQtMS4zNDktNi4wNjUgMGEuOTk4Ljk5OCAwIDAgMS0xLjM2LS4xMjMuODk1Ljg5NSAwIDAgMSAuMTI3LTEuM0E2Ljg5NyA2Ljg5NyAwIDAgMSAxMiAxNS42OTJjMS41NTUgMCAzLjA2OS41MjEgNC4yNjYgMS40NjcuNDEuMzI2LjQ2Ny45MDkuMTI3IDEuM2EuOTgyLjk4MiAwIDAgMS0uNzQ1LjMzNXoiPjwvcGF0aD4KICAgICAgICAgICAgICAgICAgICAgICAgPC9zdmc+)
]{.rating-face}
:::
:::

::: {.section .articleFoot}

Still need help? [Contact Us](#){#sbContact .contactUs
onclick="window.Beacon('open')"} [Contact Us](#){#sbContactMobile
.contactUs onclick="window.Beacon('open')"}

Last updated on April 27, 2021
:::
:::
:::

[Toggle Search]{.sr-only}

::: {#serp-dd .sb style="display: none;"}
:::

### Categories

-   [Customer Care Information Screen
    ](/category/524-customer-care-information-screen)
-   [Frequently Asked Questions
    ](/category/15-frequently-asked-questions)
-   [Vector Membership ](/category/486-vector-membership)
-   [Setting Vector Up ](/category/491-setting-vector-up)
-   [Software Updates ](/category/483-software-updates)
-   [Interacting with Vector ](/category/74-living-with-vector)
-   [Charging & Power ](/category/489-charging-power)
-   [Vector\'s Cube ](/category/482-vectors-cube)
-   [Documents & Manuals ](/category/484-documents-manuals)
-   [Reset Vector ](/category/487-reset-vector)
-   [Open Source Kit for Robotics ](/category/343-oskr)
-   [Product Information ](/category/67-product-information)
-   [SDK Information ](/category/34-sdk-information)
-   [Connection Troubleshooting
    ](/category/481-connection-troubleshooting)
-   [Error Troubleshooting ](/category/488-error-troubleshooting)
-   [Speech Recognition Troubleshooting
    ](/category/490-speech-recognition-troubleshooting)
-   [Sound Troubleshooting ](/category/485-sound-troubleshooting)
-   [Technical Troubleshooting ](/category/16-troubleshooting)
:::

::: {#noResults style="display:none;"}
No results found
:::

© [Digital Dream Labs](https://support.digitaldreamlabs.com/) 2023.
Powered by [Help
Scout](https://www.helpscout.com/knowledge-base/?utm_source=docs&utm_medium=footerlink&utm_campaign=Docs+Branding){rel="nofollow noopener noreferrer"
target="_blank"}
:::
