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
::: {.contentWrapper .withRelated}
# Launching Your Escape Pod, Step 2: Flash The SD Card {#launching-your-escape-pod-step-2-flash-the-sd-card .title}

[](javascript:window.print() "Print this article"){.printArticle
aria-label="Print this Article"}

## Flash the SD Card {#flash-the-sd-card children-count="0"}

::: {.section .callout-blue children-count="0"}
Let\'s prepare the SD card that acts as the hard drive, or data storage
space, for your Raspberry Pi. We will flash the Escape Pod image, which
contains the operating system and necessary files, to the SD card.
:::

::: {.section .callout-green children-count="0"}
### Download the latest Escape Pod image!

Be sure to [grab the latest Escape Pod
image](https://assets.digitaldreamlabs.com/PEavApG5dgnZA5ei/Escape-Pod-Release-1.8.2/ubuntu-20.04.4-escape-pod-1.8.2.img).\
( ***The current revision at the link above is 1.8.2.***)
:::

**Detailed Steps:**

1.  Insert the SD card into your SD card reader, then insert the SD card
    reader into your computer\'s USB port.
2.  Download the latest Escape Pod image from above.
3.  Download, install, and run your favorite SD card flashing tool
    ([BalenaEtcher is recommended](https://www.balena.io/etcher/) for
    ease of use)
    1.  If using BalenaEtcher: Click \"Flash From File\" on the left
        hand side of the BalenaEtcher window.
    2.  Navigate to the folder where you stored the Escape Pod image (by
        default, on most computers, this will be your \"Downloads\"
        folder).
    3.  Click on the Escape Pod image that you downloaded to select it,
        then click \"Open\" at the bottom right of the dialog box.
    4.  In the BalenaEtcher window, click \"Select Target\".
    5.  Click in the check box on the left hand side to select your SD
        card.
        1.  Tip: Look for \"USB Mass Storage Device\" or similar name,
            with a size that is close to your SD card\'s known size (if
            you are using a 32GB card, you may see something like
            \"31.9GB\")
        2.  WARNING: Selecting the incorrect drive or target in this
            screen can cause damage or loss of data. If you have any
            questions regarding which target drive to select, do not
            continue. Contact Digital Dream Labs by emailing us at
            support@digitaldreamlabs.com for assistance.
4.  Configure Wi-Fi (Skip this step if using an Ethernet/LAN
    cable) before disconnecting the MicroSD card from your computer:
    1.  Open a File Explorer and double-click the \"system-boot\" drive.
        1.  If you cannot locate the \"system-boot\" drive, please
            disconnect the SD card and reader from your computer and
            reconnect it.

    2.  Find the "network-config" file. Open the file with a standard
        text editor.

    3.  For a fairly standard home Wi-Fi network, uncomment and edit
        this section. Where \"\<Your Network Name\>\" and \"\<Your
        Passphrase here\>\" appear, insert your Wi-Fi network name
        (SSID) and password between the quotation marks on each line:\
        \

        <div>

        wifis:\
          wlan0:\
            dhcp4: true\
            optional: true\
            access-points:\
              \"\<Your Network Name\>\":\
                password: \"\<Your Passphrase Here\>\"

        </div>

    4.  <div>

        Save the file menu by clicking \"File\" at the top left, then
        clicking \"Save\".

        </div>

    5.  Close the text editor, then disconnect the SD card reader from
        your computer and move to [Section 3: Connecting Your Escape
        Pod](//support.digitaldreamlabs.com/article/359-launching-your-escape-pod-3).

::: {.articleRatings article-url="https://support.digitaldreamlabs.com/article/358-launching-your-escape-pod-2"}
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

Last updated on March 19, 2022
:::
:::

::: {.section .related}
### Related Articles

-   [Launching Your Escape Pod, Step 1: Assemble Your Pi
    Kit](/article/355-launching-your-escape-pod)
-   [Launching Your Escape Pod, Step 4: Onboarding Your Vector
    Robot](/article/360-launching-your-escape-pod-4)
-   [Launching Your Escape Pod, Step 3: Connecting The Escape
    Pod](/article/359-launching-your-escape-pod-3)
:::
:::

[Toggle Search]{.sr-only}

::: {#serp-dd .sb style="display: none;"}
:::

### Categories

-   [General Information ](/category/369-general-information)
-   [Launching Your Escape Pod
    ](/category/367-launching-your-escape-pod)
-   [Troubleshooting ](/category/375-troubleshooting)
-   [Advanced Configuration ](/category/368-developer-tools)
:::

::: {#noResults style="display:none;"}
No results found
:::

© [Digital Dream Labs](https://support.digitaldreamlabs.com/) 2023.
Powered by [Help
Scout](https://www.helpscout.com/knowledge-base/?utm_source=docs&utm_medium=footerlink&utm_campaign=Docs+Branding){rel="nofollow noopener noreferrer"
target="_blank"}
:::
