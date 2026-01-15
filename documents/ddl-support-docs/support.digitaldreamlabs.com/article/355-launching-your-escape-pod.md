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
# Launching Your Escape Pod, Step 1: Assemble Your Pi Kit {#launching-your-escape-pod-step-1-assemble-your-pi-kit .title}

[](javascript:window.print() "Print this article"){.printArticle
aria-label="Print this Article"}

## Assemble Your Pi Kit

::: {.section .callout-blue children-count="0"}
Welcome! In this four-step article series, we will set up a small PC
known as a Raspberry Pi as an Escape Pod. we will put files on the
Escape Pod, configure it, and allow our robots to join the Pod. Step 1
covers the assembly of your Pi kit and collection of necessary
materials.

***Note**: The Pi you use for Escape Pod is designed to run
\"headless\"; that is, with no monitor, keyboard, mouse, or other
accessories attached- you can simply connect the Pi to your router via
Wi-Fi or Ethernet cable and access it from any other computer on the
same network by opening an internet browser and navigating
to *[*http://escapepod.local*](http://escapepod.local/)
:::

*Before deploying your Escape Pod, please be familiar with the current
Known Issues and Limitations. See* [*Known Issues and
Limitations*](//support.digitaldreamlabs.com/article/351-known-issues){target="_blank"}

Basic Requirements:

-   [](https://assets.digitaldreamlabs.com/PEavApG5dgnZA5ei/ep-beta-0.4.6/escape-pod-beta-046.img.xz){target="_blank"}Pi
    4 (strongly recommended for performance reasons)
    -   Pi 3B / 3B+ can be used as a minimum.
-   Case compatible with Raspberry Pi (*Usually included with a Pi kit)*
-   Approved Pi power source (5V/2.5A for Pi 3B / 5V/3A for Pi 4)
-   Ethernet Cable and 1 free LAN port on router (Recommended for best
    performance)
    -   Cable: CAT5 (minimum) / CAT5e / CAT6 / CAT7
    -   (If Ethernet cable not available): Wi-Fi network, 2.4GHz (Pi 3B
        / Pi 4) or 5GHz (Pi 4 only)
-   MicroSD Card, 8GB or larger
-   MicroSD Card Reader / SD Card Adapter & Reader
-   1 Vector Robot

------------------------------------------------------------------------

### Section 1: Unbox and Assemble Your Raspberry Pi Kit {#section-1-unbox-and-assemble-your-raspberry-pi-kit children-count="0"}

[](#Section1)

Your new Raspberry Pi is here and you\'re ready to go! Carefully open
your kit and lay out your components on a clean surface. For the best
experience, make sure you have all of the following to continue:

+-----------------------------------+-----------------------------------+
| Raspberry Pi 3B+ / 4 (Pi 4 model  | ![](//d33v433                     |
| is recommended for performance    | 9jhl8k0.cloudfront.net/docs/asset |
| reasons)\                         | s/5e3f0b1e2c7d3a7e9ae777f5/images |
|                                   | /602b20d024d2d21e45ed6a68/file-dG |
|                                   | 7DS0cUl8.jpg){style="width:153px; |
|                                   | float:left;margin:0 10px 10px 0"} |
+-----------------------------------+-----------------------------------+
| Raspberry Pi Case\                | ![](//d33v4339                    |
| *Appearance and assembly          | jhl8k0.cloudfront.net/docs/assets |
| instructions may vary.*           | /5e3f0b1e2c7d3a7e9ae777f5/images/ |
|                                   | 602b3477b3ebfb109b5829ea/file-Zv6 |
|                                   | 3dhNA7C.jpg){style="width:333px"} |
+-----------------------------------+-----------------------------------+
| Raspberry Pi Power Supply\        | ![](//d33v4339                    |
|                                   | jhl8k0.cloudfront.net/docs/assets |
|                                   | /5e3f0b1e2c7d3a7e9ae777f5/images/ |
|                                   | 602b349f24d2d21e45ed6aa6/file-ZNg |
|                                   | MLINLyZ.jpg){style="width:248px"} |
+-----------------------------------+-----------------------------------+
| MicroSD Card (minimum 8GB)        | ![](//d33v4339                    |
|                                   | jhl8k0.cloudfront.net/docs/assets |
|                                   | /5e3f0b1e2c7d3a7e9ae777f5/images/ |
|                                   | 602b34cb0a2dae5b58faffca/file-0HJ |
|                                   | 3u94x1u.jpg){style="width:234px"} |
+-----------------------------------+-----------------------------------+
| USB MicroSD Card Reader/Writer    | ![](//d33v4339                    |
|                                   | jhl8k0.cloudfront.net/docs/assets |
|                                   | /5e3f0b1e2c7d3a7e9ae777f5/images/ |
|                                   | 602b34ddb3ebfb109b5829eb/file-h6y |
|                                   | RNSGx7e.jpg){style="width:267px"} |
+-----------------------------------+-----------------------------------+
| (Optional) Ethernet Cable (for    | ![](//d33v4339                    |
| best performance)                 | jhl8k0.cloudfront.net/docs/assets |
|                                   | /5e3f0b1e2c7d3a7e9ae777f5/images/ |
|                                   | 602b34430a2dae5b58faffc7/file-O25 |
|                                   | VBFs5HM.jpg){style="width:165px"} |
+-----------------------------------+-----------------------------------+
|                                   |                                   |
+-----------------------------------+-----------------------------------+

Instructions for case assembly should be included with your kit or with
any Pi case that you order. Assemble the Pi in its case according to the
instructions. Once you\'ve verified you have everything listed above,
move to [Section 2: Flash Your SD
card](//support.digitaldreamlabs.com/article/358-launching-your-escape-pod-2).

::: {.articleRatings article-url="https://support.digitaldreamlabs.com/article/355-launching-your-escape-pod"}
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

-   [Launching Your Escape Pod, Step 4: Onboarding Your Vector
    Robot](/article/360-launching-your-escape-pod-4)
-   [Launching Your Escape Pod, Step 2: Flash The SD
    Card](/article/358-launching-your-escape-pod-2)
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
