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
# Escape Pod: Changelog, Limitations & Known Issues {#escape-pod-changelog-limitations-known-issues .title}

[](javascript:window.print() "Print this article"){.printArticle
aria-label="Print this Article"}

Here is a list of known issues for the Escape Pod for Vector as well as
an understanding of how the Escape Pod differs from the DDL server
currently.

------------------------------------------------------------------------

## **Current Limitations**

Current limitations are based upon the need for external servers to find
information. Currently, the Escape Pod is designed to be completely and
entirely independent of all external servers. However, we are examining
options for implementing these features from publicly available servers
(or from the Escape Pod itself, in the case of the SDK) in future
releases.

-   Weather (Can now be used if you enable the extension engine for
    weather and provide API credentials.)
-   Knowledge Graph (Hey Vector, I have a question)
-   Mobile App is not yet able to connect to Vector when he is running
    on Escape Pod (development for this is in progress).
    -   Use the \"Onboarding\" screen in the Escape Pod for Preference
        changes and setup.
-   Python SDK, which authorizes through the Vector Server, will not be
    usable while Vector is pointed at the Escape Pod.
    -   New Go SDK does not authenticate through the Vector Server and
        is usable while Vector is pointed at the Escape Pod.

------------------------------------------------------------------------

## 

## 

## Change Log

------------------------------------------------------------------------

**Escape Pod 1.8.2:\
**Released 3/18/2022

-   New Features:
    -   Added compatibility for Vector software version 1.8.1.
    -   New \"About\" screen and tooltips which will speed
        troubleshooting and provide valuable version and system info
    -   New \"Hide Vector Status\" option to declutter the UI in the
        Onboarding screen.
    -   Historical logs are now stored on the Pod for analysis later
        rather than being immediately discarded after download
    -   New ways to engage and control the terminal for those more
        comfortable with working with a terminal/command line
        environment:
        -   New command for the terminal emulator: termctl ( full \|
            half \| closed ) that determines the visibility and size of
            the Onboarding terminal. This is significantly more
            intuitive and easier to use than only the \"Alt+1\",
            \"Alt+2\", or \"Alt+3\" key combinations.
        -   New drop-down box on the Onboarding screen can also control
            the terminal size and visibility.
