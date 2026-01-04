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
# OSKR Users - Returning to DDL Server {#oskr-users---returning-to-ddl-server .title}

[](javascript:window.print() "Print this article"){.printArticle
aria-label="Print this Article"}

# Returning to DDL Server (OSKR Users) {#returning-to-ddl-server-oskr-users children-count="0"}

These steps will provide you a pathway to return to the standard DDL
server and leave the Escape Pod in the event that you need to. These
steps are specialized to minimize collateral damage to other development
work in your currently loaded firmware; you can [CLICK HERE for
steps](https://oskr.ddl.io/oom/doc/unlock_checklist.html#deploy-3-deploying-the-latest-oskr-software-ota-image){target="_blank"}
on reflashing the firmware to the latest OSKR build if you have not made
any changes to your OSKR firmware.\
*Note: You will still need to run a Clear User Data reset on Vector to
reconnect to the DDL server.*

Basic Requirements:\
-SSH Access to Vector ( **Note: Vector *****must***** be on OSKR
firmware to continue.**)\
-Original server_config.json file (stored on the Vector robot in
the */anki/data/assets/cozmo_resources/config/ *directory)

1.  SSH into your Vector and mount as read-write:\
    *\$ mount -o remount rw /*
2.  Revert server_config.json to its original endpoints:\
    *\$ cd /anki/data/assets/cozmo_resources/config/\
    \$ cp server_config.json.orig server_config.json*
3.  Clear User Data:
    1.  Place Vector on his Charger.
    2.  Double tap his Back button.
    3.  Gently lift his arm assembly all the way up, then lower it back
        down.
    4.  Rotate one of his treads until "Clear User Data" is highlighted.
    5.  Gently lift his arm assembly all the way up, then lower it back
        down.
    6.  Confirm the wipe by rotating Vector\'s tread again to select
        \"Confirm\".
    7.  Gently lift his arm assembly all the way up, then lower it back
        down.
4.  Connect to Vector using
    [Vector-Web-Setup](//support.digitaldreamlabs.com/article/114-video-vector-and-connection-how-to-set-vector-up){target="_blank"}
    (You must use Google Chrome for this.)
    1.  **Note**: A Bluetooth-enabled PC is required for this. If you do
        not have a Bluetooth-enabled PC, please use the [Vector Robot
        mobile
        app](//support.digitaldreamlabs.com/article/114-video-vector-and-connection-how-to-set-vector-up){target="_blank"}.
    2.  Place Vector on his Charger.
    3.  Double tap his Back button.
    4.  Click \"Pair With Vector\", then input the 4-digit pairing PIN
        that appears on Vector\'s screen into Vector-Web-Setup.
    5.  Finish onboarding by moving through the prompts and selecting
        your preferences. If you are asked to log in, use the
        credentials that you use on the Vector Robot mobile app.

::: {.articleRatings article-url="https://support.digitaldreamlabs.com/article/352-oskr-users-returning-to-ddl-server"}
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

Last updated on March 3, 2021
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