-   Performance Fixes:
    -   Changed from Deepspeech to Coqui STT voice model for improved
        speech-to-text accuracy
    -   Escape Pod now uses 2 ports to communicate with Vector instead
        of 4-5.
    -   The Escape Pod Interface is now able to be accessed via the
        Raspberry Pi\'s IP Address as an alternative to the need for
        special networking protocols (mDNS is not always supported by
        every router, or some routers may remap the \".local\" hostname)
    -   Eliminated a memory leak that would cause memory usage to max
        out, slowing response times.
    -   Large eliminations of technical debt and dependencies on
        databases and other software packages will allow easier
        deployment with Docker onto separate hardware from the Pi
        platform for advanced users (hardware must be
        Bluetooth-compatible)
    -   Security and performance fixes to the underlying Ubuntu
        operating system.
-   Bug fixes for the terminal
-   Under-the-hood changes to prepare for compatibility with the Vector
    Robot app (*Vector Robot app is currently undergoing development to
    enable this compatibility.*)

**Known Issues:**

-   In a very small number of cases, when adding a License for the first
    time on the Pod, the Licensing screen may freeze and the circle will
    rotate endlessly.
    -   Please reboot the Pi to fix this issue; you may do this by
        disconnecting the Power cord for 10 seconds, then inserting the
        Power cord again.

------------------------------------------------------------------------

**Escape Pod 1.0.0:\
**Released 3/8/2021\

-   In some cases, the command line interface inside of the Onboarding
    screen may show a \"Command not available while status is
    AUTHORIZED\" error.
-   In rare cases, if firmware flashing fails, the error code may not be
    displayed and the user may be kicked back to Onboarding screen
    without a failure message.

**Fixed:**

-   In some cases, log downloads may be incomplete or truncated early on
    the \"dmesg.txt\" file.

------------------------------------------------------------------------

**Escape Pod Beta Release 0.5.4:\
**

Released 3/3/2021

**Note: Beginning in this release, new Escape Pod URL is **
[http://escapepod.local](http://escapepod.local){target="_blank"}

-   In some cases, log downloads may be incomplete or truncated early on
    the \"dmesg.txt\" file.
-   Firmware installation occasionally is exited early with an error
    219.
-   Due to recent Bluetooth changes, the command line interface inside
    of the Onboarding screen is currently not implemented but will be
    implemented on release.

**Fixed:**

-   The Escape Pod now includes firmware files for you to load onto a
    robot. OSKR and \"prod\" (production, for standard robots) builds
    are included.
-   Final intents and variables are now respected.
-   The Escape Pod will now allow you to skip the Firmware Loading step
    in the Onboarding process when you have no firmware loaded onto the
    Pod.
-   The Escape Pod is now able to load firmware onto Vectors after a
    firmware recovery that are on v0.9.0.
-   Licenses now reflect all lower case letters for proper
    authentication to match the serial number.

------------------------------------------------------------------------

**Escape Pod Technical Release v0.4.5 beta:\
**Released 1-20-2021

-   In some cases, the final_intent for a behavior may not be invoked
    and the original intent will be used. (This may affect the ability
    to turn Vector\'s eyes a certain color, or use other command
    variables, in some cases)
-   Escape Pod firmware files for Vector are still under development and
    are not included in the Firmware Management tab.
-   The Escape Pod will not allow you to continue in Onboarding if you
    do not have any firmware files loaded onto the Pod.
-   The Pod is not able to load firmware onto Vectors that are running
    firmware version v0.9.0 after a Recovery.
-   The Escape Pod will not authenticate licensed Vectors that are using
    capital letters in their license information.

**Fixed:**

-   During Onboarding, users can now set their locale for wake word
    voice recognition

------------------------------------------------------------------------

**Escape Pod Technical Release v0.4.3 beta:\
**Released 1-18-2021**\
**

-   Mobile App is not yet able to connect to Vector when he is running
    on Escape Pod.
    -   Use the \"Onboarding\" screen in the Escape Pod for Preference
        changes and setup.
-   The Escape Pod cannot load firmware onto Vectors that are running
    0.9.0 (base recovery firmware)
-   In some cases, the final_intent for a behavior may not be invoked
    and the original intent will be used.
-   Escape Pod firmware files for Vector are still under development and
    are not included in the Firmware Management tab.

**Fixed:**

-   If a page is refreshed, you will now see the refreshed copy of the
    page as intended, instead of a 404 error.
-   The Licenses screen now correctly informs you if you attempt to use
    a license that is invalid or that is already in use (duplicate
    license) rather than displaying a generic error.

**New Features:**

-   Firmware / OTA Management and Automated Flashing:
    -   Updates / OTAs may now be uploaded to the Escape Pod for storage
    -   Firmware files may be flashed to the Vector robot directly from
        the Escape Pod during the Onboarding process.
-   View Behavior Log Stream: Displays a log of phrases and commands
    heard by the Escape Pod when speaking to Vector, and also lists the
    action Vector took as a result!
    -   Please Note: This log will reset when you reload or navigate
        away from the page.
-   Extension engine: New open-source extension engine accepts
    transcribed text input from speech and from robot variables and
    extensions can be written in multiple programming languages.
-   Timers are now fully supported.
-   During Onboarding, users can now set almost all configuration
    variables (except locale, for now) for the robot.

------------------------------------------------------------------------

**Escape Pod Technical Release v0.3.2 beta:\
**Released 12-29-2020

-   If a page is refreshed or you try to refresh any page except
    "Licenses", a 404 error will appear. To work around this, go back to
    [https://escapepod.local:8443/](https://escapepod.local:8443/){target="_blank"}
-   Timers are not yet implemented, but are expected to be implemented
    later in the Beta process or upon full release.
-   Mobile App is not yet able to connect to Vector when he is running
    on Escape Pod.

**Fixed:**

-   Fixed a regression from v0.3.1 that caused an issue where, if
    multiple bots were licensed, licensing would fail.

------------------------------------------------------------------------

**Escape Pod Technical Release v0.3.1 beta:\
**Released 12-28-2020

-   If a page is refreshed or you try to refresh any page except
    "Licenses", a 404 error will appear. To work around this, go back to
    <https://escapepod.local:8443/>
-   Timers are not yet implemented, but are expected to be implemented
    later in the Beta process or upon full release.
-   Mobile App is not yet able to connect to Vector when he is running
    on Escape Pod.

**Fixed:**

-   Duplicate licenses are no longer allowed.
-   When telling you the time of day, Vector should return the time in
    the correct time zone.
-   The Escape Pod now correctly logs the incoming text of the
    voice-to-speech transcription rather than the engaged intent.

------------------------------------------------------------------------

**Escape Pod Technical Release v0.3.0 beta:**\
Released 12-23-2020

-   If a page is refreshed or you try to refresh any page except
    "Licenses", a 404 error will appear. To work around this, go back to
    [https://escapepod.local:8443/](https://escapepod.local:8443/){target="_blank"}
-   The Escape Pod logged the engaged intent as the incoming text rather
    than the actual voice-to-speech transcription.
-   When telling you the time of day, Vector always provides the time in
    the Pacific Time Zone.
-   Timers are not yet implemented, but are expected to be implemented
    later in the Beta process or upon full release.
-   Duplicate licenses are allowed.
-   Mobile App is not yet able to connect to Vector when he is running
    on Escape Pod.

::: {.articleRatings article-url="https://support.digitaldreamlabs.com/article/351-known-issues"}
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
